Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033B34C6D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774952094; cv=none; b=UBMwsNk3s8E9Iy84+99OdyYg/KI43ATpYVxypag0fj7HZPBUlGU4XAUHiFvXLBj5B9v0bQxNbqUH26fVIpySd+8GobZ4wxKvUnYNaa4Wwget1j30Uk5TFFfNbouTDmExaPIrpHU7uR+jQ1Xyfe6WFJrZvKhbZRzEk5wtwJWL574=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774952094; c=relaxed/simple;
	bh=2jbAawUgX9i8dBStNbaP7TsPgefickXG8K7SOp7IXAU=;
	h=To:Subject:From:Message-Id:Date; b=OEp2qphJk0xiE6OYcKcyOOuQy4sQY0rxdRYNnhleaKTliHslH2TGoE3UQlyCLj2qtuEucDPLFSEPMTy21QxZYX7tSZcmH9yeoQbSIwTQ2srItlh+oFysWSjttxRM2qaLjqZlksZvR0bXnvgdM8H9Ep2Y/qFgHEYHlodx3A0K8Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utRNDInE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utRNDInE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A5C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774952093;
	bh=2jbAawUgX9i8dBStNbaP7TsPgefickXG8K7SOp7IXAU=;
	h=To:Subject:From:Date:From;
	b=utRNDInEfCp6lWmdPJxUYZhJT+3kfmgXyPpUeiVVgw7c42cvib5LipWqBzNeBxNHB
	 N5DYzwY+gP4yAv30raYC31/CT90KZKCKnPOIDK/UBjKKPCHmuvn+YoQWJmgXhd8L/s
	 ShWmEiQPEZvNY0D3p/jVIvPn1ymYNeE+rHht8WcxZpAfAYXnjNUvty+sdRZHT99GBl
	 Fh08AeEV8yNFP6IX//QQ3HuNKHj5nPuFFWnlzxzxr5k2HM28dL1sq6IR2d82OrlBw2
	 UzLLWeSKlG1zIZC22AbgivNo/javxGJtkNDSz0us0ajhU6qWF6iBNG99vpWubYAIw7
	 ciIQAzXU9y0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90704FF60FF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495209358.2805.8697547366363270557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c7e0a167fc6bf88b2bc931db595dad70e72b130f043741eef258bf84f244cb
Date: Tue, 31 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774952093
