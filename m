Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E7523D287
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744639794; cv=none; b=LueK6sn66i0JYFoARUbe7Fem4DE3ox/jOoEj/g5p1LIr2mBbzDmPMItLhPPfGE4woHuziiiBeA+z5/SanWhwsUMeLfEEOR3Rako6nOa6c3NADsbglV0p/SOiSg8VFTavAvO4BSYMewxtYXtgSBJp3Dk1N6M1acpInlV0RBwwbsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744639794; c=relaxed/simple;
	bh=pl62ZG3Ae3SGDMoM2gwAfwK3YFLNKtQswNmirrLbQ9I=;
	h=To:Subject:From:Message-Id:Date; b=JqsvJjGf4avJZZYPsD2WaV9AfFreHdUuY2OylIA4AHRcemfMkwPrKAWfUsdfoH0qQvM5EnTecEWFGQy/uNw7I/2eiRk4zpdifhI9Ms99g7y5ycQoQoSHeOW6BtHSu2Fij3+FHhogaOoAG2hqO8pMgrIiAMBbmj8Y1SyKEccW+pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9PaKFB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9PaKFB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88BEC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744639793;
	bh=pl62ZG3Ae3SGDMoM2gwAfwK3YFLNKtQswNmirrLbQ9I=;
	h=To:Subject:From:Date:From;
	b=i9PaKFB7aiWLz1PNNY3j9GtrGMCDf7r5siDK9ad8NRpROoYo7Z4h3jCZmy7y48eoZ
	 fqf7ufKeg8ZJ33YExI/fAPzilO62Z0ydsJXerzqmrxSuN4j6j5eYYpehdFn8lsxpNN
	 lf9iQ63SuNZv9ICF4/UYFGIh8/SeIXCuFPTK7uQvpZSVJ8sOUmErLzQfzy4jZcwJh4
	 682isT9vfVRfzoEo6QhxEhGPZSzfR/Op3h2gMG7Po1dyXepTl3yIk5uNE/yT0ADiue
	 owBV6Vpbe+arltu8pQ4Cn5zhDuInKofKtg0aTwoKuWcsL//Zam3x2nJTcwFqXMUtFv
	 ytq5+712pgfEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A811CC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463979365.30066.9598319888738085433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1cd4e0ead3a35f5177ba54c2bb24cb5b119f2ea5638d0de9243ffe10481ad6
Date: Mon, 14 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744639793
