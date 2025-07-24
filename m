Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20898148830
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753337394; cv=none; b=tW6M0aCDjjo7VZDXqV8ABKZY2ofwDPr9hX+ax4SdINCA5UkPVDfKZwebYlJQaMS8VZPVEcuNyXZtMnMZ/C5o/+cb/qhekmmtMxWB5rJuNaRQknKeBRP9i4RdFxz3wpymzDqPXLV1X5LLOL8UsFCR5cR9FZpIS42XQLwK8iNs6Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753337394; c=relaxed/simple;
	bh=x6ddr55AneBHFJ+lm8AnrQgZhOm+3REbZabZHNxII9A=;
	h=To:Subject:From:Message-Id:Date; b=PQ8BJi4T6dv5uyhurKCKU5/7Fbqv66lhLOb09mSZfZtZLyjwx2F/qckZsdSdhXhV1UwU3hjSQqbYCISFyTKCmb+8g/U3HebrEVvxYwoeDoYOmJoK7DjhJqmBglX30yXfYbO9EyCXYkMFgheSyjaYQMPd9B52o7yIEkCuCXuNrUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsQBN/WT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsQBN/WT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC8C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753337393;
	bh=x6ddr55AneBHFJ+lm8AnrQgZhOm+3REbZabZHNxII9A=;
	h=To:Subject:From:Date:From;
	b=ZsQBN/WThq9oGRHfGOtXwjYYAEXZxjOFIOYNnQ0e9BJoKYIjX3LG+hWs/MV3vuCTg
	 khZgvrQSPjK/tYS04bP873qoV7Mpnx0Nj+6In8UaRuHSV/LwdL1+Q6LKxPF6o9Jc6O
	 MZUZH8MS4Nb26juMtaCmGKB+24b6HVaL4ZKourVmLCEW0h1Gtao0/3J7e0fy/Jifqs
	 uuoPCPrJEtOVaI4cLYoJmZWNyEw0Y2LQ2Amm9SwxxCn+3yOrC3ioB0e0l/H3cTCrKS
	 fE8G+uo5cTmHr+ZlhFGl/sOsJmMONFSD56MMolh8vCEYDxZ/18nn0wzucayNqP4c/E
	 gR4/JmFl3OaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333739357.32162.4711548940946463469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd333b8e4e4e0f95c1c4addd01a7cdcd8ab446b0be430c236d09550e4fd2bd06
Date: Thu, 24 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753337393
