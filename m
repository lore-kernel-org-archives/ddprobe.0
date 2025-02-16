Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D109322A
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739672334; cv=none; b=byEQtl0fTbDEzpSMGLyywKOZoYw6NfymltRa5IA5QekHQGUvWBV89jzRGmz9kMGBRDD7CaLiT1mvXXDpJqs3kaHzlEyQc/uz7XGNRWvSrXZSrQ6k+NwbdfALc0+Np2XwSa1PpCv+lkSKn2oSONJQ8X7R2gLDoPQAw8W6Be/Vmf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739672334; c=relaxed/simple;
	bh=1shmC6gb2AvZZbf7WUeIX4ir/9AvJO7fmZZU23B0jxU=;
	h=To:Subject:From:Message-Id:Date; b=PehNh0GNsoFjrnlkMYHx9FfMctlJLoCdApFd7MFGnJIkbp/VkLjuoMqh6iO6ZLTWBW6rT5cisIeovnjenWEcWjmAcU5Y8ZCZN+7CnxvaRlr8WUwnP28FwKc0220HZTVcv5PTeeAGXXb95RhWwpfZm9AZt+ttjKAr48VVzkU1jbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7xrBYgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7xrBYgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DFAC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739672333;
	bh=1shmC6gb2AvZZbf7WUeIX4ir/9AvJO7fmZZU23B0jxU=;
	h=To:Subject:From:Date:From;
	b=n7xrBYglkzYiDo+GQ9HdOGqXa53CO/MN9qD/b+rZcVojfISUJZDRd4R1WFTsK+2bm
	 eJQolyYt0n//VUC2UsD2T2VA61KJvGvOPjSz9rjn+8H6ERJ54Zu9zUdSrbi2v2Tk8V
	 3r4cTUqB6IOVgYAUweHidgkrPeKUa9LpqiSbFeWpeeYiewFyCBO57Ak6S1Rynk3TMf
	 2wVVsN9LR8jaYKK/Rjcep0HX0mgwJSgLV7lbtvgMM2oUoeaNXqnYyb2Ws6MQGTiW1B
	 0d/G2hZxZBGAsI1jbBS+j36hXYYBeA0HOsjCY9oOpYpSx0rnrTQ8gqfdxDsbtrpMpt
	 OQSbQBxQv8PcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96437C021A0
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173967233359.6321.13571709622835040899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5802dfa60c8dd34f1ba9092cf07bf4fad9f1aba11563699c58c3219a220b3a72
Date: Sun, 16 Feb 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739672333
