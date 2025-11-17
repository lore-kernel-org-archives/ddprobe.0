Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF2F30BB89
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763403115; cv=none; b=FyxSgCyAnnPNX54QOyDx6qT9tCy7shNF3uZO+iWxCIzSzAGaulYnIbi1TPGfGmdom8946NeSSpCdGhOtljhSlI31lJKjk9E240/UAu7QKEgKqFpizVwslt6lu2EyRK/VyA4fPIUldSZ7jBET5XayipzQo72hs9eA5jOs4M4NXZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763403115; c=relaxed/simple;
	bh=in2QtwImp/+87J+kHkJ0mgm0qG6NI2i+brmY8Nk8efI=;
	h=To:Subject:From:Message-Id:Date; b=dNS1swnnB1Fe9hns48mZ89jw1nhp+w0K0kxuq5JDiyXeZAVCBibty6596CeD3C5Ml/HQfRhZOO4iGSH3q79/Xxx6EVr4hjIP88tb847PAixv1DyGh9ls6eS3JIjJAEu89/irohVH0ZuZn2389Bf30YlQAxsA321fReHzeJcUIYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1wHFIt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1wHFIt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B34C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763403113;
	bh=in2QtwImp/+87J+kHkJ0mgm0qG6NI2i+brmY8Nk8efI=;
	h=To:Subject:From:Date:From;
	b=A1wHFIt8GI/fW7N5DyHoXc5ggN42Iw4Tymz58ZvyONAXYJzztWJBc3ePaU3/8cvVq
	 8jsaUHGi+5b5/+ynz1WKyb3VoGTsQYpIanWRqnHOQZTkECjNT5ZCvAUv5ruTrDKSKL
	 ugiQtXSekNdC8PReu8oRfogx4JSTFHwhuZiwWxxyorb+DhhOjxDOh/WRZPFTXzWojv
	 oj04LXRDOhqtOd20Dt31ESSlzpFeGEtxEPlot1oH4k7srudbD52vmjMhr6gbDOFKSh
	 HDhfCIoxVCXla/1mgU170vgkrHwtOko9VXYQ8aoi2BLSNsxY/3IFlx3WpfXvQ8lnV9
	 1mQSwpSr/rkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B92CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340311358.6167.3487785479352307101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2257f5f6dbda654235cacc3cef0eca59d7587efa05e4aa125e2b6a435e916f
Date: Mon, 17 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763403113
