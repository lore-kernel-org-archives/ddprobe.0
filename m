Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBFF1DFF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766463234; cv=none; b=mBL7xLm8W8JIxQEIbHGcGHA680EpLz94vOhr51/pYHXerS0+c8kYCgDsJlsKFji4HMpZYOguRKy39rDQYxzUhUYPZMNoZzWAMX4ATuF3Kgx46KWOrU81lPf7im5HIID60XxsHRGqNT7A8WCD1EaKvKl2bWU7oIOG7mcrBungB6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766463234; c=relaxed/simple;
	bh=wYKGQYeh34AVr5UULfpUrbzc/Z2t7pW67eptGFwzRfI=;
	h=To:Subject:From:Message-Id:Date; b=Lrn7Ttx3FvlCrWgIfIMm7unU79vYTGthluD/mzUYAYgzqh9w2IGqhihogdacSLdaAJVXXL+gUos1Vx9mjQNeCdZMI7JPkKa/C6NPzoXhAKkiY62GqRdwG6HkTHNpC2JF+qcGtAzsqgy2aA9Kn1vVg9jsz7XpVpl/C3kajQnVn1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1ZqztHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1ZqztHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9905C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766463233;
	bh=wYKGQYeh34AVr5UULfpUrbzc/Z2t7pW67eptGFwzRfI=;
	h=To:Subject:From:Date:From;
	b=n1ZqztHjYRTNSdWcOiFDssLOUdHiIjSrj0in6E0lv9uLYMP7pqZ38cGoNNSSs0Bfc
	 FcFE5g2JcKCi/bHqyOSfnkI/qnsV3m7po/Nj02Cby/2d3twcC6g848FJpNCXeHtQwU
	 Xe/CwvNQSFAWSlHYB5RBUP1vZiXAhbXZmjGHvE+T0zgxRHieZTmunK39oEFTkBq5nB
	 9x1R5vShZN/88OwMWKgmN6zJJU6L0+B84kMe+echovrgrKNVmI2WM97kaz2lFa61Kr
	 UR3/sDjhcghc3yDp/Hn55i5wPSq7oC97Kmkbgh8kiZYBTdAmbWt5KG5/q0gmFnV8B3
	 mfpAMTzt3W+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97520E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646323359.24890.2437380145978341675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21794cf3ace2cd990aae66af97df5d73a3cb60ccb90ee74cd805a48d973db92e
Date: Tue, 23 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766463233
