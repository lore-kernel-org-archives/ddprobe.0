Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4B76FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790219434; cv=none; b=qvw8GBgaA9wy2Jx2cy8zljA5iCWmxgztj9c3ex9xU97Xc9l1PjoCIP7Vzzx1fdG8sZvf4tgs8xwBZvpEWlzP0viyxkjU+XVmg1MshnWx7qeovk/4nblcjyJ0Xo2DGcUrRfLzUubUN/NTTcUuFV01kIVY3LBsT7M1my0VHjkqSe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790219434; c=relaxed/simple;
	bh=4CnaKMEClhhXDZvL8dQ7gL5c7fwk6TFgMyukeAh/ZdE=;
	h=To:Subject:From:Message-Id:Date; b=C/it47VTKBowizbwWzC1upzL+srUguRo50WIBAs55XWOb11J7lLRjh+OSfs5HAOw+4UXJAeIkVEX3nfcXqjMQLWkdYK2KsB2JOU1jR2lEh8CFR068QLngq9H4brfco1flCCS0qmfdwt5eyoSZQnN8Cddk8U7CGNP9tdgTR2auTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUg4Adfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUg4Adfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4827C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790219433;
	bh=4CnaKMEClhhXDZvL8dQ7gL5c7fwk6TFgMyukeAh/ZdE=;
	h=To:Subject:From:Date:From;
	b=kUg4AdfwFvKClxhZFyO+Gprwir7Mmey3g6+2keo/4XVlvLOHLGU+83KadKjLeHIbF
	 8UTjyNU1y8oc8c7LF2NzFbIbTPOsnOxXlfKAD3XYTsY8jDtWwt0ylQbt75TnRWoISa
	 xtrAYyo05lMXgeDUyDV30ro8t6pyqxwNieoYh8sHkMvEqS7NXJ2fB6sypL1LVEcXT9
	 mh3MMahibt6Z5LcOzJ1WPxGGTn23474nUsUaTVOijOaEhziaSOocI4EQdb9VkNNtI9
	 v4dZgINPDiJJXxsFgZhXi1dcQJlZxDHnncDZ+d2EpqZa09wMI95s+NF4OlZgynEmpZ
	 VMV7YANtgCFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAC7C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021943373.9604.13074171955761502932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f110c6c093c874a5cf9a6321416bfe6ba49e6fb5ae4ecca42493cadaaa2352b
Date: Thu, 24 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790219433
