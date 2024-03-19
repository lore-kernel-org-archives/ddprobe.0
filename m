Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21DB84FD0
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710865097; cv=none; b=rJLGu4Zl9WQ4oMH2qOr/klE3Q1SeUk1SGZGo94fCBdOO2TINXzwAbltf7wmJfdt2vjfkrneHLUulFJq6w5dMUl2jmGMqOUY/Q4FHBRIJhN/q3OxEpRF0VEeQYVsoIq0g2KJWh1CspQU7Guzjk2K5TP8lWfZ0ztoZiK4HvaBPtE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710865097; c=relaxed/simple;
	bh=hWpZZfhlCCE25BJ8HDz1u4g3aIq3Ggu9ENqghOn6rOI=;
	h=To:Subject:From:Message-Id:Date; b=mZZz1TNlPyXzDMOvZtMsBWjyECieuBT9Gwqp7HUnzlSfGjLk/z83bf7h4uMAmg+o82iVyCD8v3nvNDvvvactgJQXkgyyy0Ke4y2nMEin3Ie17PLzdXClYM240PT6Um2E1zf1MI4tIM9bPydit4wgNPohtW9T2XA9Y47kX8VoKLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDEIHUTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDEIHUTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71927C43394
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710865096;
	bh=hWpZZfhlCCE25BJ8HDz1u4g3aIq3Ggu9ENqghOn6rOI=;
	h=To:Subject:From:Date:From;
	b=pDEIHUTAEqhZqIJsYZab7SLr61S3k7F3Yg8d2sFSWUfvA2OP+c+ahKgAmXr77kxT7
	 KMhkqJpMB0MR7QqCxLrXPoqYlI7MlUegpbtFN/4nBMFGYyVWd6wq93QJBE64fKAHu/
	 DoqD59emRlqTZxp21SNKrGUIW6XmFZu0yFfUTTUhsLi1f0VdDP5ss9t87X/M8cfWRG
	 ga4yxx7gigGCOC0UIKdsUYxmizKnxsbrz4cd3G/sYOblcQ/sZyqySHNnHPI7mwazlk
	 YyYveXt/ttUXPJ8iwtILAQhBoVRxr46Yrt2tI3OjDk/bh32gFBW0wWt2cw7og/UzIX
	 Wurv33E5vTteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C41CD11BF
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171086509639.4073.16273856314669361350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192e1b9360f22a856f80348336b30534821e5c8d0d9544a639aa7ac24b220e20
Date: Tue, 19 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710865096
