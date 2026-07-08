Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCBC21CC58
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783535314; cv=none; b=baeuiPZCtuOuYBQSGDn9cauROdjf9SEYJJ2jrinPaquj7RyP4bwuS2bQc+TLocgIjpsIEFWnIoPJrWqugaU8/AvheJZfVwE5+BEvopSyniAuttP3YXBMTvqO6BHyohCedGva7T0ZdRT1sQ3MqfqzJzyTrA0/XUKq39IGSce3sAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783535314; c=relaxed/simple;
	bh=dr7AIXFioQvgD8TEBsn6SdD1MvWjfYkJK0dNyJ82aE8=;
	h=To:Subject:From:Message-Id:Date; b=oO2Uo8xUUFpNPSnf322gtE28zh8muO8zCLF+wS7lKAPBEJomNwn7girxFys3S7n9mx1W7N22Duz/0/m81+hO/8b0ddxOrtaDOmBl0u4hY3zLJSCa5JHygvLpDt4l9CnnFQHScD/Moai2F3N0zL4kKW6l3sjrXvpsk1UILb7Wlo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVKDrRCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVKDrRCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DA6C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783535313;
	bh=dr7AIXFioQvgD8TEBsn6SdD1MvWjfYkJK0dNyJ82aE8=;
	h=To:Subject:From:Date:From;
	b=YVKDrRCJqFI7gdqNadVQEuhzuSGhPirdQIP4Yzy/Fv5czFWNbvXN3XjeOKQZqXudt
	 JnFeZr+1pTtFz2oTeOhc6IbxFEdRjh3ZMzhOC2hKYwTfCNLCFXiYbvddAOW5ZII0NB
	 0lwNxRO8KhvmV8fc2YpphO9prp3CRALPmV1vuh9JTZNM1L+IDMyn4kGjRRdpWnK+Td
	 HvAhAreEvhNdVQTGycTBX5D+duvyvBbBiZeYSP0ZfTICM5iVHOzIYthsqilmV+Tg8E
	 hUkL5BzHEDk999wrmLrRVrEsTz+z3E1UbjnOUKvWZIF4rGrzkGaq3vFwG3mqswykJZ
	 El2QD+9ahH54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86E6C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353531368.12407.17526897643838638229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a22777f47b5fb4c4d0b2714b3d077d409f1354edd8e3cf87df6405426705066
Date: Wed, 08 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783535313
