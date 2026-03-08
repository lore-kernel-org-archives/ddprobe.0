Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2146E21A444
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772936094; cv=none; b=Ny1SOgFQFK0ity8nlGq2EcprEpvUzb4AsJgNRNet4VJ7FEVkHXczgOQNkpPV/X5Sa3LvE4m/k0TadlcnvrlkcTPY/hjpEsf85FsGTE4bPA3xfPc33ad2llP6r+0hpToqI2YWjhc/wixjN4enlgJVIXjRNZNrKJQ/V5nRP9FlMS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772936094; c=relaxed/simple;
	bh=wtwi1wPBNwnzmD47TazL2pLo7waZDts2LNibFvOVN3Y=;
	h=To:Subject:From:Message-Id:Date; b=RDuiOzUPx1LzKVh0WMYkVgLcywuzRKbO2cGX7TIDqbrzoOVe0m4zy9Usd8d+ii5h75bbqtiU7L+Z9LHYLqmnp+gjsD+aQ33YQSyEG/o15MwysmSr4OUga55x4zPci25AxdnGLgNzuyk4LGCz6UomLTrgYQ8jSYpSsGK9Dwt4eag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AruqMSIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AruqMSIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56AEC19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772936093;
	bh=wtwi1wPBNwnzmD47TazL2pLo7waZDts2LNibFvOVN3Y=;
	h=To:Subject:From:Date:From;
	b=AruqMSIHndTUW7nlX/VcgIgczTDen0ngogpwOOQKZfE9Q9/yiIP2s9Mqox4hxi1el
	 5B3TSSFtfB3Yu5h3/26PnMAnADyS24uL8hM9cTkXNPEu8ZpjSGQxHljFMXKimUS3bW
	 76TCpQ/Dhfw9hO1M9ZifTMM443ASYksuFrIGFARoJBtK4miiPvqHzG0qZqJfSF6dlu
	 KtDZ45EYRj9uKQZnOcyJKmyfaHMCVGkHCUoGSOVw8OdyoYeeuJ8C8T41OcHH3jZW8o
	 vZ7pM+S/4+wEEguQX6HL1URg9/uhrkxGem40jeIiYfVyMOO0FfNmpu0Sbv7smKxHOH
	 ss2sDzXsJ8Y3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2E8F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293609362.10382.466352759017023755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059fa1ec49a23e387a8169179e0aedd8d3c77ed31ae8cb761f28ce2e97ef0956
Date: Sun, 08 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772936093
