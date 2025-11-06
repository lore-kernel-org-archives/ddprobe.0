Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6D734D4E0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453793; cv=none; b=haM9YtzjSjxSYCg9ueE6+4b6etpBp9S0Tdefd/W95lMg8uRJsfC8pbf9B8EHzOzCFfR5KhoU19893VqBlsTaFODl3kriDSJJ/wpyBvmUerS+uMkccf6a0Sgusy9UhOEeowsKqSszUuVivUC/yTKDDa+0lkOttYTQigmL19hLVAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453793; c=relaxed/simple;
	bh=0uMqYZZKvok9kJmNWIMsO3LbNQntnBEQllpyhI9pEQE=;
	h=To:Subject:From:Message-Id:Date; b=tlsGGFMa14nG1OKPpEufh872A33DatnmSVhQz65JvpnZ/1IHPiYzSp8wtgeIuFaMNZMTPwGHZ8srxIKP1edytrYKgfs+jes/dF5Q1pAT6QJJuVy8ew/m5eZ4nBreRviiHBq19B3veAHvveJyP0IqLwvG2lUvDCp/X4uboD7ZN1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvnHEmEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvnHEmEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED7C116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762453793;
	bh=0uMqYZZKvok9kJmNWIMsO3LbNQntnBEQllpyhI9pEQE=;
	h=To:Subject:From:Date:From;
	b=NvnHEmEbb4/B470CLPmVw5xDfShWnQ9vxtplbB9bUG89ZKMe2XHtQ6iKCmFtFKWUU
	 L89b1WBzwQA9kHJqNWUcGbNKp7HL7wyD+o9YVNoQHNSPHcueEOlByBQOlRHYr6av9m
	 Ec/54Tl9gHGp3bPviBe4Hk7qRYR8rRvpdg+tmQ0Opm1pkZeCk5yRZmCbe8xEnskHBh
	 Qw1xXTWurkpk2FK9kezFN2AU2xL0wggMRLR0Pc4TufVFldOk6n6oJl9iO8sCt8Lc/r
	 LXpPd8R1VgsQTEoc3fD80r1y5N8lz9UwqOdH94PPjS8M+ZQmOcPGxM4UU6NRtYz3gk
	 2wxc8zGD14SrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD9CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245379359.10071.5180817429788632906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a785f2195e751f3c5128c23622c433f364f4ea99fcdd345c51e842e36989a1c4
Date: Thu, 06 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762453793
