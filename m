Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD2B37754B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785216634; cv=none; b=iHwS0TgJxusalDKOOnOkCflm4t6b8T1MT/3Dr2aRXvVDM8txO8Qz2TzEq/hpYPQhf9TNWD58dtsjiiLaFRj9A1JyVfyHyveGIgu+rpv1gojb+5WvxvQxNj/d38GXsSE1Ri5XEUHXukHk6z9k3GYXoh/ZN3AtdTc3Vlca5DBiT18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785216634; c=relaxed/simple;
	bh=z0IgxbcjX3hfOwLYlfrsp5fRuMYp33uN3aakvjLz9xw=;
	h=To:Subject:From:Message-Id:Date; b=VpF+jiLniwp7Z1wLpN52BN0s9K3KuI5TEsLiWgr8nKTs8GfNV+d6skWp+wYX+Q0pxN6QJQ1WjiKac5p9EMOJ8gA39LRASrJHaybgkpG9HmMRVE0pMnCP/kfREEb8V1x8C/hPFsApxbbJlgdc61N0zMrr+Asgb2SJ+oxcH9QvA+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MekT4YHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MekT4YHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0228C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785216633;
	bh=z0IgxbcjX3hfOwLYlfrsp5fRuMYp33uN3aakvjLz9xw=;
	h=To:Subject:From:Date:From;
	b=MekT4YHCgBI31Q+Ffg8f25wFQLWU4WRhXUX4+exuuehcDLLnz1VgOgUpKCvzcqqlR
	 IzCCI+XKebjOVHRGniFdASJTLHXQnMUgr1vkBM/d8HHxck8rdBvXOCdyZTwKb7REvH
	 LvyjepLQOeC1crEjf0KcnNQqlH0ulae5GX0iG+yKRIoYPZPyfWkIq36a0RsKYlsGB3
	 n+9rJRZuwkBkttUvfC0v35vPKbOjyBnj8SqjTGXfjQgriOLeRah86m0vO1r1aW6E5m
	 2s9RfmHC53Rx+vsxKpN+2IBtUAMk9utmvBQLimmi5g92FaLr5qDBF6tSEUCwLNsKmO
	 0Y9LJW9j8OEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB815C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521663369.21790.3250337777544250455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3b223a32c72af25c2c604d21ec1ebca1de6344e87a4928ea9d433cea85316d
Date: Tue, 28 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785216633
