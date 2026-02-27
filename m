Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E6E3EFD35
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772198093; cv=none; b=J+pE7TleVyW/e1cYf/ZmVP38YoAArKghTh3j4aEObojZCoy0XNT+MY6hLnOpCGYhPUHUxoSsnH0jYfjrm8A1ZEhAK+lLjwwL+gy9/Lbgr8VgmHr7Sfxm5hTU4XWdD3UMUw/aKueWbNE/xdWov4u5BBLRQiAlA2aqF0zVxUw1ii0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772198093; c=relaxed/simple;
	bh=11EeFHZufAmMPLNoOpgHT4S/sTSMr5fAYP7cRdidq0k=;
	h=To:Subject:From:Message-Id:Date; b=sJxHPcxyxe7DYEdZiFBCNr/dDOiTdex90dav1NwE8UbWSAbvpFykmvg3joEPpWcoTNxMBFLAThf1x2W6RdNP5HXvJ95mcrIQjwzgBtfBZoxrm/PE6Xp4geGQBuSxn339gtsdU5KuJ4fHawd97clf4SpL4CxntjNagpCZGj6psas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeSte9Re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeSte9Re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA623C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772198093;
	bh=11EeFHZufAmMPLNoOpgHT4S/sTSMr5fAYP7cRdidq0k=;
	h=To:Subject:From:Date:From;
	b=qeSte9ReqPZX/IJ1v+anYpAaSTgXZxwkcFGisvQBEB2w2+UqjfgEE9gB/w64SiGll
	 ND8JpdJpxGAFSnQfXhLA0y8AKgcIugPhX2oRZZ9Nvxm0cIpIuZcmwW9lE+8WAOtmVx
	 Cvrn486Hx53sWzC8bGNiMArFvyN1RsnYFhUuGWrgdl7nTphDPI1ysshsID93j8BiL5
	 Ktqb2QsibEVEbwgmAdF4BKx/BpZB1b4GHnprnP3STNR35I0PeGRKdktoS60s1kGJjG
	 CZfsiryPr49Hj1ycw3pjQZ8uZalOMESkN3SREFvmmmyQEA4Pr7tTLqQZlLgGg1ygrz
	 NKyw68C1MacIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BCFEFB47
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219809357.6010.9314593979610022511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9181e6c35c2d0ed9a52d83232efe586aae46959615d72e9408034ffec886a165
Date: Fri, 27 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772198093
