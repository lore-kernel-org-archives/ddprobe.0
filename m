Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494E3191F91
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789315834; cv=none; b=DdBqpzNe/myMxFW6OWhQ9SzO9FkBFua3ga1APTlD5w6DLySC6rkN9LxD3LvAEPjdYk0bQc/BvXND/O4c5bE4b4NAjZnqx0VqpNlc2y9WIvV3Qwt+Y3K/+OUZYM1bRzuhrXLui9tqZyhs6hsLhRe3E5kyYhmHbsVwBRkjxX9jNjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789315834; c=relaxed/simple;
	bh=LlHBZYcTLVs+0eUV0qqFTYt5ddw/N1RXMMnjtNNiQ2c=;
	h=To:Subject:From:Message-Id:Date; b=htMu1kHXTtYERjvVctz2sOVvNzeYuEXv1CNC8vstWitv3gTGqA2MDeiKi9DZfiEaEY9RTkKiaqZF6elipjJWXeH3K0hFYGnnHPNA7ysyPHm1OJF4R4ZeL1HR0MNqoeB5K2d0kDIA+TYGWXcUMrKRcBN3QMDh2ORGabyQmXTNsWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXym0bAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXym0bAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92EBC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789315833;
	bh=LlHBZYcTLVs+0eUV0qqFTYt5ddw/N1RXMMnjtNNiQ2c=;
	h=To:Subject:From:Date:From;
	b=AXym0bALeo9VWksKimQST4bBpb+ERyvtgLS/c0ymDNd96B6vc/LfhhDuCdSSCDgi/
	 SLZCEUsdcLJEZFJlhur+jNHbyishL3mo51ne74DqXPvu+z+GGGn+SJ/c0WJy9uMa6d
	 JgyDJuCQaEek+OxUGFukfXt4XC0lMc7U8KSX9Z+hT8MN9jYaXqn38jH0mnPDSS1edz
	 vutb9gtX+2GzY6aXsOUqw+WBMzoSiFdDXd+SUw97VrpSb5cq7Aru5SLg9Y7vHcxtSU
	 uoMZhrWVdBDHEvMJN/We2uYHelnIUFdtKIsy5e5g5RbVlDRgsA7O8wV881moOiq+qP
	 oonovfij88LKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0065C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931583368.26535.14847339051689468873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8e7993ccaedffd8bf66219d176b7033e570d2edafb4e85058f2a5553b8ff47
Date: Sun, 13 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789315833
