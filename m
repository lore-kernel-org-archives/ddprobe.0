Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057291C07E5
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731952554; cv=none; b=La4gHY6l/S8Xg+za3yQ4kTil9KEeQNf/AswmgOiutrfY9vh4YLUUE3jda2P1eZhF2AFmCqVU8Q9X/+P3jFV1wgyal3LS0PbpuPf2yQ7ehbG8JoPs5zV34Pwv0Hvp9l5ELODLdzPm1eTkXcpF7tSkR+N4goC3AZ8bzZu8CMzCCEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731952554; c=relaxed/simple;
	bh=O4VFzhEC5zCa99+0XYNAsq2ZvIOf9mP5NM6byey3FEM=;
	h=To:Subject:From:Message-Id:Date; b=eukSqdhyl8syfAxz0hOruVwu3MsPEDmQCU9fsTqwEKsHhsEmlRwqhF/M76WgZUwmmfc7NCNr5gaMrbgGyIB1x1fY9PoQX00T1C4BaVPNqAtfYAoFv/DThujYw/IowEdsv66Vqj5/NvtE2WE6EmKKQCrhYdzaKCGoo5du5tEuzwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pduso87y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pduso87y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A307AC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731952553;
	bh=O4VFzhEC5zCa99+0XYNAsq2ZvIOf9mP5NM6byey3FEM=;
	h=To:Subject:From:Date:From;
	b=pduso87y3yr3QaOf3INWbquBFFoLm2QgD5Qg4gS2TArs8ycAkD9AsMOX4pgGLjhbU
	 82gkzUTIlE998QFELXhV4YQUBw5YAX+Sp0AKbbKjvOkKvtoOS/L/dM8ZQTUQ1/37JT
	 1leySRnynU8QgoKdxLzsOxSAqEn7J3dBmkkIvk0SobJ1m93WjuaBHmpT1Ek91XJlRB
	 UhFjAnqRCi863G4uwlOWGuLmIpPLcQz935qhzj3ZDJikFDHUcrFFaWs3mekZsL41LX
	 hEGoPXnP0aGIKE21X095YbDCffp/61u20TYwUZnvmGwZE/UTX9o/xYi581YyodEbma
	 tjxGO+P7aHbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1FD591AB
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173195255359.29037.5619595079873320961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0c8d506271ac1b3304480259510b2c5b14098f902429b28613887f61699dcd
Date: Mon, 18 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731952553
