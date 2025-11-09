Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1648E171CD
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762721394; cv=none; b=n3Ptm/+ai89G0Mh9Hr537v7PjEFynn9Rfq8k0pGPUvNq4kj+sy8PQcGOG9YaSCPbmpOh4J4CL6N6ZLhwe2go5abD27Clnnnq9Kizb5WqILKQHuUxzu0TsNnshO6Vo4AL3gdz6fnUYpqDBfcVH5vv1jl6LecvWGfcDdb3u5bS60s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762721394; c=relaxed/simple;
	bh=hWkZ7zPBN95ywgZUWEGS7aYUItkRIFiqRNwlT3XiwTY=;
	h=To:Subject:From:Message-Id:Date; b=FHqRW07md95PbMdFofyVF/kpW/eyfI8a8SH3rdEvK3yBHxhX6vOG7b2iKTbV3YYycFBE4BEZBN9xIjKrEUKDEUkTxg7Kr7IyStAh/yKTzbfjFkEVY0L9dGW3zVSllHUh0ZmkDy21Vl11GpXYR6ciAwqNcnk/IBGlKsQ3IYWLejA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJGZKZT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJGZKZT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19DBC113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762721393;
	bh=hWkZ7zPBN95ywgZUWEGS7aYUItkRIFiqRNwlT3XiwTY=;
	h=To:Subject:From:Date:From;
	b=qJGZKZT9M+Gmz1iReGErhnJVKWHtvkS3d0t0wEFLlddwcYJTUxw+2FSGdVE8pTOjg
	 1rMOnH3gTrMyhxr1ce4/OypJ1FHWp4EvulfN09D5t6tmkrTZPMAB0+TCqlFt7RwBW6
	 la08ZcN9qMs5SrZBsnWNvfjmT9FrNYtH8nu0Zg4PrneisDql65jXnhpo5RyMeqTEdj
	 JM4BLG5SwcJuoMtspXryauv9q5O3ewahAKOIOzKjCcGLLgI7r5IRy6MHyqxAsipWEO
	 oPKcca/3boFkFKoF8SUJrcNHppFGwhqWEKM5FgU5IupNRmd5IHE96JBJ+b93rMWc9G
	 LRhM1tVpbSf8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93992CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272139358.3002.9302742171339784006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cee5ed3a0c34c966bf93b5266d059bce63a4160027e40ca1bc78d100e72fca
Date: Sun, 09 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762721393
