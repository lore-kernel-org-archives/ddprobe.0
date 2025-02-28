Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4166319993D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740716934; cv=none; b=j3EP1UWD0MfBXlFP+zH2ZmNBN301gmG3z/Ids1YhEWlalAy2LsEivIOnwlgCpozH1JNM0LPIYxBOqBSPnyC/eqVIJ3otogrFFHuJb2BTCEvj3OxTBZTca7l+5GIGxCPnxlmaWMJVafWInmw9VsjEryvjctABpkvvguD+FraSVUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740716934; c=relaxed/simple;
	bh=cR6KBc4LhulSEWKI97yoici9blR5PRlD04kS4GH+rEc=;
	h=To:Subject:From:Message-Id:Date; b=MCA4z4pXTsPzwjrV0JZifPaqINkJXD9L5c7toslc4m6Qeip4+XFeY+H/asNWBZQuFIpyvp/f1hV/LiJC2OMyWuya+06j/dIw+EvEAvFfETN0ljNeYxEdD7VvGnpAOyhIGLIRWCXKBEaWPJkpqex2RaU+k4/VwzzxFeMSlpfmS1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjOGi7Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjOGi7Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC0C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740716933;
	bh=cR6KBc4LhulSEWKI97yoici9blR5PRlD04kS4GH+rEc=;
	h=To:Subject:From:Date:From;
	b=EjOGi7CzkpOaxhvK72tzHl8DIwz9ui/ge9kLlzRCwnub9iXvGQrqbnH94O4kldPcU
	 KSTqDhQZjYokNvdVK4b003QCqC0NLwt05d3nlrsdV1cBpz/bbGd12aVjcHOxJZbe5l
	 64J8glAKTMXwkoTRVR2ebeR6TEX/feCW5+N4OClQ6rOQiUBp0mH77xngDARqz6jjM4
	 c6ufSmC2ONpX8x7/2JUdznFpuDih+peSe4XPebujeu5SBRR5MpM550ADyGmO/aKHiW
	 Vnod3VWVDDt9GPrjF4bjRnB+uDIziD5Rst45efDjq1JOpWasxf+BQw6bqHfJbn8k3C
	 OMYf2gHu+PFpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF8C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071693358.29623.7362374183915147196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede35ca26cfc1a91ebe9783af27e6c8c3145a2e4ed4a1cd1a21c289cb0ad1c32
Date: Fri, 28 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740716933
