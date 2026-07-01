Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC92459E1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782914914; cv=none; b=mQ2pZTL/jKTR4yuell54UriGPo2nmZtNjaDZtf4D+9nXbHH3cruL/GpHPVMPnBj8BFRr25nuZa+e138SPw5J/+slOfpNQFuUhN+EZIRc4Fr9ElUbYagrENfGx5cM42+LZwedOrKzYI7G0PyYfMJnl8s4Z4W1y7Z0521OgtF0ow4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782914914; c=relaxed/simple;
	bh=04sbTu8NPja+c71qN98NMQjp2jvHDzcnK4nJxksEfhg=;
	h=To:Subject:From:Message-Id:Date; b=LRQvgPlQroeQqZ3TJPqsOEKV6aI84Qq3cPJ5CYz4wnGMc5ukQ8xKg1M+5Krzsl5RGS1SX7Wm3JlhGu4MiQ3UL7wLN2NVnraSM2xRkbHHSPS1aTUpwHZkXLdKVMl7Z1DytjcwHtPbiMmiNh3RsfMJtf3ixvwQZ/TJS/0SFf+V/mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUL5bzXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUL5bzXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57E7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782914913;
	bh=04sbTu8NPja+c71qN98NMQjp2jvHDzcnK4nJxksEfhg=;
	h=To:Subject:From:Date:From;
	b=WUL5bzXH4LRMbCjKp6xk/kR30eDwNnGBzTbL7RnODm0tUCjDgxgAHb1AY18XGUzap
	 k+h7/Gr53owI/8nYyXcNodhfjizqCYKVoFw7r88ACyPhl7FjRtjNT22NMN9wEg6gEo
	 dukkkTkUm7S5UUalaxJgG4zSVGdFRUpPvUyfns0F20qj7DnHjZTJ49n0QeEFiafFL+
	 tqmJQYSDBCi4S1GojhAUG0R2UIzJh00QjbTHojRKei01/Xj+bSWH/h0L1LYliXHQcd
	 ZbLCaFk6Xx1URvIziROG7XZoXcdyRv0NuMwgzGZZXARlJXF+9fkMPjGVi3O/v2Yi16
	 wKhR2c9pFDvhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC560C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291491369.4257.2078694745513117643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee98658b93122021dc3334f012ef38ceda2162377f0a1166708880b6e200ada
Date: Wed, 01 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782914913
