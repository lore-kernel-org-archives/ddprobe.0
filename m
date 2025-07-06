Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06981288521
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751821794; cv=none; b=AWt8KkxN5vraBv7MdFAhA21WyIIDMZTZAVFl9nZVqVLwPrClxNeCOo3p7a6LryxO01NFmzcewAauhkguarCDgoc/0w94uwltNoInHVAnKeyPAKl4wcXeIa79vkZE5lXjVqtvdm+6YG1kwQxJ8F3mDCkE59NRN9M/y//ZiWBFSwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751821794; c=relaxed/simple;
	bh=c1HrHmPINT6zQbQ1qZPiGONGcYcm2pZo3BSX9bZi8T8=;
	h=To:Subject:From:Message-Id:Date; b=OEcVI/K1EIrMdquocc1YwGSjg4k8jmTnPsOJiJPFdpTO0FhNZW5Tv9Lc2u8LuUcecH3maxe+tgeGBPDAJiPYx+JrO36IOymTkq5G1qFBrOpDoeBkIjiefm0PF8xooLsk4pvL1mtxvWE+HoaO9tqspW4Kfr9HrNvW4+BjKFA+nAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdMZ2+KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdMZ2+KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9AAC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751821793;
	bh=c1HrHmPINT6zQbQ1qZPiGONGcYcm2pZo3BSX9bZi8T8=;
	h=To:Subject:From:Date:From;
	b=MdMZ2+KZa2YuswVm+mZ3mxzTTnLEIEg97OvNe+u4xOS/XibhYK5TNw5r2FgAk77bd
	 f1A9bqfSyVCUE90W2hYMJ9pyENjH61cvl2qrmzTcpRHRNNvZGCQClE//wlfXfLknhf
	 A+muBvlZGzx6lpZzEJiGfu+nGYZd+w8QDSvPKfKaYFVZP245M2mFtXKngTP9N+Q1AN
	 54+c/WLYYYAeUfrLjTAnFc6wTvbCBMeJh1OyHOx6xTnCjRzv6q87ZGbisIG4yk/rqv
	 hiDMMq8K6Yd161zQGvxAW1YOTwqJgwv8qZQBMrT2k6jTOWPVnNE4fb1XIU8Ic2UNfg
	 rEW4VQPE8hROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEBC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182179357.7593.7385983043175918978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9f5007dd161d889fe24e10bbd5993658f4ce9c45d6d804b0f914155548238e
Date: Sun, 06 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751821793
