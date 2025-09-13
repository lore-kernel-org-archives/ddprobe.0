Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE42C15AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757807994; cv=none; b=EfUJsXTTpYjpIkm9DlvXhbBDs+AixbCzDjz767SxwEYDyiFWYTwsg/ISFgnx+M2xBCVrKo18ebeQ/O9ESzGh30yE/XWslMlOs5TvOKnP0EQwrL3X9G7+GB3dLVW6qVXAcJYfu3DtaD51Cn8tdegaJCo1iHrT6xu/l2qOxyrZ2ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757807994; c=relaxed/simple;
	bh=cY5Td0QgoQbPmgF+Ih4I13ivnQprLViBSS9zZlVlGL8=;
	h=To:Subject:From:Message-Id:Date; b=VWCOR9EuNje8A94UnbAeGQaJMMxO+9Ar4CAgWAIaaqyLR8kLpnqbzv0Bq3ZKUBxB4G9dklktLaTz9DX5v3OcQ9NzQ95/OienvtZEd0lotq2mz+ynETKwibttiYZ8wBpQcE4Xaj1or+bWZa3iGxrvee2DtfrzbmbHNc2JhqCKfv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNWIZElD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNWIZElD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757807993;
	bh=cY5Td0QgoQbPmgF+Ih4I13ivnQprLViBSS9zZlVlGL8=;
	h=To:Subject:From:Date:From;
	b=cNWIZElDrXvfGILT9bjCYVAXoF04mbPVgXYd3CDVHlhYc7+ST0mq3/8IPP0CModrR
	 wjuVujMke+aUNEsdyyArdtXYuUlqqeq/vJve+aegKH8Li1oUKxf8BPxQWdvhFozqck
	 6FqIjV8radUGPAthxmAsZuINaUMvyDI2Wzmu33yAyEG8DPdTH+8SRFo1DgVMvGd3ej
	 Fj8K7Fd/tg8GUeCL0kM0Bq5onsz3n7O5ut4hFeCUrISQaAmbGfjVxSvOAOCNu2PKoH
	 Zz1h77xzfbmVNEsUOn4liPon9n+iVoEoaKjdPXjslEqSMoEQfwwZB2GwRu1KqAdHHy
	 GFpvPYPUzTa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B0CAC58F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780799357.27531.5956339579656478598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed597cca0ef9af746813d7469d98e151d16b8ada027ecb13ea89279f2f2235f
Date: Sat, 13 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757807993
