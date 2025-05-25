Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374F5182D2
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156394; cv=none; b=GOSRP2ZHgPNuFtHA844EwUj9SIFG0ZpIHvSHHqIXee1SpyNc12P6o9HxZA2Fhby52FsyB1MLUCLUuPRp9Au8RIogInUf5vNW+2kWZ6n70BdfGPX/ssqYWAOS/Qbd7Jwkps8dyOTlewzLj7rvAXoSk80Lh3/7f7eE1ctrYYBVpj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156394; c=relaxed/simple;
	bh=4wh8clBu1r1MP6uhS5UwZ9KfbN0nLAP0QJ6tDQeX9hY=;
	h=To:Subject:From:Message-Id:Date; b=GhwjrjmVmpfHbWBN8TukTtXzVYwkFBddOtig8GqtmTM8tkJbdInyqhuEV5m2W9BV7edD6Y3jFVyKOucERh3EcO1BQ2WBCkA0hddwEJzz7Z3DgPXj6KelBRqD5/hz1R+XPDrpu7QJ233fXEcahf4AqHBMMxjt8Y+u5fYH8HEKYpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgLzUsv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgLzUsv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4700C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748156393;
	bh=4wh8clBu1r1MP6uhS5UwZ9KfbN0nLAP0QJ6tDQeX9hY=;
	h=To:Subject:From:Date:From;
	b=lgLzUsv1bM/0aqrC5JCldNWXbdrC/oThBm6BNWXlAeRXRPjfXrPcnD4Xlgrft741m
	 jWfRIJxXGLAyNJT/JAwy1PP+xbQW5oCMtSlbnKJoWies74F3zrFFtCGx3f0JrW5Xd7
	 RfiXLTjCPNvGhXj+H3riR/tG919dXjo+2griUOU03v3DRJ+c7xzi+KTc3PTm26W+d4
	 U4Iv4v4uigXyd6jXntigGBniZ+pHLaYJyMYVpXFgF+52qTYcbV0lE/sE1CRMn58M78
	 KmClepI81/QJSkYGk/NQX0PuwWB2xqHCb2bTs3jHoAsCtl7hrDIPqjHbMqjX8k2hYx
	 K1FOI5wPg508w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95702C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815639357.19060.15677294962274103806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f829bacfa9d6f3e2dcd7ddbbd245bb76226e3fa601b728f1e56721c0f91e82
Date: Sun, 25 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748156393
