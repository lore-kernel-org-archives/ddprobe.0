Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BA235072
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757565594; cv=none; b=TjSBxVZ67DHxOjLx+a1lZ3yojFGpkGEQTOTusKUToLwsBmgUOFvhHmFNTQo7YQl2T52PW5BFL4EuvJBNNLLX3jKlGp02AIH0c2GkqxRLzENDwbPM+VBGJRaAcw1SKTPTj7Eb5XT3HiMxVskF2Ifc0X3dgxGO59qPMyjuvwh6DuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757565594; c=relaxed/simple;
	bh=hKvz5Mb2AdM46cvnZTTyjF2abRAV+PyJzAMJDB8MUOI=;
	h=To:Subject:From:Message-Id:Date; b=bhGbPu0dBxJMOsbeNn9e/g8BQ3b35cRwaM8pxdfWOBrS25Sf3TRvUh8qJlx3t6tpfGvm8Vrg1MllWE5yWSU9GCaJHtrckDyYD+c/nyV3UYCj/i0aJ6YZQwFNOzbBhUcjOxNL45x7Uea/SNT4bedD2f5delXubGDjjiUr+5ATH6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMU2B1ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMU2B1ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0140C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757565593;
	bh=hKvz5Mb2AdM46cvnZTTyjF2abRAV+PyJzAMJDB8MUOI=;
	h=To:Subject:From:Date:From;
	b=YMU2B1ff5SHXlBkWnPXtO2hlT68dsmXYu/mhFxqwRmHDbMuHK03yf2B3pKG76JjhR
	 x8L742p9ejJF9FJm9DaT9YjiLHxFl687qErkFAccL5zt4c1ncM8X3nz/ncD8JTpaav
	 N6pXtR4MLi0lPlQq2fi9S5ZnW/UbKt6T109OIv3iWkB6TZV2SMOIu1fhNJq68K1ht3
	 jZlCRL5iASXXLU5qn9GovBUdu2QkFC9H5Oz4yZwBytuNd3hAKCFaQb/YATCaqdM5kT
	 fgBsp1xbcvgWJDBxo4W/CyVi2JHIrAevlG1jk0aFAZRtI5VemuulKEIUA17ZGnV6l0
	 Jcyi5nIr37oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21DCAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756559357.4176.8829325422732185352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9040aadc76ab4ecd8a6270eff33cb1b6d7554d4609e5048c78c94396445741
Date: Thu, 11 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757565593
