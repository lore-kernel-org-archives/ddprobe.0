Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A1A2FC87E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762460994; cv=none; b=VlisO7TpJsWwZ5M/4TcwYDxuOGXRT8c8kAPCkJURXZhPLQrlomJmeJcYO1JZE7/8RneYfEXWsepijRbRH1R0ToiTrqeXBIExF4lSB79KeBSrjQdGumAd0RMxlwROQJhuXbuV/TVZDSdKZdAdsMnckhTxf3aHHHMPYj3OBf7oZA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762460994; c=relaxed/simple;
	bh=HSNEJ21tOm7R9CL65F6Js9/d1F9usAd1CfvNgzcgorM=;
	h=To:Subject:From:Message-Id:Date; b=DSsgwWOzLBBcKKuH+rapGCFNxjD4ZCuoDKW1FfWAMt3TaXB6ap/oSd/dxfhf7vhgY+JdtA4eWqoKO8u/titSZY+s/WgMwnd0CYc8oQQ0Jn2dxGH6S1R7W14xGcBle0cLqUU2F25xciKxNIMU33C0l5MFvYcCwjkjulqrwVwc71M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1RBMudL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1RBMudL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA2C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762460993;
	bh=HSNEJ21tOm7R9CL65F6Js9/d1F9usAd1CfvNgzcgorM=;
	h=To:Subject:From:Date:From;
	b=U1RBMudLmYu30UCMYVN0bn+Pbv0Wejn/NjolBl03yS8JyBowu2YDpEbjQSp0SV5Gd
	 NoKFYzGZOovmofajo5nKqNh6o1/9RCgCysmUmVKnBYrQSoMKYLiV/fCXI6RGT7FrLw
	 /KWlftVzy9BN0VoaXm8SvVGGb094I6SIFQYt00pYkRRVq3sncP61WuJT7RjL41UiPF
	 UqGeOPQQ2DOay9ZcBdHBigysWwLUuAYBxUxQG3Rgt2VC4MOos+vgslVhdd5IiVW0aA
	 rNVZ28+cfug66L9/FCn1omBarcyE4W7U5pP7Fnt/HEkQxMye4eubIjb+wXIapgYcFE
	 WhJKNRzwRqNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0ECCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246099358.13356.16379513192318865567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4875160367ec804ec2cd4963bcf21b42e0e79423617ef6f6d33b0a4a93fe0b
Date: Thu, 06 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762460993
