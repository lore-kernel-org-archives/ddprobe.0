Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5C07E792
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766785434; cv=none; b=YXtL1oSqGxLoDsLqslwpQQv9Ze7MYvaBHBd19PRQ9kzKR8a+mQYG4sIx5SllJpPwFjU8KChXWuEu5l+83wq0PSSrfHYh8XTrzfUgrCS8SYyliYqQD1LY+QprNdqRnsolWAoGtS4avB3qruEOZ0yYFAXLxljC3QXYzpBNtUyVdM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766785434; c=relaxed/simple;
	bh=gc4+Px7JGkIR1RSJ7eUDLTA3IyjGZncfuHDNJVjjGgA=;
	h=To:Subject:From:Message-Id:Date; b=gPFAx/8kngqDYcjFR/bA3zKCYeqse77by9LkRfV/asY5m8cFBJkJL25Vhn/BU+Wyo8pzHYrRZXN5E1eMIqd4P+78J92nibB7j022Uqf2+Isp2P5GavjzJEna65dyzcrLOOt1YbFOwuxpkUs2MUdt2cRensyw2lsuYiuaqR7zSAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhgVwgWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhgVwgWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5580C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766785433;
	bh=gc4+Px7JGkIR1RSJ7eUDLTA3IyjGZncfuHDNJVjjGgA=;
	h=To:Subject:From:Date:From;
	b=QhgVwgWoBa0g2OOy38yRAFT3EWDJNllnKW9tfLQt0J1xDl7a4n/9kfN0AEI5OcKjg
	 hnREgqI86RDIySIrS3sCdAUMuEd0pAw2qbpLrs/UuAO4QfueRm+nS7HN+H4wmp4vkZ
	 hrffSzZQYBaQC+3QwkKazr54v2col9YZw0PHOJNPIjLwktcIE61fyiZ4Ir8J11tXaG
	 DF6AAJefa5foZepSA8U3aR9fsa5d3bMkkIHb/CXTgsGSgPhFfP0yo7vgOPWj/EyfTx
	 3FAypO2i8ZkeWNGjj1cjhmZd/pWgnbmrv69iOalzUz4iT17oJRMSFIjFMqqU/s81c2
	 StCSuupLwnk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93088E8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678543359.9676.15131793531115547741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb452ba1ee60f8cabe1b75f0df784a671eb485ae4059ab9e6c695d3a1dc9d781
Date: Fri, 26 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766785433
