Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D96914293
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726906554; cv=none; b=EgI6Mq4i+RNOSm/9y+wovj2S6D1+rJ3ifxYZjjYLKbAHbOLLKlRGsaNuOgq3FRveNe/mrNhkiFHLJL9wmUBytItIk+LuLzA2UWEr3gZInJkf4My8aQn6wr6yXliJiO2KlyktfaEjV8WR9HJ1194hnXaEOssrjRYf6He7DUTh4u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726906554; c=relaxed/simple;
	bh=rGj5ZdYGz1nrdxJL2kWHmS+Koh5IKxSluulwHUZ99Xc=;
	h=To:Subject:From:Message-Id:Date; b=ZpECNiLGE/4TX23HC60e8Z/T1aut5XfRdtDgCRowJcGNbcEmevICwV2NZD4IH95vPs71lMkRhHwM7vdV0yQlbXatv9TsaIrkd2WGoZwCyQRMio2gb3m/R/xnm8dWz7PmnZPALpJp0iw9N7H9utosZfyOmAGZSOOhUAaSleUGfYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+rMpIzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+rMpIzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B055DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726906553;
	bh=rGj5ZdYGz1nrdxJL2kWHmS+Koh5IKxSluulwHUZ99Xc=;
	h=To:Subject:From:Date:From;
	b=C+rMpIzsWpzoI/OuId4Izp2VQUZlvDMgV9JQUGwN/1YtvPgjD23VqpkDNnIUdOqFM
	 NBnFmNnYA7OGMNZKHHOxU+gS7FBV4KNR5puI5bRf5IVb9G9A1pEzfay3vHbirlbPIQ
	 9G9/jTQ+pSbX4SH36Vc6B1FhL9cmEJ36g8yMpUUj+V9wWwln9sGJJiHiC/TSQ9uGhA
	 de0VHFoXCwL2BDMGQdQNJnqIRNHnP3eHeSJjZhFrJ/G7BPtV2Cc6AAT78qxmrGOiUo
	 OVtppTzgh7HrmgiOyS954OyTDFHgGCQzgEKaozqzczDGUO6yW8m6l0IcKMAzmBKaI5
	 B2OkhcVp6mW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4EBCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690655363.7166.2545401825148438630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75fa1d3cfefca59d2689a7196eb2f232d03d8df73b6c2d797d122ee793a2f30
Date: Sat, 21 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726906553
