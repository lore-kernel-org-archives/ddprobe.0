Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BABCDDD9
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731273954; cv=none; b=m3aG5VCHaXUDyL4Bt0rE9LKyJOK7Ac0ab0DWSQIOLLD+lxiDUnaeBKU/lGS598ORQaxYV896SICNkJ9ELJsRYBm3BE6XG/A+K2N36YKh6lCPeK63HuuHhV9CJd+8Fep5VsPF6kYEA5m24rSQwsAICsWUbV43bn0yHt6A/L/qVGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731273954; c=relaxed/simple;
	bh=aESAPVKDj2itblIXBiMQTyWqhfA/c6fcYff8EyUe4Pg=;
	h=To:Subject:From:Message-Id:Date; b=PYkapzB56e/eQV4fU33bihZ8XiUtdo4oZKjaBBj8wgaMusX/z8kwyp7Rsgys3ML/aRFrtWe7Bi2jv7Bl6UHuuq74VIsBtltpCf6I+lx/z8jfKpTIO+2RrCXBZd/p8YhexouiG3XEJmoqCYEQbOjFXMD8825Az/8jKgefvglTn6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIXFepp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIXFepp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD143C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731273953;
	bh=aESAPVKDj2itblIXBiMQTyWqhfA/c6fcYff8EyUe4Pg=;
	h=To:Subject:From:Date:From;
	b=dIXFepp7oUz3I6qWWCbJ9ct56s49mlEVf6oEx7C36f0jTIRoU45lFpqf5m4US4EHs
	 jqznOtTIyjKWK6Sly6rgs43AJT8T38JPL5ORHMQLmjzGMe2ccamj8VYBaJOXbMEQyx
	 JKYGjUWfUexi0dCBZBtZiQFogR2Yc/xFsDcQ3gThmgFgBWS2ef8HmGZ7qVYVCiRK47
	 e40vSlngiXvMTijupEQRoaUvTr6XNC87qycIFIg8Sld2aig8HNvWRTQirzBfwYSXun
	 pgiPU1vBe8ahldQKNd+O6CybxVeWSu155KsX3YrlhZq+C8mnkM7XfQtjzhtzieUEyC
	 +rDM06t4swL6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995EED12D53
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127395360.14662.5864307028747362398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f1340ad515be1ae1ef7e2470e559bc4a4bdbef75f6c807ddc9b0c534827ed4
Date: Sun, 10 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731273953
