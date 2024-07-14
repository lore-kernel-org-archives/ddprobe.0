Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D29134C6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720941023; cv=none; b=PnxeOp+4xjXA836pze/4Jt16EdrftsiulC081Gu657FWBqoKi/b/4PM69I4JIV8rGJPQAcGhNpldaBMK1ctVOYIRr0oi6IFxdyJjBQzbNqwxAQjJlqh/3KAcy/R6HTd5odF1vLpxoc0WGzATr9FkxJ1krMEk9tVDPPtBdHneyXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720941023; c=relaxed/simple;
	bh=vJ9LfnloFvX78/wYiWNYeDoH/f4qm8+6VcQWxDP9KOo=;
	h=To:Subject:From:Message-Id:Date; b=l2Ammsfrhsq2WD7Rb94KTjutj1Zw10/wB984p4CJT9ZzSIB5WK94UIr+9K+BLmLLetItxDeloisbese+ZbdgetCkB2ctsAiJ7M4vVwDEYwSZchub9fiXLNKnEeWZYVqVhcK/sVMjL1B8fvx1JkzUxNjWyAVTZpnpewJoxRnqFdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q91oZWH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q91oZWH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5331C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720941022;
	bh=vJ9LfnloFvX78/wYiWNYeDoH/f4qm8+6VcQWxDP9KOo=;
	h=To:Subject:From:Date:From;
	b=q91oZWH8mPfAjjgdeyGScaCHIVqLn1za69lxXuVaZeV2txNXEUfEbv1yzor1kT8cv
	 Wa5H2sVTADZSlqixcac4C6OoWHOKa2k1TvBiOxaz1fTGQlW+S/9CiyIwY/Dt1Asu5i
	 OeGG2jaamY56tq97A6id065N2F62D6tgj/fPd45+8zGofxzcx2cvgvCD1vEvFF+zu/
	 tp9OWN3fcxwt/Txq+Q+9bKYp/Uxer3PuhfX/VtBYJjIpkQoUpT58llu4dE9cvT4Ojw
	 x6KVuOuZAxVrTz/0GaVnHQhoeUFw2/SN7SfZho+Tc8lu5LemDOkML5nxdNW2Spwpwf
	 defhwUx7Vso4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17B4C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094102278.12517.14423717050222286007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d24e648e3d0ab734c051ef789df831794d4f170c03c67fe46d51b1d6f8705fb
Date: Sun, 14 Jul 2024 07:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720941022
