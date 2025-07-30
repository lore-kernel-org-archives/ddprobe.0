Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123D1C7013
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753894194; cv=none; b=NaZRyeWRXbezwgpD/Z9EFUC9QY03RMWMo7GntFHv0zAE+IulNxsntljox7840J+sIBQX9YVMqxaUeeItbUdDfSdCDEnH7UvYzeGlEymEwida2l6olJeEqs3nOY4Y5fBWqDfhoagteC5fHOt/TfNH6gKRVjl6+cEVmY/tQfGsptA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753894194; c=relaxed/simple;
	bh=sjYH+NuHXq8n/DkuUWN/iyLEvEOZhKAdNl6TcD1e+Gk=;
	h=To:Subject:From:Message-Id:Date; b=PaaqPoD1nBi+LdntGBHAtxk/uU2YRX2IMKcDIAp1apZRCuJpYV56vrMc2PInqvR3av12Y9z0M+grXKllmZtLaEFbAAHcK3TmEi2no7NFck+UIH7BQ6VxbpnnoamToh96JbzOpaJP2i6dOE5sXP2ldg+oZCtSkfAmugypvT3/dR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8lGzPHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8lGzPHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753894193;
	bh=sjYH+NuHXq8n/DkuUWN/iyLEvEOZhKAdNl6TcD1e+Gk=;
	h=To:Subject:From:Date:From;
	b=L8lGzPHMgucsCrWTvUejCOTX1PEKz6DySi7TbAEbZyUF75C7wasNK6yLOqFoI70Ks
	 P5guLFWApATG/V2N6q7991sTnMsMJH5Z9PkWyKn1Hi0Yr10xyuCSeiRJaOsIgpA2ig
	 DEEtQu+8ahotsCpHRjXs/pIkO2AYPmVIJeeGLykRETWXyCD8STCLWyLPHPs2mrTJIY
	 vEhvwGIBYV7NDqTejTQ5Kr6Tery7CbZFKvfP05lqD7ubAdVZr6zEe0KXHahFByBibh
	 /zbk84IUemRKkzQLRXcd7ufF/tY/5kKwl6JKGmFXBZnecv3o80h8YVhlQB6fRdjvMF
	 yymayDzNuc+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF72C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389419358.31388.6327348290475348764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa5f2a57fcd819c9bd0cc906486c5deaff54e434c3777c62cf16ff2081c77eb
Date: Wed, 30 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753894193
