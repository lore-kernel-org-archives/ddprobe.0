Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E45661
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752092394; cv=none; b=OklmvuBZF9+b7Tj/zjR0wLkPo4lKyiX9lYqY0vX3TUrNXGVQjfh8z+4xuIP6Y9WB1BSfJPMrPAinDNl9zeolDh25BI161ajRKT4EdYxdZsQviK8/EfEeBSUkW2lOrMcjonG0zsdtt15FMs+B9Xqnrlvi6crqsAf1KdxZR/a1pX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752092394; c=relaxed/simple;
	bh=R3a8REu9JmJKqXOWylrvm4kcmxaF5L2BOcc/WP9bCX4=;
	h=To:Subject:From:Message-Id:Date; b=SxEVtcz/ncmkP+bBqdIldBFoPxbnNMzkUfMVk4s5GhQbDusJHlwUhg/WG5FFMJk/qaSvUDqkN2k97v2NWHxvOpKU8mYxZsB38Kcjt4b+w8oXERn87c64yvGtn9nGu9xkhd4h6kqj8r5wvBJBNHuIzCpuMvDhi9BS1u6pH+1J66o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx2xj1Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx2xj1Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752092393;
	bh=R3a8REu9JmJKqXOWylrvm4kcmxaF5L2BOcc/WP9bCX4=;
	h=To:Subject:From:Date:From;
	b=gx2xj1Yqaq+NkIh4oUop/ye5ifiLopWH6h/s9MAez4MYVtIGR00WkJioZrccihG1V
	 kW/0NIQcLVaMkWEo+aAlRpiBm7j9sX+oFHDl6h7oDNLAB8AryPSrdhQ3ZfLHC0yM3S
	 1bRSyR7ymgRkyMsQfrpP9Bc2tMe0AuZXeVdjSpV6lariI/0yCjvHFbrlvavVBKsPWv
	 M5gSsfzhbM9noZqz/9fyTTi+sZlx8iBQo/IgiDiVZOYiXppqw3WG3vjrVYpmQmKjb5
	 FJvTOqnNBVojpxtXUwvUt6z7jo/yOyTizYfVjLdbzg9BZiN8o5wo/O0UpUJ38PlR9p
	 08U0XXOqAyggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE19C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209239357.3483.4524200075615103016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7461db32e79d5c24b89ef1ea145ac00e20f4d8250e0b8540ef6438c4f7fb184
Date: Wed, 09 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752092393
