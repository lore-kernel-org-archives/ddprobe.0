Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FD6352F99
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769683434; cv=none; b=eAfT0GpRpGM6/KDJD1EeQl0m37YPjEhGhSIkPls4z9CQ/dPlMQXdGmmdHDNk03fvIh+VDihZX1/CIu4z7m/gae2TXWqToT3EuIjfFCK3D0i23S6VGEXINWxdcbU/cbOwcMICPd3AfKATAHREvZZ0hk4Ypfd9I+IKP4tAoSzq2ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769683434; c=relaxed/simple;
	bh=lFYvxrlmhUCsFfFDkEdbzfwjctkQmFBqr9vTq4CLUyA=;
	h=To:Subject:From:Message-Id:Date; b=KyNtgGhggesrU1B8Fmtm/vpBHhyaHfX0VLbveiaJkv0PZDAt0TAmFr5ya6cuudkmDztUs34OvF0+ZTvLXX8AEHs72V8jNsIa1lQohHfrcTop9m+H5ZGFShEkF8fb4B9LQqtK7J0rAESIXQr2OwNf2qUO1ZBxtdY+G6Vmb7J4y8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDtcAvUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDtcAvUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA181C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769683433;
	bh=lFYvxrlmhUCsFfFDkEdbzfwjctkQmFBqr9vTq4CLUyA=;
	h=To:Subject:From:Date:From;
	b=UDtcAvUdd+af0fESo1H23sDjFfmVHuoa8P470/scRDsnEGa6MMSYiQAtFLMHYxZcP
	 ZSux8dbvkcjzkyRxAIEvlXFXYbnhY5I8yiZvE9vIZb+4owM8CloJpV325iifsCW4oR
	 yiQZUqlhegIdfI9QM1ksSYMcv2LM8SCTonUKouzER/Lg2R62E38AJndkd+hgmBBP87
	 KT6DTHDzuMbM7K7jxrgez6LJg5sBLtGG1cS/G5UYT51XqAop6Qw6KgNua1ovOcMjZS
	 2KZq5tg9/LGHy/YXx45zcGhXxpFq5I2toIIOpT8XIM49uZ3tBABbWpZpUQO2luWZaG
	 X+l9ZwHYP5H2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8BD358F9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968343359.17234.17678663370711033247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b994350b0f328c3b41d9d8ffaf04119cebc4973bb1c08b2ebde32a218d2ba68
Date: Thu, 29 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769683433
