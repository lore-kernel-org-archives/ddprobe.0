Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B905388E44
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790482234; cv=none; b=BiFRAjQmBAbAmLzd3LYd+Q7wKixPrnDwOXl1MYLCJar1wCsfGkHI/YLk/Vc/5yCYysmc2SbbsbaiyMXSM1fDlrE9/YGwN5TG3IURnxIM8sK/TFLXkkJqxQNT0WqZEeVNuntZ+DYte2iAGmybelJONXucXUFVrIeFsTmp1ZElKxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790482234; c=relaxed/simple;
	bh=4j4Qv/frlMd5rGrOj+GucPvxCB/mw/TcE7Im1Y8q2T0=;
	h=To:Subject:From:Message-Id:Date; b=EX9g+XKsH4hCddSRv+zLLZKaQ6KSDvWkLa7c9hULMZrJwLT0GbZBU8jd9yw4SLwz3VXdopSAjo8JXaSXO0TfWkbQRtXh55HP67TY8kVhIsEo5QgLlwMfHi9lm3F4guPJwiMgr8bn64+B5KkFLuksOc0ws04U8i1pJm5grRePPxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bV2yIh9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bV2yIh9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5917C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790482233;
	bh=4j4Qv/frlMd5rGrOj+GucPvxCB/mw/TcE7Im1Y8q2T0=;
	h=To:Subject:From:Date:From;
	b=bV2yIh9SRXxO4meWezBvRcdL1NtB1YVNV+A2NXp4XXwpxtv06wDsisZQT4XRziynS
	 T/ZR2S9uJSW+b7o8zr2zfeWsZAedclSmMDdA4EnZuoZclm1vw/PCu49URUWsxfHHAR
	 02DqJYnYM9RgsHeYG898WfwTkMOuG+eNZEat2Z/n06Lmy20pBLTm4CCix4exPwu6G9
	 h0g43NHJBwZJNO9hzMha0i6PDkd3b8OEKqCqBvrp0NCmWQ0hnlJ6JHY/JT7KovC4ZY
	 lFR47n/gvvepo2ilJKAeZhWOEdFYyJcn8Y1w4tAgJ239ZjdzSsXUoWNqvvBDCwqy6W
	 HtXweN4OV41Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2912C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048223369.23335.13974425235409931334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10aebfef325f3cc0c3b8f2d88bb3ac4e980f00912931e1389a07bc680203aee0
Date: Sun, 27 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790482233
