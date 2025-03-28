Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04351EFFAB
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743199793; cv=none; b=HzFWMxYVqim/143qc0sSqOlojZgaHeKBLKXSErkTR0m6Aeoq5fw72DsqQmmv+lY9jTQ6GEcJLuROxUmOTswXjpdaGH41ernXlf7Wjia7d30usK2qos1uXh2TLPQmHy7AE9BRv75ExT+aiZOPqBfbh5gki3wGNtkjGJ9KOiZr5PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743199793; c=relaxed/simple;
	bh=3oqqDmVx7ChCZSuUo9DEJBHYep85euL+0HLtDaRcI3Y=;
	h=To:Subject:From:Message-Id:Date; b=uPbMUYPGhKRhlFynqagSKGBUi613eF4pw+Wrnd0jr5zIwML5CK3dtJe95/hsVcMnzHvVvdaIWDgiUZFIcpUjFtnso+tg0X4FX0LqNLRur6PUFPsfjHFpUxvPySwSlUYWRwcY5f7F07um9MdrFTKZYvWTWNj2PAmvJwPr//wJlM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuU11rCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuU11rCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743199793;
	bh=3oqqDmVx7ChCZSuUo9DEJBHYep85euL+0HLtDaRcI3Y=;
	h=To:Subject:From:Date:From;
	b=IuU11rCq7h14NybbOIq7BycxA/BbEN5rfDi0Sa5Ak+CW0Cn6NgMLXA83zG9kRipUW
	 pvU5RAUbGJ3do4+OUDqk5n6ldZXqhlWjSeuyC5Zi+xpvYwlv2h8SXJX5vh83gFOuNG
	 GgKjJ534LShfW1zB3RdVYe5Q4RgCd6MUGEkHvJ+x3oqzV5TKId01B0rDJ8H2qRiXDC
	 29YCjsjlByvDUIq9mxb7nx9UOBf9PLqniGV6cuDj7jVADm75m9iWbhdJa16KUQ1F08
	 Hnt1RHHdXRzTz60p+BIsB18hn9cwKMtqW2tDhFMCEDEbhtUnlKe+wx3Uf2I8AxwIC1
	 Lw/6jFBmi8trA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDFC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319979358.14827.874595930205389631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3e7d94cc54eaf0cdcf67edecb3abc75daec3a6d3549069809f5ef008b2ffca
Date: Fri, 28 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743199793
