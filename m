Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC8530BF65
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758202794; cv=none; b=o7XPEWQVTJC5nhmh3Z4rcfHKBbAbe6x3TZBgYrHR9HvCO6AW6M0YI7NP/Ru4cnBDQgqV6nRgJcmxOy0korG9LH16lzPIeWnqbQWT9ZBvWsZu7t+baXun4kVUdx+FWb9QCtvoi74eDo1My9N/Ld5iuAhzYA5OiRPE3ylY4IbovWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758202794; c=relaxed/simple;
	bh=xTZEj3WiD5zc4wpAuP5mDL5qogHJLyTwGIIKq21r2io=;
	h=To:Subject:From:Message-Id:Date; b=QugeOLhQvIqDZ0nLpmpk4FVkjY16HMNND9bT8xsNZTap9PMGmFjK/rUhfFe2can9aI42r0aDyVnpXLlM83sK2G8IwFHlqwOpUvFZbC0+Db4gzXZHYbg0phcZAkTe9scwf9VOBQ8vwGort73/giV3lt5W/tkgWGtamUBxHSIMrwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNpx0+jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNpx0+jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758202793;
	bh=xTZEj3WiD5zc4wpAuP5mDL5qogHJLyTwGIIKq21r2io=;
	h=To:Subject:From:Date:From;
	b=JNpx0+jMR4+jS+uCHBZvVAGId7JSQ8+UusYi2DLuLpdk9Cpq92jDvdeK8I1ifBE+h
	 Wqp5qvd+xheF9lqsm3QoMGl+UXW7gVlO1F3lXC6yVpIY0otCoGiYZ7Hpebz/qcVJei
	 iwKi9IQ341tCwWrfC14/s4F9SuNL26pHffcli+JYZ/5z+Jx5DSX85+QySIfbVVGwyV
	 nFGMyZ6x4zJc+qRDpBTpjKD8xAoGwEi8h2ozb/Rzi5UWJMAmBFRjZgAbxH6m7p40d5
	 b5WKKDRO5jSVi+mRXzQgvFDthXovjHYN0JR433woAQ5T2Lt8Ns0Bmux8eBvNFnQlhI
	 KTNXZQ+w+71PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C2CAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820279357.29035.10048317987633000086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8dc2f3cc39e842211a7883dfe32b085a014e94f4ef25260d22f633508fa1cf
Date: Thu, 18 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758202793
