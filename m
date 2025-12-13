Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0AF1DB13A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765636374; cv=none; b=r9AvoGNjj8yxEdKCR3EsKDRyZed3ZRJHMN6SF8i6k2Nzr/mZiCUkgqd+lkJpeuBPsCWtmapmiTjB556G17qmTjliT3cwnZvBS3Ztgh11eZ9LKikBiwRC3Zz2rj3dfaVC63zd+cmmcOBtznp7Xmc9VrIdj/YCv9qtSV3lNfvcFcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765636374; c=relaxed/simple;
	bh=Y6l68apAy16XxflEN5MIj+owwuqlMzGh4saJ2TvnY6w=;
	h=To:Subject:From:Message-Id:Date; b=KNcoyH5VJREMg5SJVZBGfurrkOctApyyoo+nIq/M5ioiUhMRQ511wvhTIbIwExw0c+4AmF2578KTE2dcaA4tfUwcWV/LvntzwnCPMpEYToTvlJ020B+1jzYpIiOX4z2UOmY25lC4XSNVFXwNIoNMAzf833hRR5s055bO2MLlabI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie2NCi9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie2NCi9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE1C113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765636373;
	bh=Y6l68apAy16XxflEN5MIj+owwuqlMzGh4saJ2TvnY6w=;
	h=To:Subject:From:Date:From;
	b=ie2NCi9DyA6vOipkchvetL8htomES++dhixuJmB9XIFm/bSu11aGbbp8b/Fw+ISu6
	 yZTfHWJTomqYSXnsf60AhKN4zfmvpC3aQzSrEHjy+0jJBOaM3j13MHTyAAtwG8z637
	 snsE2MsZV1mtLnJx6vpkrK/N8p4s5I6QU14vuF/jmrri7GRFVQQP4rdFQvJPUdMjDq
	 WuAi9BFx7Z3oVs4ChCr41MyW9LlTZjS8XXv5ZyF+dPrScByRDLjL4vyo+8kZPZVDt+
	 HsaCyVY8JHal1MU1ZQC/njc9mx8gTiF8JSw6qRqGh5jCyHVN81YVxJcBwtfgoPUV/N
	 qEoLb/0PTYQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94193D59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563637359.21613.670133225102022059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5037d6cfb49a2f07d73cece3b219b837aaf67914485906c6ea2bddcdd728b3be
Date: Sat, 13 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765636373
