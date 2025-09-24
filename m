Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B99E3128B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758736794; cv=none; b=GSFoXJEV6x1gXON7lpzvbnewf5FiWVomvUs4PFZycPzQIBt+tdLnHCGZxwC8mFbTLzrUeMj1wqSHm4dZTDgxLNjgyaUcWoxTOY//Z7AvG1jbuyQIO14DsZCjeMMTmnkXv5VUxywyOEsvL4tTmPdvb32QZ4R+lQhvQswfzwY2ghk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758736794; c=relaxed/simple;
	bh=yErEWvNUIoJ5kdRXmRDJ2zhkK/+hRjHAbHy/xmWrrTE=;
	h=To:Subject:From:Message-Id:Date; b=oJ4xlRjvoE3C6v1IYatuuhA5DzcMRdPepYUNkbFZmqGsBjfUFF4kzPopkJ9m/7mbvaYCA/14qMv9Kz1NNahAckSkVPF+tJ8UF4YUzYDyeEUznd8K6xdrLLA9AzvxmplkDnOo2pdUKK+krlwL7aZV4q0OudB0T7clWA6O5Tm6w6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX/z1PRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX/z1PRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C5BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758736793;
	bh=yErEWvNUIoJ5kdRXmRDJ2zhkK/+hRjHAbHy/xmWrrTE=;
	h=To:Subject:From:Date:From;
	b=AX/z1PRF3baGELkSPI4QaV/6EigWZZoSuuNs5XOhWDLpf8GfkG8ThxJySp8GSKiqc
	 +rh31LpPCmAp/+xV14kkeNKduCAsCGJ9fk0eialdd+LNAd9+7UtOTTMEE5Wc/1L1JY
	 b1j3GwADbscGD6Ff4BgqimVO77b0ObFZ4U4iObHWD09UXg8jveXvfohzfI58mtrVYn
	 ccnpO8axU9Y4+3uTXDS2ie4uFZExir/zlf+O3HhMb1VLUg8K/yzwGHsyJmqYQDQaV3
	 pMgZ8WLgtfrEiVtoIDa5mi3mU63PP9DF1chRmqWQCDzK0uaTmGezzUEvN214w/Fgi2
	 unaqKVYFAIcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B46CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873679358.7784.16364425705420550693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308e1c22240dffb93fedbe62719c6b97703a9acfb48e7bb1abcc9ee376ee7d08
Date: Wed, 24 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758736793
