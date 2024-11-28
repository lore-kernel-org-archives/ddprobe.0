Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365241C2457
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732825554; cv=none; b=YXglxeyMH3jqi9lcKXgRN+w1oQdwHdrkUrk9oXySGkoI/LHbocLICm0n6PLdy2Sepes9sGPqdn4rSmEJvfD0taIB9EGorusrhvoFPDARWMSjdcepGeKrrVNjm/qZR4GqmsOCLs8RufMutagIz9hJvbbk7HPshw6Whp8AT4DzsUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732825554; c=relaxed/simple;
	bh=+WxwslbepNXNUL1rgVEWCVEWAcE+w5hpaFBfEsauFpM=;
	h=To:Subject:From:Message-Id:Date; b=agzY1zbgQah2d4C9o4o3VHBNWWHfTGCXV35frbR3Zsuq+AFyxrbA8JVwGgmw1/aDhioICGDiGhSZ2GLKz5klPYBvGrdtDesLKfCia1WkdeHTf+fRjNWECK0JCAEK0+Mos/yn5NUs3BunoHMOtSm1w5zBM7rNiZ6+Xe3NIEX70Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR7Bx+cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR7Bx+cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D75C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732825553;
	bh=+WxwslbepNXNUL1rgVEWCVEWAcE+w5hpaFBfEsauFpM=;
	h=To:Subject:From:Date:From;
	b=TR7Bx+cjk/D+0aMP5Br9hGOQHLflvpFo1PGYE0ndTf9ooHxqTmmkR4PAV4V1MIbjx
	 HDcWE0HMeY/FO6mSFl0ufAJCCIgiq1coLGF2di1ny5SdJJt69Az1izNXBbNDWe94Lv
	 gWaZRw4lztgk405yr8UAqbv9qUcDmuxUS8+0xlwzByjRfjOaOVIjrQZVVgzQ9SmRtP
	 SRONlySMqgI2vmw2siL2lY0JAucGbumXmV9SWahShlewaKF7a7yh7FkCbvCIGl2XIm
	 Jenxb6xUt5akcccO5Z9/XowkHpgeoF1IfOEfo0w+xc9B+45cXpgaY2K8XkOkS1UAve
	 i7x0wb7MKVm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DAD70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282555361.25947.244727667692726323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfdabcc336a4883b730fdf7808e450f8e41013f5054573e4807b9a617beb1b2
Date: Thu, 28 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732825553
