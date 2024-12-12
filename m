Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C92139BF
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734008154; cv=none; b=S/KDWBLOe/u/NPseHCT5Ea1Bv8qzKzd6h+K5yt5l92qMYfftvcSeMuLCgYfm6GEa2+TwB3eFvDNT3EvHSzI66DWhdAh5oI6wv0wRS/Yo9ZcSWoylJO5EiSbgEfs3ixEuBCEkQRimZeNzE4j4bbwraXwh+1/GErfZKKDqnOf0mSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734008154; c=relaxed/simple;
	bh=j064IAmGw6mft3Vnmzuj395ouSyrofY+sPnNlogl6iU=;
	h=To:Subject:From:Message-Id:Date; b=RmcrF1/9De+GPNXBYPgP/2RFNDmj5aXzv5MMdgy/Ol/sB7dFseRXap8hX9RVOIwQOkrdh92OWdfru3pXyFXQd0C7u7+41cEzDjecGZBxoIGUtOvvne1bmZCkOZedQGrfdlgnFzhqtyMTbJgXiCLplMvqATgKpJbIlAc8hkYNcgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKjxU35v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKjxU35v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB74C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734008153;
	bh=j064IAmGw6mft3Vnmzuj395ouSyrofY+sPnNlogl6iU=;
	h=To:Subject:From:Date:From;
	b=AKjxU35vLQkY5fctYeB5u2FodTALYWcljfq2A453f+5O+Aik6Oy3IX0qMCr9/6WeM
	 pCFOJYVf9n7CsRJhrDMU5Ygog/UBJjYLMLKInYzzs0eHznN7+33h6iVovpX5ktn/97
	 /etRV+C0sjOILna9JZNmoreRnALAUTXldqEadrfOqyYDCtrP83+5rl3kqZMLLduDee
	 Ul4+SS6Atxp+1QvN8wuTN3iY7FEi9lQGc3wGPQO3v2Ln5CY2qtZcM4EUssPACAUzVU
	 elPQWDyBLxtRuRjh+AM9S1ffq+AtAhhXQiiFGmlSq810+iP74nYvx/m0RZIk1SLjIX
	 oDaa3/otThWLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1417E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400815362.23402.10214522267824027169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1262105345608f81ff87d081820473224778ae7e30680c67dfb3d168662c1d7d
Date: Thu, 12 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734008153
