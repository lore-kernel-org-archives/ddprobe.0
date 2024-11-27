Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4482828E8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732685754; cv=none; b=ueUoItyldbU/Tj/t6saR06dZXJEkt6hGMckquQoKalJBrhpY2cMf/nLX8kQbnhmrYbVyor1hrWSuAJqs6qBxV4se4pjAQCGuPju/gTBK+BFXs8QXYFMr905J2svW7x5NDVPePxQ1DQW4hFfMbYBpTz/J9sC6+Z4wHv4MXVtv9hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732685754; c=relaxed/simple;
	bh=HRE+WrhmuqrAM1q1beJZFVHorjSlEKwvr25Ak9l8pjM=;
	h=To:Subject:From:Message-Id:Date; b=CI4S0ViICeeX+zYgWemRlw6aaI0f7zRNlXMfXiw1U9+czf7IT1TC5yVPxdzJSlbzzHj3jJ17k6MOrqXL2x+N0T4ID/EUGO9tXIyecdS0U/LnNbsEW3zyvo5CgneoAfK45zNRQCKDh980pzASk44PN3m8BhTVhLjxAh8LVpvf78w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBDQCpKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBDQCpKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81BFC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732685753;
	bh=HRE+WrhmuqrAM1q1beJZFVHorjSlEKwvr25Ak9l8pjM=;
	h=To:Subject:From:Date:From;
	b=PBDQCpKU5VpqGmEo76PrOiK2ll/mdt2q7Z9AMog1Z59aiHBhqDHPE1W+5IbCHC3pB
	 OcmyA2otrr3AIJXCr6068FlCEVE12ogn6xSQX/HJmuMjCuTqkr/y+RjTYSyZR0W+Fr
	 gWyx69UIleeoP1wY2OmVPLHGLn0kd+WtKNPOF56Iuhw/KahynOVOo8GubigfmJz7Sb
	 PFn8Bz+Zb9dOdKJmk+aQmerKzYhBt4XKssYfBGe/qx0OMtZ6xoYUo320eH161ZcXaB
	 GRSHj0A0Rg6TbAu9BKhlCruMy3EUxGmjTtq+OrzGKMHIi2AcxJ+ARTPeghuTja77Q6
	 RokrkBh6k3jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F51CD609A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268575361.1153.15424913550392142420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58b3e2ee3262b57ce1a70f20de670838795d8a331bd513ca311964be45875cd
Date: Wed, 27 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732685753
