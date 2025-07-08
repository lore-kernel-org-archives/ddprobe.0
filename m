Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CA02B9B7
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751945994; cv=none; b=kyiGD2ncKY40aHYsWPW2MRGzGZrrTPe1q7EhQsy72WZwbdTWQXY8S/EXAVQQWajiKXlHALZ3+nTZnXoF9HAyU87o+zSNo2fcWt2uqLvgKW8zHBPEcBnmhkT927U1CFyOURtilJ81jOfCFizSI8WvJmZ47W9ePOoBOgB22R3Ph7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751945994; c=relaxed/simple;
	bh=2WW8pPUaj3RmMQkmLoygiD9la+psVoOn8/W4boOWP0w=;
	h=To:Subject:From:Message-Id:Date; b=Il8EVwAEN4jdk3nXSnWcx4p4sYag4A++bXhZKv1yEVysMxPJefqUeXhn3iy6Kl8U1v9iTdl1IqNd5SeH1njABeHAE4SCx9uLHXI/oei9Z93loS2BYE5k0tYTRm/d9KHBQcDgY1U3GT4eamj39DUk72uvpNizu5oe3tFwVuQM+P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABtDU//Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABtDU//Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A150AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751945993;
	bh=2WW8pPUaj3RmMQkmLoygiD9la+psVoOn8/W4boOWP0w=;
	h=To:Subject:From:Date:From;
	b=ABtDU//YFcjI754np2ooV9cUS6LRLIKYlSCAA2izsaMu7SCEa7yBWCK48gRwZ8rGI
	 vmfOTHNVQcMKH5bfBZKaAaC8yi7C1K0IeStvJkOpTajVfKAjW+M0Ps2XnQUPQ8KmoT
	 3X63jfNg0VF1AILOv0vPV5TYDvfRrvgyYNeAB4RC02MKN1SXV74g4MIEtSi/+M4GHa
	 tP4G9aIcObLvl1Cz62B43+cb6ZfGe6iRCcdfkE7LnKtpJwLFDoUUqMCsPNcs5G1PIp
	 WVIebtGpafmqpnD0K+Ky5KDtlPobA27XYOl/L5vI+UbJdaljwrxTikGxFnBAfhQvZz
	 yzbOZe8IahprQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5ACC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194599357.8920.5201183138146072973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e91ddc33fba26c64924b78e5e73eb761b803cab4fc0b54ee487b27b873ade8
Date: Tue, 08 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751945993
