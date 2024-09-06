Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5401D1F4B
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725633954; cv=none; b=kV2ltQd6RtWRvTXkL0AQNWxquvy6gZ4vvuvcrpGCjtwtiNiHZxxgd3Gj9NtzIyRY9f8nMm2YekIB+bZsWaua9bfjtWTpQPCKHK4K9VRpiyDSpNP4YzXu7nB5B1FPfclvIfGvZAKCeqvgPFMVwRpp/DFBUh3vnOlOEhR05XW4r1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725633954; c=relaxed/simple;
	bh=3UL3GElXnrxXGv6OHwG3gHZnnNGT/7pTwBjHS094kEM=;
	h=To:Subject:From:Message-Id:Date; b=WD2GpCibPTY/yPyKS1Dpuz2eOWyGyibSzTacq2X+ls499Oghtq8KF84NZGkf7TjAUi69mMqx5y0aYhVCQUXmDu0YDfzCln6oiC+2AAz3DN1CCYjvdDjEr/8bQhlQqPsD9odwGDJ5JWlZvnvFv4Pry0ihX7XTbsEMRR2BFXYW7NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rq8fI478; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rq8fI478"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38AFC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725633953;
	bh=3UL3GElXnrxXGv6OHwG3gHZnnNGT/7pTwBjHS094kEM=;
	h=To:Subject:From:Date:From;
	b=Rq8fI478WHbJMWbjaSamb4ZOT0c7CMpHEC4TFEVQ+Kk6AZ9J0VykdSMT8onachPCQ
	 +x3bpacj2SG2D5Dweq9xod86J47QkrexB4FK0aHVssIC16jATIBOWh6d0JkBMjR2IZ
	 Xkqm2ufhqCX8ig2eXwUtbsc8cfeAoJZyuj4oBpCxKeQg8IIYB/JXAT+PRbY8Wsx7mG
	 SpioG9uwpx1uAaT4eHqsMeCN4dAJ74G0h+Y0jGqwklaJEJzFrn8sqmiE2ymDiKEhiM
	 +mmsf7sdwz2IU5h5zEqtSclci1nC2HVSmqHdf072/nS1LYCHlk3Er4C+L6a5uKTA8w
	 OxgdqkZKXG2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E99CE7B1C
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563395364.2314.2534800389825033704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e4a6d728704558d9d47d7b414337ccea585c2ac1173e1db82c1006d52830bd
Date: Fri, 06 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725633953
