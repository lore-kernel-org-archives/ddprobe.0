Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557DB23BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475463; cv=none; b=eNjgGPOdbuFBVhN2k98YHE+OlP1vRhptDE7phy4qy9wnY+39lYXYmTDcAHVbtIfwK/JMdLpRtfcqRjsvpaLgKzZo0BPuzu84MCOSkYcCNMtGRlPLB9dF9lBE5yNWk9qWhYJ0CZ5uYru0Lb2cJrw+ybSLnGBDi+xtB2CoFDwXYSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475463; c=relaxed/simple;
	bh=qxkkvvmFwlVhKs49vG5/2rbWl0K64UQ1iuEIV9rzkHY=;
	h=To:Subject:From:Message-Id:Date; b=MdL1cJn5GGKpgJTffoWoF7KS4x3dmFZjATCVC5LMKUgb7FjVqeVfL056+h46S+kdFJNyvBEdrRKMxeLG7MJo7clmx326RSdmL8ZFpPUz07pZiTXT7+nE40l0FUFTPlKflI1kNCYU3RBxCNk0lXssvBMtgepCLL1qhac/8zDvXzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTFOx3qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTFOx3qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79B1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719475462;
	bh=qxkkvvmFwlVhKs49vG5/2rbWl0K64UQ1iuEIV9rzkHY=;
	h=To:Subject:From:Date:From;
	b=VTFOx3qywN1g0krMZ6iqs4GGVZ7FxhqOt8tEdMn6Oi2hc959ZFZ+rxvyEBvqNN2tj
	 cLjN/17b9xkYERZTvhHU0eOOuJhMOV2FDpZshwYWW1PNHh9c/EoZ/oFCNFG4QOMwPB
	 IX41iXkNQ9SOEcf7bVsQCZvsVpUL0W1NC184RnnZPo7URSofGY6pi+jJTL1FN2tqlq
	 gtGXncuGIBpo60ELk7QEDUis3zukAW/9Zi4/8mrlzhhNR4NXb3z0GBTdJIsyKH3j/C
	 ZZU0ao90Mu6smgjEppUsCyisvyYhGbChrPCViLrEqyO4o8Hh8H5mqHULddMpv0UuQp
	 ostviVm2alehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2949C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947546278.17289.4274493362940375687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d5baea362018bcca8b78acd2bebe2acd703e3ecc9e968e6f0cc44ce07acfd1
Date: Thu, 27 Jun 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719475462
