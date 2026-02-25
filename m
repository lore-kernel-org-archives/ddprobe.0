Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A8F3D6684
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772034294; cv=none; b=eJ6lqtEAFooDKnIPuVA910kgf4ZZh/QkTQVFswkQuQHTqk1j4sOlHK7sMkH/AGmVTttA79T/mrcgxlxYqVyzEbz7qA6w8AL8KocjYSmV1rDjy309jPbD7xEpEfgQymNoI8J7HhpJiLVcqbfUCM4+hMWEX8UP6HEUkCSXRB1MluI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772034294; c=relaxed/simple;
	bh=NbNnFsXtVQyPjfKGNc5nlGLL7H2cF69SxxmsrDejvp8=;
	h=To:Subject:From:Message-Id:Date; b=ENm0M4dVSMMGHwtNhYU4QRcsspMVZf0zAu1FuVXl/6vPc+p4W7MMWDj1MVG2eDbY1q1zXgzpaesGSebKzhvwHt3juSBzEkYtIIYL5/Yoopp/8rMpI7DS+oel84IxArZlUYC+cylejEd+7wHdm/gLizQdLUkvmtYuTVK6HrYzMxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf9PHYUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf9PHYUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE7DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772034293;
	bh=NbNnFsXtVQyPjfKGNc5nlGLL7H2cF69SxxmsrDejvp8=;
	h=To:Subject:From:Date:From;
	b=Cf9PHYUJPllLxo/uFoUrZYaE8gCyaCOAlzRg6pbKoTe8Dffs/CDOlG5E7g4Z6FoPd
	 m1GaZcB/BHJhguI8D0Z8qhyti+pPNy+J+cFqjde+K58lMh3D4olsa51E+EK2dTIHkb
	 4RpQClML4274D5pGd/mYMCoo/76dK3CUtb6DKNr1VehjlT42twtv0ewVExmj6jxsBz
	 7I+zxJJulaHDFfKiEKm1hCYesK7IgWgUWS9A9Log8avpG96YKmQE3FgcFx2aywbGk5
	 zF9uxxp7R7SDD3fcly4heAzM8xv3eDgemltPpKMwjizoBW3g43HXd8L4PiLXk84P0l
	 DC4UxzCyAaMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E4FFD376A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203429360.30576.188097566529973501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6ddf85e5d2f8bac8d70a57a54990b3b7cfcd8b52360515af399b7fb646766e
Date: Wed, 25 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772034293
