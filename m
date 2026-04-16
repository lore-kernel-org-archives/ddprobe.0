Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D83ACF15
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776350254; cv=none; b=geQFK7UTb4WDzOdLZ7P3Nsamo0f7Xmsfzd+JB3Z6EOyoPTmWiekBfXwe4/9OIx0EyNiH7DB3MatiYF/kf2uBwFZxWnqCgZMiO6wOxE8Tm65VtISHRDZzxpVU8zW8igDXapRPT0ddRRx/FooVidE7SyE8AEdfL3PnsNdGNTHW52o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776350254; c=relaxed/simple;
	bh=Bk9+0+S2GCKHY+nu2GJLgm624oMEzsPd3+kbGeFtpjQ=;
	h=To:Subject:From:Message-Id:Date; b=BrG4629hi705F62OADnK1C+hqJ/jRVN1o4GQwruc/5t5YAVNz6SRx/jZDI9hJjGOyui0sUf/8XhsPvtFHiXcVykWTUN3T1vRc9okZhO1wLLxpSZz03rgfFRyrPjdroiZHyohXXeu2xpNIq9iBcvd//xp25ow0nwpabgAXlGc+xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUM7OZdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUM7OZdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B939FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776350253;
	bh=Bk9+0+S2GCKHY+nu2GJLgm624oMEzsPd3+kbGeFtpjQ=;
	h=To:Subject:From:Date:From;
	b=pUM7OZdPb1z60q63BAGiZSpnY1icBn5FNUdPq/FHLtwLu3LgGL5vfdcXaMDSdvASt
	 Ld6P9k3qN+Qe4euK1akFU+IcvxjBWgTzjNj4223h7x2o9qsyGuPXnssEcaCG1U+3WR
	 wCEP1qf+WcxUwxrTWkQqxJj07MrzB144n/56Mjy9IywnnzQiHPuP/Y/BL9m54uxxtN
	 9/apWQvb76EOQIqoykPYwK+40sWAWNm2ssrsaof91J+ZG2aizcUwdMfGPGO8aAa7Nj
	 eMQK4DcWWcG3pdH0lOm867yFkxNmnc8rPvvEop2FG8aI8N0RSyfFxP6es3orKMY/GN
	 f3iQ8CpRgFTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA744F8D753
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635025368.7579.3755882412415363458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ed4db11c97e0128ada6bbaa91592c4189ad0690b95b2d1f647ac141dc0e202
Date: Thu, 16 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776350253
