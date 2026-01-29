Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F3337B402
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769676234; cv=none; b=CvwgtppbjuyQRF/A5fPvDupRUqImxlTlFae8Uvk83XusVr1y8+So3al3KdIMj6i8rpDPUMiF1vsLXbxR7b6Yg5tprhdEwk+bhU9OKX3T+j1sEItP4t3QntCIZfab8KQHvuwUEPzX0T5Zy1VyWqFfcg4sCnvSNbJxBcgUiTLRhHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769676234; c=relaxed/simple;
	bh=kcshedsKSKpj1TGLj1C9GwnD+zSVPDwQfVyEbITIOqI=;
	h=To:Subject:From:Message-Id:Date; b=Q4sgxHc9ZCaw8tYjv894MHdcbjnb4aRSQwYWAui2+xaUy3PGMjgefMe4RB3QzjZvM41vginHYcsrWUwMSIg4Lf9VDrVNW4BFOyqza9I7+RCcAHhNHykiOtUurLEuJ1SfSSTAT9Ef/556laSWL90wYaaMmShjkcAeQYz4QcrO5YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYWhMFva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYWhMFva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4BFC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769676233;
	bh=kcshedsKSKpj1TGLj1C9GwnD+zSVPDwQfVyEbITIOqI=;
	h=To:Subject:From:Date:From;
	b=CYWhMFvanL7+Q+qCGjpNJhiOI5WNp8T1Kxv/iw6orjwgZvHq4It/tbztFp2mSfXG4
	 DcWURb0i32vx5nVBUXmwYGRlrTARTCNKT6ubHGtJ1NjyWS+iyLID9SBCQO7der4GJ5
	 TRHqeplV8NFnMgYDyNGNpSs6sbaGu6oMqHbVKZWG0LfFP7+wHpP2zxHyd12FE61HKM
	 6ngxB+JR5mDqfRZsQ1DFxf4g2immiTBMWjjqYYNdPabwZK+9XM1CUPI+WWicc2Ewkg
	 3L20SEfTfBnyhcURN53Ncrzk5orktkM9iWb7Iu6vAIfKXAUfak1H7+ni597RSXw+rh
	 Py1nYbivzCdhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7DD358E4
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967623358.7708.16520631116818469057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcedb1ae30a865947ae2bafcde5e00d201b7b77c637c4cfc16a9ef47767e46e
Date: Thu, 29 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769676233
