Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9F1BFDE1
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726167954; cv=none; b=YwYNKcdXosHCgXskmq2rWLHDkcnLFsfYAeN7sDKmeaY7dc4HafxG076Th//DTTw1vl5L8QnbU6TKhL7aPy7e9N9ZTCMqcLlua6yxmPoe4FtqrEc84/PV4iQ5f8r83/Lt7vsI8jdUlc8/LGVU+JjepfCf4TLjj+vglU2XroKxG9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726167954; c=relaxed/simple;
	bh=hFJnFKiH9kato6EkwuBkvQRAsitqAcrDjM00QdcvfzQ=;
	h=To:Subject:From:Message-Id:Date; b=Qj+Y80OHrIyLqptCjco1WsMAJDl3X817PHGVeCc91kB8YuVl2/OAvGYZjSuAWtzL/sR7rtVDky+BOJ19HTQJJqB/AhzAvmmL2osLmrdbLsIeJ53v54Q7wHJPQDxJzXkrRh2XkiVavqBhkqUKdePc20sZSML69cSdR2PW894TQbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQX0jmVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQX0jmVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD63C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726167953;
	bh=hFJnFKiH9kato6EkwuBkvQRAsitqAcrDjM00QdcvfzQ=;
	h=To:Subject:From:Date:From;
	b=NQX0jmVR89Vm9RM4W8d9ewth7nXCxkETbosQDQEGHFIhyfFPy6gU03CmbbqU8BWyL
	 i4uZl9fAaaNgpiA7q1/tlB2nz/oyjFTQ6e4kgBPIVwMnKQvBR2Y87ixltNKIwSmF6A
	 bxmaoUhboprv0fxxTTZU+C6wOJJIo8nBcFQdftR8lNZiYJqKrUB1N2vRJTXUy+ovVB
	 kLajhiauzherVokbf5ii6p+meC42elbyiNoYZQTOOaE+aR/At+m7lL/bC6AzLd3jLa
	 2OY7iR53YWwBGorwx7o9mgYrbzqBjvvuvX8/9ryeksdtYfgpKeBTalIp5hVQzhXM0Q
	 YQNXsHCbYm4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4DCEED63A
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172616795362.10025.561128366078549368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409d145dfd23cc9aa65249d8d4ec2fdbd216ba3bb3a5bd7b9b0c660f4af67efb
Date: Thu, 12 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726167953
