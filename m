Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15891265CC0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755876594; cv=none; b=dbVLk845wdWgLB8Iq7WODpe/wdES3NaK9S3dD+Yx9LHeU6lI3w0MpVKYtBI+IL+IJtOl+npMj4mghhKSFvnqsV1hV8qTT7qHN3qEF+uA71WoNi5QingVcvP3km91JlOlAjatf47HWVkOCPekDCyP1lnNx9NDBIjGgMH6jrO17jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755876594; c=relaxed/simple;
	bh=FJPVOANEWxnCbzdKxo4crp9XBoyPjtdGPIP5JVUoQ08=;
	h=To:Subject:From:Message-Id:Date; b=t0maS+4ndk8V3Va72pvv2ldtjqdvQ4zG7QebE56oOEKIoRtAjYB6hVL9KCZKSvxu3jcWFOwvijAzkLxRD0cWzkcDYQasa2CVc32Ic1ZRHS54oSjgws+eC+4CvzdUxghQ0Wa6jQmCsmEg2QtICfSI38CcZQlA/tCl6aHKvTILcxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLiX1bZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLiX1bZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339AC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755876593;
	bh=FJPVOANEWxnCbzdKxo4crp9XBoyPjtdGPIP5JVUoQ08=;
	h=To:Subject:From:Date:From;
	b=PLiX1bZ2dSkwEAQbKlba2aiGb6t4iMqr7E21c4ggJegXUhI/X8YA7bc/tGUeg0JMc
	 NCwU36LN9BrGpIMK2KpLAfK5byjIQdGEv+uEZUABw/FUjjX5bj5KWOnUQsyE4Tp66r
	 xeAMo4QT7PKN2/7/EjtBUVJOfILwMFou1dY04G1HuyGSlxocLHIl0y8LWedBexfZZF
	 KjiWMMMDrgJ2cTnxWrQA94RFN0ni9q1jjcCz9NJUcQWM2D0f8/lDStOgV4yGTLnTfv
	 KYwcGL9GmlMoazxy9Z8IW2ovpz2NoRuXW4nrlSyAiREqfXNOyqwFVLNzS7LlAxJwbj
	 S6CfSf3MBmJYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92388CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587659358.8274.15499745359683741878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f4abcb03071481e2345f5a8b07a034ba27f327f41ea49091aeebd78704649
Date: Fri, 22 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755876593
