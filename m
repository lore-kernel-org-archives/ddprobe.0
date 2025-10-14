Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305BF16F265
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760432994; cv=none; b=K0X8Fg9iIrR4ek/H2gASQkYp/Ly68B1XLBCY1nmXQ9PNlN2mf5hnV10tHKuQXnzZ+o5C5iXqCf0NcRgjgXJfcwA45ezim//qNTkLIEPSNrhQNq1tNmt76DKKcMaNsk9K6wtH541xADHHy6pfPKloQVk5cyCOnghzWaVUUCc99dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760432994; c=relaxed/simple;
	bh=iXckTG8x7JhrhVlb9QBQaqiBQ9Eazi68PFP4DcfSKZ8=;
	h=To:Subject:From:Message-Id:Date; b=UeJKek3cvGiUlwm5mFqSpuEISaSeKHG+P+GY8jrQt7N3bNoS/9EWJiL/RqhNDr9sai935ftwtRaw9pZcfbfV+0NdWI3y7Oq710LFGDcGWhoZBvmk5NZxdkHZNTtZkLbrotw9YqIvtIk7AsmlWLLg92PXGk5WAJ0WHfE+0XuqU44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+28ShYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+28ShYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760432993;
	bh=iXckTG8x7JhrhVlb9QBQaqiBQ9Eazi68PFP4DcfSKZ8=;
	h=To:Subject:From:Date:From;
	b=q+28ShYZVQ6W8qXG1xArpQGHwjODpnLa73EyEeDYu7bQNsjyPDf7iDXfWCzYZZpKj
	 9I7gzrmeZj7ovLcxdz4EOYzL9Nth++lcMjDg5wFZf9SPU2EGJJuEAvffPwmcGJfhOm
	 KAksP9VapvI2JU5rTGvJv4VH6lyo1SDd82HhqHUhFdw44CD6zfaNkSQ9CGiIfcn1+B
	 9cU9xjLpzTpLH1H2WQbiLbjnu01fRtjtATFfey+l5loXHYBlSgM4erTXK1GM8pZO3Z
	 LzD865R5l6u4s1Tf+j26hitDTD400e9Z5BGAd3WoaOezL+/CnC79w8ZPv5S/XA5RN5
	 4i1XNlnzn0vag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98990CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043299358.3901.387942472886026068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1dd8fe1575d1b4d1f4afa00acc24ebeb720cc1589319d0e1c1ce07b160bc3cd
Date: Tue, 14 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760432993
