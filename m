Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5400C17588
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715498543; cv=none; b=rzvmjn2f47uvo5QrsLoQK/QLd0qkqVY/2lbD5ABe+LQTfLdrx9fjyQyDzMfUR4bNLXzdK6JjWokLkIUUw7EHbksGDMf4qLWpgK5oWbGbRKw9EBehsMP4oUVKDezJ7vlQQXi7Ih1LDH3aY11SXx4XCYz7s3OC1J05SuhHiSkgSk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715498543; c=relaxed/simple;
	bh=SJ0mabLSk0o04547XHdu53BgZb5XT1SrUXwm2/gKW3w=;
	h=To:Subject:From:Message-Id:Date; b=Zu6+xjpeDcQXtIRirKxW/25TfffFMT63B2J4CoLcJW/YponHvN6bB44+zPNOZJu8btsjgmC2CHDxfJUrHW4vSJVSUfH9knh2b1Z4vcYan9e3x5ba4t3hucwhIGzkxaNT3pk7a73d9VoqGGuOxIdRZHghcdln6e/WYmE7mTqsr6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxxuxIna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxxuxIna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD531C32782
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715498542;
	bh=SJ0mabLSk0o04547XHdu53BgZb5XT1SrUXwm2/gKW3w=;
	h=To:Subject:From:Date:From;
	b=fxxuxInaKNNFxcZ+SoOvb+LGcPiUSU03K3NCJEcccqpsrJvf3X97GmHNVBpGspY2f
	 Jqn5lZJOJE89d/+TH92e0WSedyzZ0rQWFAhOEylFpr5gXAXnxEopyg+7+isctCLdn7
	 K6vcMeM/tZ7T1dUzfXSeQkNKpnHMKqJDx1UISRcFO/uRNwI8DV9hro7OkLd1sExK86
	 c68k57ADvSrSA3wZzC7LQyHD6/vFQHb8u7U2OTAkV1vZHgBQ14SPIUojRoy+q5rHpU
	 ZK1QuA7M1CCwD9IK31eIc0MuaifH4tML6YN7DWxSRAmBvAgZkUC5QoLLMzuMLdPUEo
	 po8HfrqpQvoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F7BC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549854277.9186.11173575730999958378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894ac7f223489b62f6cba457d4d7c340eded5bf3ead545ca26ddc362e59ea720
Date: Sun, 12 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715498542
