Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454216BE3A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728510954; cv=none; b=F3Aop0qBfZAp1rxse/WIW+c7o8h3ViuojIiB8muM0p3uWxgIQg42PAKc8qVU/t7qSxAzq1x4xfKlSdJCxMktcC9ROXRBlg8uSCbeMsZQIx6TADtxFNjw0KlFb48kQD3RnojzPtp/oFrLpBAUdYABJjrmh9HelGw1JCaWfn0F8qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728510954; c=relaxed/simple;
	bh=Hj1JZ4LKI46LJ8nl455tqOPIc7+9Sj0gyu/UwgfpUmw=;
	h=To:Subject:From:Message-Id:Date; b=BfDiE/2goWB7IGnA15Ne/1rr+eZxz8dGsl/kTSkWeHW6zUdAI9en2Lz0gZ8xCgcNT08sevkNzzLOqKdungIGZ7lWLQ0hmxnKT+D5c6H1DwhNcwUfpLWeLNjvdtlgEujsVQRKKYfHcKI6sIzzxRiSy3D8aV3lJ8kztkbAbIoSNO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LktZoDFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LktZoDFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4211C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728510953;
	bh=Hj1JZ4LKI46LJ8nl455tqOPIc7+9Sj0gyu/UwgfpUmw=;
	h=To:Subject:From:Date:From;
	b=LktZoDFbsxnnrw/GXvycN5qMJPrnoP54gYzXzGQKTPEF6Q++pzw2gPHdoeJp/8g38
	 xQy3bd9awHUGAQt4Ris6Zx86Ye+KAooaKkGBRLMzkocb31EA3xvnXTpZ72mivIpR1z
	 rq2FSmBc53DRRhSp8K17NEya68Xy9QeppAxEqhSp1E+yk7QKy2tnzVqACpPG2VuhSD
	 ifHCtOBiLvCQuPN1zz4UPh2Zo3pfOAELGEM7Sfd/qhCe5U50XZyS+4uJfurdBv06b3
	 tHO1Ufoyi3u0DXrOXut6m7BmcqfPUSUFvl7fw1mTuSXY8ltqTIyRgrXI0AUe/wKbYK
	 AZbHUey5MhNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391ECEE356
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851095359.23367.17937924295410621914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1520874460ff2fb61844a5b11a038d46f65e437212e268d27a397e15517d8a9a
Date: Wed, 09 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728510953
