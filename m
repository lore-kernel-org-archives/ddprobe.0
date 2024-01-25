Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDCF136656
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213897; cv=none; b=rT4AhBW1oj7kOx86xu8XXGefqwXphp1qN3KBxGyAdhY3tJN2FffZbv2PMMAsyMmVgcj7HrI5dBabKKwbrzEDA7bmo3r9fdki6WaxL0u2Oond8zcNoRQ80MQEB6p6MkS7vOw10ggfExZP6cpv7LYW8Q5YQWOqQfHP0iVv10hZT3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213897; c=relaxed/simple;
	bh=4SdSSSityaK1DMmJVngZY6blDf0r0J2iB+FVphaTyTY=;
	h=To:Subject:From:Message-Id:Date; b=d0wiBvQSQHxXueZppouTeAvqA/kUdMwmp0IaI8DGvM0837yoP/QMZzqgBGmAmWYlwgj2/ZH8tKlaYWRMTkrN6Fo+XAI+pcItj8Mk+3vyKVYAV/QK2UqM0aQ7m7BN5fxP1OitTO1TbuiApmnOBHpQMAdi6m6seqpT9SMts/7qZ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYMfUjXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYMfUjXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCE1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706213896;
	bh=4SdSSSityaK1DMmJVngZY6blDf0r0J2iB+FVphaTyTY=;
	h=To:Subject:From:Date:From;
	b=GYMfUjXNCZD5Uo7OQ55LOyANONrR3dRcAr3m8o7oh/8mKPM2LFg9tTa/Cn+S+viK4
	 Sg9u5ccHhdZKFTgBn/A4L0AuzD3g2H4hEN3ywjK7puhFS7moALIs98CMkK5lVrRnZc
	 IzJAgjg9lGLZYvXn7gqTfSX1egwusl0k9XUSYWngaEYbH9EkR/JNR57mDkafqZU1/K
	 vGTaMKxNan00FeDA1/sO0TwQzbvkVRqDsgWPw8ginuHQ9y13QwPtF8jZSq/mHqQ+f7
	 Box6MOP7J0X4fUBs0bFqPPTTfCXFPwvo8lx6sCwf9aewsTNaA0Are3RpKcgCpf16MZ
	 zAHoKUq8iBGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6220AC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621389638.8348.2720330506918648258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd900862f02707046588a0e326996eb25881f9081ac951cc15e810bc0385481
Date: Thu, 25 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706213896
