Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363A22949F4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748023794; cv=none; b=HLksMZ53BGtn7IFOmvF9rpw3QzKt+Aa8y8fbsqBhzEK/OKwGMAwbuTIcypP9XgzauWtApQWw0spxoj4Fkf8tN6tHiLivpQaCatGhbLtePBXCCGksrpwmH1ZlZFIcLnnUScTK1zBM+tEVRHieXUFHfaNkyTknE/3DrP66hRza0No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748023794; c=relaxed/simple;
	bh=Pl3uG+IWRcaKq9ujQhg/T682X2eYzg5OZTLOkktbutM=;
	h=To:Subject:From:Message-Id:Date; b=tEU3LW5Q5zo7EdKvx8mr3PTAomCJobYFsnYaWUmGO56+7S3Qj2iJjV/0nJb8P/1Y5Kz3UT4M+ml+/b31e7XKeUejhBwxQYJxJ0IhaGsEQ9n03i3RoVKianp3/63msqupGc13Oj8dA8Gn5hyPMNSzZlZZlKLI1xvPSlKogmXM/yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD6PRAUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eD6PRAUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B34C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748023793;
	bh=Pl3uG+IWRcaKq9ujQhg/T682X2eYzg5OZTLOkktbutM=;
	h=To:Subject:From:Date:From;
	b=eD6PRAUkYOxUdaU60casYDGzfhtLw+seGR3+SNMxzqtaGursciw6bFMdtefcV7KhZ
	 KiV0QsyFNBdiMDirnfFnpD0LGDQYg2telaQsrFcjy1mT68CspnNNb+CcI1QeBdnygF
	 y2+6uKq3oUyw7EUwMeFggytnu/TxjOBozzPcQDwUNYJIZCtFe/kUNWPMF8G+6rcXST
	 k1LjsalXg1VwGLJj+NEo3Tn6+85iyhCRCM7CXYjdOx8dI55hYDaIHs7seU1EGnuQ9S
	 gFSuWaCyMr5o6aMTwFhIe8OcZi/SZkmronhS0d6Drkx5h18B39+L5q9BcmlhHIZG2N
	 PKZOTlXsU5c5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901EBC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802379358.30740.18277816964795896282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8650554526b4fcbd858c558d3c733f0aaea73f35ae66a909022f270c2d8bc7
Date: Fri, 23 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748023793
