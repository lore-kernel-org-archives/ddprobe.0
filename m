Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033381CD0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705427897; cv=none; b=VZaTi/lHjieHMWyWCcsvmX0RPK33HwaxHpCv4lxUjQ2NHiJLBJuEtMh75/u3Me28MKjFML4vn4hl+XjeV8JLZoecXVIZU48i2X+X+SngSEaL+0Vwn+hi3QJkh1DjOCGxUXRZH83WUFjp3GJYbs0KHy+9E7QH8yfVa+NOZRl/DVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705427897; c=relaxed/simple;
	bh=nsxAp4CjL6vDV/7Io6yMkQ4Bh5QfReufjLIbBvQFZvM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=LY0Yq1RArgl7E6MHMBQ3mQ10dyJ5XmMMsViR2drOGw3nihOrwqSM9N16a8cr4dQUr5DLQIlmZ4urbEVzWWq9J+ZkhwKK7T6wDBuTTAzlRzQNJpCIhJaQcAwjuVCtTEcubHMWnILBiprENEVQ+w3GF1e5kc7Yz3dl65w/yq9TBTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7dDzNFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7dDzNFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B19DC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705427896;
	bh=nsxAp4CjL6vDV/7Io6yMkQ4Bh5QfReufjLIbBvQFZvM=;
	h=To:Subject:From:Date:From;
	b=t7dDzNFaa4AF33A1cQCtnOjZi3e2vnIRGXIGIZ0CWzyYzfrYCVS/ptLABcebsInWM
	 wVVGYZ1gz03TSd81daDhvB4/wfb2mVpu+ZeRKZL8f5kXnUw1wONXG0uOg8tp3ITlyo
	 1vcbK2aDfpayHsirxIV61I3lqHZaFFr/n5AdkDjDoHDLpCoOFNEiduzX5ngFkFuF/T
	 cTU0Si8MCtoUBXTHSbYNdcqHr1lVc0cFNp0QK1dVvnn83mr/2oxxe7dibYLB1oxlBZ
	 hDgrlJ7GCV46i27I5tM0hpmKdf/l4DgjWWAK7Dn4wiRaQ1rY5edFHZ07CxQ2HizzvX
	 UPcwXy+NeLUYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E67C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542789641.13143.9788448566839491645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3184926eb445ed73afaf40838ddd450beabd23da740e3f87744cb2f2b118bbe
Date: Tue, 16 Jan 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705427896
