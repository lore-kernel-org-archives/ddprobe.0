Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D7135FF6C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775197534; cv=none; b=H8hHPOXHisTZXuphMQYgd8bUvBHcR6BVMQwZrP0QkPzlF3+R+7GPGcsHnRT8OF5CsdwOXWDCIxQQ/nIvG3ndhHFUNkdQJon9UKZ7nSIzyzaSheKx2/SW/SshZaH9VeaM5l+zvp4bvb2lKuPIsKF567tJiLFsk/8ngSiQW/qZCx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775197534; c=relaxed/simple;
	bh=E9MzgtpGMUKMXmWqzaEdgn9Zr9aNgmJgmvWJeeyFGpM=;
	h=To:Subject:From:Message-Id:Date; b=LtLZbxHogmP7MGWxUCRsIDd/5V62OMKWEdp1ISXIWhWzVPSS3Bezw9iZ5P6bsIgSHsprQRUkv0+qHy0SXT7YT9DjjYyu0tZAKNLT+OtDEyjgk+JpaOHLxJaSlJdbEtLw/Q5M2F8B4SWjDd54jKLWUCy4TOW7hT8MO9lcvgFDnhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/ab7Tn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/ab7Tn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF595C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775197533;
	bh=E9MzgtpGMUKMXmWqzaEdgn9Zr9aNgmJgmvWJeeyFGpM=;
	h=To:Subject:From:Date:From;
	b=j/ab7Tn4cKvQrtcQKfm4nVsUDq9Wvvti1fdLcW2PgFyGgpUCB6KkVfZy8s97b/Vjs
	 8YnWLWJkI9+gK0cB6MEJ8iuoyBSo8vLjhL4aiYyUhfegongpiReQ9Moq4JrW9pYe24
	 Yaah8hD08uzFzzPaYMobMz6k1wyZ0x6vVdBiFHlp3qaaQ9PgzwpKoFv+u91w54PKHX
	 ZbTShdPw/KAJo1Wqiv+yTJVQuGDulfXIRL1fKEWDx+AfoFloV9nN27ct8lI387vj32
	 AkBYvWJIUcF5n1h66tCucW7F0bIGVaSABFl6rlkNFY2Bmu4XwIV0HsH9OlwczCnmM1
	 OAAbfTXm5PJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8CBD730A9
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519753368.27215.13835386267988277478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3213194c6fb1dc4888e417be43cb8e004472a7c1e7f1e09e7c60fa2fbdc0a40
Date: Fri, 03 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775197533
