Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2182E7F00
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750945794; cv=none; b=UDfrk5NmmWvulbK2dqRXnzOhkcfSK/FIcufAR+TMrpFej46NL4KXKlDlJFhGoADA72bSi95S3hDNt7diYL72Pkp8zePf6jsMPFHG/vuGTQD2WNOSOkJWLcVBML1vfXSxqVG1GHPXrdLdrAk+KA/SU8OfkuMut/lMVK1bPiQUSAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750945794; c=relaxed/simple;
	bh=K+m1gruizK2p930q4TRgYrEnAr4rS8pnkXGX8hmFx5g=;
	h=To:Subject:From:Message-Id:Date; b=LqTrEmRne07PNn2xfhJ4WtZ2QyWg5CYdXhld7e1j0+hwd+1bJ56FadMXxq1gEo1JBNVoL4RBIDr0dYOntpMnFIOu6g8WJ37WMyqqb1gVTpKxQ4Thpnm4evFh+eA+aFN2Ozg/F7oa8FFaPPZgcw09gpkIW1UwBF9T3YANNOR4E68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtmFLBaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtmFLBaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D30C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750945793;
	bh=K+m1gruizK2p930q4TRgYrEnAr4rS8pnkXGX8hmFx5g=;
	h=To:Subject:From:Date:From;
	b=qtmFLBaz4B17AfyLW1yX2CglqArfHhc4VaP7kpR+0kaf5Rm7jyGIyo9dgajkXf7dL
	 h3XyYI/2BLJ0eJ5WJQu38nR5ShoM+1hLuMagadmpVEFtDuPQAVk9Fuil2TIbRvOskJ
	 LCgfx35apeAJz6738GBd9S8Ijfglj9HfxV3ZkCOS9s+gAJV35rnRVvMudU7mpSZ9gr
	 Fdp7BaTbhex6AW4L61ZTs7b0UoIo5MdQJb0rz5DplvtdCtE8hG6s7iFyeDyszz379Z
	 BIj55GTUbMDocSIUS/ENeUjmESaXqOMO/Ugps4Bv5NOxIFqqVVVyMtTj+2OqJmSf7b
	 erNF1kuaaz1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91223C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094579358.4195.16795847793736892780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3601b7631cc070c925a7b12c668263d8acbbecaff15262b066f58320ecb76a
Date: Thu, 26 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750945793
