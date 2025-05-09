Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C04221261
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746790194; cv=none; b=ZvMmlGQWMNTc8HCX5N45EoI8b9L2qxSOmcC42n47dNy4wqqVREchTNuBctERX5E7E57ob/lp4TVcJDJgi2Unt9Ht5h8u711SKJoea4Ea8zH1bOlhVc+eBmLnE5XwVa7kGhPOLs1in64tB8VXiRCHq0r2vtLqHx2L7zEXaFn65E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746790194; c=relaxed/simple;
	bh=7VxxpRYVdNGzQ8BCo4Hddb0iYF5Y8DzST9WmFGYArO4=;
	h=To:Subject:From:Message-Id:Date; b=kXpQw13/nZfukAa4tk0Zud6G86hOja/f9ioC6UGoFSjH2QOD7SO7msmnb/NEEoVhIeUPi29LjGBpeAncT1H09kw/pBWm/QLwCNkwjyKRxSDtFRZLkJsCIMI7IW+O9VCPWB4/t8EZmulO6gNeCFOQBlmVz/dz5aeU7CNs1CS+FMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ6lpIM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ6lpIM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5DEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746790193;
	bh=7VxxpRYVdNGzQ8BCo4Hddb0iYF5Y8DzST9WmFGYArO4=;
	h=To:Subject:From:Date:From;
	b=cQ6lpIM/eScZunJWfu0srSOJN0YaSso12Pd8aYfwSUvZW+or+CCBMX3fr8d+WVgt4
	 HNuooB1usgp1AAs0iWZBtYohoLGos5MXAMLlCqiQ6IuktuL9iGUPzP6GqA97UKLHIz
	 EkVL1bvNtZpwVdmbnlq7a3lTaMFnqmes+l8e+KtLM2mdcYyMIrTzSnljSOumUesyOy
	 /MSC6kEQugODcr+0gxmf3o2bQ+zFlBe0j664jHKbFr/XjQerbsOGXg2UBlkXla5pr4
	 PspBl+zet3FlQYTuwermDAlIlQCmSwnjpcIq4CxVLYW7V1VncF/IK/ndcISa64ypDV
	 PAxACCmM/XjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E764C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679019357.4179.10837441308600490059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453850da7ed55fe575a666bbe34151498d4a91e5ef875e9768c2690c266d691e
Date: Fri, 09 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746790193
