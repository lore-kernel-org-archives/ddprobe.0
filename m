Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150F61448F2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957154; cv=none; b=DHweARSO4frXP2ikn/7Na5Zc2C2XQ/jY2bv07BBCvcgbCCTBhyLzRKNcABltvpIl7B+4yDELX1fu3wm6G6nEdvX5yTpLJ5de8poYFNg6g40KYE59ogAnBWyrbjdB/nJseO2On2g6vx4/xTsHwbK8pbN3I/kNiDBtjoA12zYqDpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957154; c=relaxed/simple;
	bh=1/Hjt1vWddD7ZhW2gNpNemuq8ZscP84ZEt2LKgLVaB4=;
	h=To:Subject:From:Message-Id:Date; b=fGJrtqerdjOXorsiDj0Kr7CcraFvbU9+QUkIR7KNif1RvZAcBLO+wz1aD4dyZM39vQCpNtt0wJBz82WhwiyKzzwRs1/1M4Fo6e6oWWBgPgEY8e9EodNHONjFraMovhbY6eTvEdF3D31srwlMG36dP1JAyf6lb/9fCfBGXG/wh3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrDt8ATa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrDt8ATa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABF3C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736957153;
	bh=1/Hjt1vWddD7ZhW2gNpNemuq8ZscP84ZEt2LKgLVaB4=;
	h=To:Subject:From:Date:From;
	b=MrDt8ATaAxI2eZNyqZl2qWDL5LbLWD0vThSj1HCXbCAiQjFPHc6Q8YiMuwapURzVm
	 H5fseWkJFZ7mxwya3llbw0jp6mOdtZnZtVvGXIKO44pKrd0g+oHV4ROPYOsAzPE13B
	 mOSeIwv926R6iWrvGxjvhyVE7VqZuRqrqOPA7nFvkPHBCeffJ6CPyCUEiu0a7yi4zl
	 yWp4EBAimY+/1AY6N+yUEmPEn8wAuj5AfhjB4DSRTc/AoXi96AVy2N+02Iyxh4GOHO
	 OrWGfqhgy+XYO2eq2agDYD33qMJw0KT3McSY33aLCbSh+2ZWNVy9cMpVkxrKR2kUDD
	 jkoJFlc603kEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A4C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695715361.10575.3910383224132426962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1b98c6b4ab17531a09ceefced643ea444b0348ab8227fb8299e803548ad4c5
Date: Wed, 15 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736957153
