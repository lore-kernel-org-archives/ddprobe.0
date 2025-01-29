Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738FE191499
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738179955; cv=none; b=qB7MsiiVPEYYOMjf0pn3cJ1uhd1eDcbzEhLin/Nem/Qknoy5cBV4C099BSKBN80bQqfctVliIuvnO9V71QOx4KzN1V8vI252Ax89VJBBAiWEvFyLg7Q272PdO7sGCJ5c6Hz5xsuGZrNBMfVRmkHSpOUW9wG3dBFWpDUBJdK1U8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738179955; c=relaxed/simple;
	bh=GT9eJbOUu3t1mdTryt1H4LswpggoV5YTcD+MqiS81Zo=;
	h=To:Subject:From:Message-Id:Date; b=QYwy16o+SRNAQjfrcXfzwTKizSN9p+HX5C7ddODtu0ZZkE/HZ5EBQ8CwwSdz7Pnhg189ghGsxndffv2msIrjG7pww9g3yRnvxrrn3uoUfYOTCjb6iBRqE9lL/PNh6y2oJGWjTtnGVShoenzUePulq58GSjAhZTc7QORfQqxDUEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvlMN4bF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvlMN4bF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEB6C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738179953;
	bh=GT9eJbOUu3t1mdTryt1H4LswpggoV5YTcD+MqiS81Zo=;
	h=To:Subject:From:Date:From;
	b=BvlMN4bFnG13K9ITAX7ITrdrxZjGN6wh9XSv1pj7lQhHLEEGwHZNjytB+e5za0uyx
	 5YOwzK32ASs7wUj+kAo2GEYYlNLreSLvXBxVsOVsJwkQOT4elaUFneM5fPWuHIXtb5
	 LrHiEIciT+bczfItPKT5FGl70BBbvuuFPPx9uknbCceXi6oGhhLc3/SpEKvaXTnu/X
	 zva8N44KUNE7t3RN75QiSIdRBPzp9c9K1W4JCrhaU21DFmLvGsiSf7jZOfz7zaE3LA
	 x9De+bibAlcXXVJxLjVYGsNBVtGqoT03p64Hof09EATnaEe9/99QVOIVM0boJ7jmtk
	 E04PyPXpDyc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACD5C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817995371.31611.6277158466521297496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e00ed6b1f1b6eddbaa228fd4b805a085d251325820d29ae9dc1f45dd82aaef
Date: Wed, 29 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738179953
