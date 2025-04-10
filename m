Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3889D204C22
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744317594; cv=none; b=ns4P6h3HzluW7VDr2cssSqWCbvE7RFq6h/CkMH0AxxGAi5xDPRQ0QNnnL1aHED2QtYlzaB+DYR3JVfne/NT/FkiC6NLGdz919hnsMRzSv21eY1rLAbzwkngjAcQGeHhuHJPTwJ5aFZRXsAdvmPJGtimWF2gicNT5zRVwTpvfuXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744317594; c=relaxed/simple;
	bh=5ix9FCztNsswJDCPwm39KnXNtHHTaikuSr7pFgEUzys=;
	h=To:Subject:From:Message-Id:Date; b=A+XByOT6/iEm0EbJJpZm7W/kXXj2ZVPTavyQd3UpiLGs0xJEPx2zJX9ORHJoMHTUDA4JYVHToGiwDToWurALiSQmllTt4SRF+DoV6WUMwU2I9NvM0btiVzhzgubOCCBjjHwR5szDCNaqIWvoFRF00IIiYSFxem39thGY31JAlQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmbls6YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmbls6YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744317593;
	bh=5ix9FCztNsswJDCPwm39KnXNtHHTaikuSr7pFgEUzys=;
	h=To:Subject:From:Date:From;
	b=cmbls6YUB8nXguvkRbLcpSxo0x5zZxFDE2lUx8wVmL9lnBbZPMqUjM5So+ryDu3If
	 zxZWasnbNhMtwRJAAOMyCirM/zuW5VdgMhVd71BEUQQMWq8tJvlOnvylXd8c22BgOy
	 7/yEyamsAnxCcUAjeNL87+ilVLNXy0Dt+TcIhgw/ecnjxpb6IoC0ZWaLSN9SIlG4Xh
	 ebXrvYFSTvIumg5j8lHujANgMwT/4tzbYPQUrXvYzjx5p+E/wQ2J5ic54A52YDOShC
	 2DAPeIwhwgZhFCzD52m1tx/E0gyZEeLC4sh2Kh+NNV3R9RbkJGHCaHOyzd2Odv3+6j
	 u7jT4CGCCiuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94583C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431759359.17951.14114612338162303645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10bdc3320a510d870596fabb5a9857015819bd0a6ed21e85a63ebe04dc45e8e
Date: Thu, 10 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744317593
