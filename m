Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662A534AB14
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789422034; cv=none; b=awOj3+5zxssbkuXmNDzvSpF2Bm7ApDGWQwypFzon3ttCcqDn3dH/BK3q6aKxsmZ3bngae4n7fHxTDHXNlUEoljo4SYw7c8WilmFcITEPZbBghVoZABnbR03AsP9bv66NqXr0M/bpEYjMsmFxC4w1N4waPN+SoKTSgNMkxak5EL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789422034; c=relaxed/simple;
	bh=+FdcnZPJkncJmbrCtoRAoSf51ArL6ZcaVTagIlgdxUQ=;
	h=To:Subject:From:Message-Id:Date; b=sX6GFWKrn7d+UwXFwsJcAJJUABfRGUTq8FoWM9h3qCRraD1IBRkBegrO67cpx4zQzoXG/8d4+evsxmzpr0e+xDCoexH0ZAtdfDX3TK72jhFej3JigFyGX7rccVfVTGM3jpbh6kBXIvfA9MngtdHwEV1wqyNEY+3Sq8+uMTL3/ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aycJ8Jyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aycJ8Jyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF390C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789422033;
	bh=+FdcnZPJkncJmbrCtoRAoSf51ArL6ZcaVTagIlgdxUQ=;
	h=To:Subject:From:Date:From;
	b=aycJ8JylWWDQPlB9l+3ge2pm4RcqHnYcF9VfOp/1VOatSwyb52OmUo9CRaGrBN0t8
	 VqzDiVBjKlN0qHnnrAOESmk/OjlKVOg2ouq7oFyKLUc55FrywjoM9HWlrM0aEgBbPw
	 jaTpJSdILmLyY6geIfW2x2BsTDdtRWmxtU4wAgk7M73y+hOT00/Lt276iyNxeR86Rp
	 GMtFoLyatJWJHnhdUhNDtWhvWl5S6vBJrvZKpa1cQ09cEmY3LNwUQRWBXKJRaYeixe
	 SpfyuIDrvVnbTqbZ7XKMqoAkoUEiG+16yqCptE8SME1R6IpV6E7+NoXm0rru0HrtAH
	 PfVHrGsIcvKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F57C88E73
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942203371.19817.16763423477479416792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e5b08445722193461d006b404e5e349a44a2dce2b8b2db66818bdccae01d72
Date: Mon, 14 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789422033
