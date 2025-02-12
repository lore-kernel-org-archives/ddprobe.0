Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B54120459F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399334; cv=none; b=EeXjAxWCvmtKO5Wug3GdxfyFd8Hqn7/uM0uyq+SEbNu95g1GOEXTUbrF7Qe0LmIOaY0UT4x0cA8qRt1jyLLo6aycUccJdbzpcTzX9YncGBBBv9DIl99fQ+uZsbWR5BEFlVq+VZCTWDbLq7+PtZSC1FrPtLbSMhTLwOWVku5GpnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399334; c=relaxed/simple;
	bh=JhC9a+u6bVsYV/Pw3MRtyrWmSSPeC+3U3U5rbzJDX50=;
	h=To:Subject:From:Message-Id:Date; b=GGljwn7+xys4ZwvOM1GoH4f/PWmcewEEKhUtIJWTsa+GZeHZLG29F0K5PASXtWQLAcP5HbqGNJ+8RaUthHRVf6FNwtm9WMKDKbBaJw873ALMBcfmSSMgl7KejH/wHg3dE+OZtoSQiVJ4VoHfgVj19d/yDZirutMhawDQGboaF5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOV0k4nS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOV0k4nS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D0FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739399333;
	bh=JhC9a+u6bVsYV/Pw3MRtyrWmSSPeC+3U3U5rbzJDX50=;
	h=To:Subject:From:Date:From;
	b=qOV0k4nS7/1/kcLoMPAQ0wkp/JZppq1XsinrdqPw20dEvPdNKSMqExFyLj7tKW3Po
	 5jLhEBme+Rf4gjxHDmMXejQvHhYH93Bi9agmsdchgdELA68pyXqoF3tAisYbYwZIeM
	 HsDDjX2LRJ4Iom81wF/2XguorklxFfAj7MootMkHoDVAvx0jdNWloRRoH+/Tl+5bK5
	 en98hI5cVq//XdNafJBnaSqfMyOIHW9UagdJ5Q4wQ0WnEtWdHvbpbVcYEzqUz+dcHc
	 9NjB5hSmykxB/YAURwpilMer6i2TGrtScZ5wl5DUjBTxNc/f2RjXaNnlUv66pelugo
	 hpg59Wm5eMCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4F2C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939933362.5216.11586876940814209065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7585290ce0fd018d0bf579fd5849b698a348a62c4af3b6ceec1bec086a7f466b
Date: Wed, 12 Feb 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739399333
