Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ED01C5F2E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487954; cv=none; b=FsRKGxJWp32DUr1l5I4LTXRbZ0GHISlWaQN7EtpNOFWZv/Rw71CYfL3oYy3iJazgnUew3OtAliY3+zOMnxrJyPp53woL0TLgt4bD72hYC5R5vLjRZHkPATEFyhx/7bcMG7x2meX1BHKu7rXCIaSoKymndZAw+MFG9k4I91syPzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487954; c=relaxed/simple;
	bh=gOGrinO024lYZ+j7oEVp49ORjjoOR6hGiX6hSp1iQ8s=;
	h=To:Subject:From:Message-Id:Date; b=hF3Lag3HyDh2CykotIy1MnGVRoGS2qmgYTjO80WyYQFIwavozcCTNFkOXh+4j198C/ap85I3zjHVCVvvjKerAj3vVfGpK0TYWjJ+rlk/Imv077xSH71Z70JvOZLh3UnxJXfcNAwjsl7D4BAhMv0f+7hKZZ4/OtgUqBrCUdC3soE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDvSc/Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDvSc/Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DAAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487953;
	bh=gOGrinO024lYZ+j7oEVp49ORjjoOR6hGiX6hSp1iQ8s=;
	h=To:Subject:From:Date:From;
	b=bDvSc/ZjujCVadDyQJSz6dtSINMZOlGQhqeCCElTK/P+eCaWh5jA+7iwsRPfm8h3R
	 HTwMM6sV/4IBCCg0fn/4MWecNhSbzjmVcEVQqnjRU2vDHf27kOr81lcevBBjojDwO5
	 R9MramCb3oakMSXAAPWvRJNL8MFJ8FLOjcpTEW91ALrxCAXGc1MEoHPcuDeOqoNd7x
	 MQnPPUI1yFbpJGAfsw234bnXIaIzmBCrcRsTxOvS2A1JO1hgvZ7XcRvuY9x6Ev1o/7
	 cfdCMF2ix1tQXu10ugY1cHV+OtwWuwSafZbk+MIU6hRzgl6FCplg/cK2lsXqXiSNqP
	 +bS9QPF+FGTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99773E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648795361.6698.4398218471379061757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef23990269808a2792038dd424e07966ef99c3fe8774ddf7a3e4c8469b17bc1
Date: Fri, 10 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736487953
