Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE2212F91
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736528754; cv=none; b=ueJq6kldvs7yGPw10V19f6YAX49+xhnsvYk5rDD0IYHkhZytX3kL/MXfyO7rYQLMcSmTVb3UkdMA0RMbFoeQAHJ0rBVjVBYqjDRwCTPYtJoqdeVESRdPB2q6yPDZFv8162nZV7OAy+MOey5Hs+JtlHS3szeP2mGsf+liu7hjXD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736528754; c=relaxed/simple;
	bh=qnvl7M4ZZqlh8wDd5DceJklOCAM0Y5SmffT3OO2FuT0=;
	h=To:Subject:From:Message-Id:Date; b=eNdN5paEswdPkE74A3yf0xgx8pc5BrdMzkUP34vr+JgIcJh+F900FV1pEMNt+fkV1YKOXSN1DiSO8HuIFsbZ6L6zAyolHKO38iGvbw9vAELBRdrYcUMiEWzK8E4U4eAYkUPuHZV3CBsl+/5gHZHRGwrqFWDIr0xN2rZVteZICYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey4fMKzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey4fMKzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF579C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736528753;
	bh=qnvl7M4ZZqlh8wDd5DceJklOCAM0Y5SmffT3OO2FuT0=;
	h=To:Subject:From:Date:From;
	b=Ey4fMKzr29g70ffhJnwhQnHRtEa7vl4MVbqdiMoVLOYkZ7m+2njeBR0h0c1TiBx96
	 Wx7WHKCMNQksYeMAbbQ2XmQbe0R7JNkTStakqkUdGy8qaQ0Hq4wiwfm0wK+n50yj7n
	 KtDa+kCfT7A89HRhWJF2rZTvNIm4n6WcyQrgc5/ofAR2wtM1dpYKNXgjfRaNJux/zJ
	 MYHMQ9ASymwUfwjvxDFyPej3TrpPtgtQ8bBhJHWzWrpaTIKdvQELIJXwoyYNAYFYL+
	 I8OLUDA+zOCsQp1wHz0fxcv7QBUfBXTOJTZ05T5lNba8QV/XZOXkHgKFJ5+kGl9KYs
	 TP4TMDUdgmD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9944BE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652875361.14670.8067767125167352267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1037948f910e89f3b7f3a9bfeb67cc84ca38cbc662a3c3c0abc0458b2bdaa9
Date: Fri, 10 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736528753
