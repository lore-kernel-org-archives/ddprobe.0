Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489883BD642
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786362034; cv=none; b=iaIDIrWk4pwkhfcZ/88mgnsYPumC0QLhxIyPF+zvVXmrUWl9J5HSEMpTd5N9aehRXQN/OKY+gvKxwZ8FcPNvNrt4Jjb4rQflupcVNv0Fvt4p8OKj2cewzWB4bMx9sj6jTg4ipN0dZ15awjtv1ogyTRp1CvGlbuEqhzRhdhkLbjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786362034; c=relaxed/simple;
	bh=8flcKXXbWCWhiHrmFeemwfZ9+S2ddlOH6YC6UK4/cSw=;
	h=To:Subject:From:Message-Id:Date; b=OXZKHFNUbfQoSztBMJcDX9ez2p5wSyuiv9fDKN3oi+Wk9iLCq/xHwgr7mt6ZdK1p+H+CwUik/aMukqNogv5K2TR63evJ65jzDUs2ivyvGViXtvrP4kuCNWh1TtJSD29OMB3ftLo2Jo09Y5AIuKmMpc/FZiWdQAn33ZvzmzeabVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckKQdWvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckKQdWvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25BBC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786362033;
	bh=8flcKXXbWCWhiHrmFeemwfZ9+S2ddlOH6YC6UK4/cSw=;
	h=To:Subject:From:Date:From;
	b=ckKQdWvRjIxbDMAWFqsfI6rtyqNq0bs+kNgQ+EiFrDiaRJJaekWWsdsUTNTtuq8IZ
	 1z8fVkpakimjponOVBg+y+nYYvmlt3SwiSBn7UVQyniAgVfFjGbTiniACVqKjp3D+5
	 RjzyZnpXCY2lcOpOVID+UMO8GS5rb9Nv7JOGz2pxCIDpoGrRiqMgvPw7Nik9G57Brl
	 y/OUEcIaNpBYK9/odtN0YtUp7ahyAhzoYjYgm+Yy149mkn0MKu/NEQqzr02/jnm4dJ
	 Z5p2xdJP5FPDRhGWitbNND0LcvE3s7tjWMcHCyNf5jWBT/d8sH618ENZX1pExFXE4y
	 UViR+Vcjpv/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD648C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636203370.12889.12801363638420469430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea94a886fb68eed35ca28368945742f268736a1a4d37a212c88c55e15e894a7
Date: Mon, 10 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786362033
