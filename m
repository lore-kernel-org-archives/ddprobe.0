Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6884732B13F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780961074; cv=none; b=r2m0q9FlDqAs7uWE0Doq7YNWKBbv52iiz3B+M7e3qkejer5gzvihYUn7kfXcXt77sSTxrCj50qNP0XvMM9tEuGJE+3LiE+fKXpzWKil9uWzdGZBz+R24elIdb7ML9vLa4ad0DXrEj0wODwhBJstK0cxHqzd8JF4p9SYY5nZNxaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780961074; c=relaxed/simple;
	bh=S3xlRO5R4lk3l/LTvvGCEOY9z5Rev40mpePcAozEOVI=;
	h=To:Subject:From:Message-Id:Date; b=NUq70FdmGBAuXCkxcjb7L1enbXEVQ6H67uB03/tSMcXwP75sFbvsyABhcXAhra5oUPHoBLM9MFwR/sKYDeQkbb/Mh2958OOS414FiJoeECpmkBFPQVL4uemuxXYKSyYqKUpta83SLZqFHSPSpHqOXzTXgRGkKPYpH2oe3m0GAAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2RDGz3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2RDGz3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECD5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780961073;
	bh=S3xlRO5R4lk3l/LTvvGCEOY9z5Rev40mpePcAozEOVI=;
	h=To:Subject:From:Date:From;
	b=c2RDGz3jHUxK4roLWZXZQ5dg00r840ia9bGStJsY+eXHUNDw4iCbkhIfZQkTpldl6
	 Gs72PuQdmlsWvf/Bw109QOrbMDvL965ZuMDXnqi9YhpdPV0s7eZtfrTYzk5LYmNW1F
	 y5xp1SMmn4fciXpoLh9OvwWMrhlTg48vCikzw60z0SX2CVBow3T3a/fLzxFxwp/YJU
	 eLN+7oVwLsQB57zu8CcMzA28MOxeUtpS4QwYJY5tSgqryduV0NAArtsXIzvh8o7BLz
	 O0Hjaeya97INuW+JN1l/JpN0edURMFVY/GzRSk3ebvPBBNYLdGG5BRTzSyEV4j3HA4
	 RIlZhh8SzD9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02FACD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096107369.27299.12015357466231936934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd1d3c30d846136ca3d3d8f3259eb1ffa26a4311512d7b0b12c6979ae7a4a59
Date: Mon, 08 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780961073
