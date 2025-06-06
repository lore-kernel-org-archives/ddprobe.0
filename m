Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420283596A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749184194; cv=none; b=f+UYt5AKFtEUYu/eTe1F4r9b78LZc1ckzCbqDpPIBf61aAKSyBmXP4buHIeas4zzeW2ARIAAKmHxR8vA3yI1kSlwqfLjhts/CIsUbZ730uOPRWtL1T4iR/nFCdpx1XC0g9ew/b4ldkv22nLyDrT8mdo/LIzaMcZ0aujYuzcXnYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749184194; c=relaxed/simple;
	bh=VRMMouKt155wlVBWqSLIdB6HnafbIHkPVsRi0P6jOZo=;
	h=To:Subject:From:Message-Id:Date; b=RmZBmjOCW4AVcLdeni8lY8lYSlnF6yv/T4XNCIgI3uZMz0aOUjWelqqtTTUZDSA9ZWRRncNJZAR8nTv1Uak8voojEvKNDLuJXGfX0XxAY0MKKMiEdcIJj6Kbeupi03OzoFNNaAJAYxBd8NR2DcBlepz4xpTP/b1mje0yEs70BDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnPTkSVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnPTkSVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC57BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749184193;
	bh=VRMMouKt155wlVBWqSLIdB6HnafbIHkPVsRi0P6jOZo=;
	h=To:Subject:From:Date:From;
	b=KnPTkSVUIlubGinYKcM4KFEtZWqs7WLGo6OFmWWhT52Evxe9UFvB7TUNTGzyY+Cn2
	 5hEyOG8hCGAIW47pU1YYIuHK0273Mn0hcQBmxg1xd5rVXWGNqBkgjNza0vngWvGXOL
	 +s0q6Eo7o3e6tVSV12VfmwdFb5UPrGbZnb+nISZXFZxzyLIzdZM8TXAYNHQhiJHzzd
	 dMzIGv27qwZwhBhgla+e2xuJ0lhygresgMFSgR1iN7VC4Cf88tbiwVAjiZ/xcxkKhO
	 lEnneK3DSrwFK5pon5Rg4VCyWRJfQue79HKKosRg2Jpr7GNqckdQNcstMY2TevPPwd
	 wpk+twLNcVhJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B5C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918419360.10613.8549621012632634451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a66f7e1b5786b0722105e76e48aa68e893558e177339278d5e18b6f6c875503
Date: Fri, 06 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749184193
