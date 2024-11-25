Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3439517BB0F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732568154; cv=none; b=K05bjiWyVzLJdgiVkN1BXs7zK9uI8Nsrf0KK+SU9DUPedTKi1sbNouR82UKTYCTumUJM2OomDsqg55GOzLibs3zCRqYDrG0C3X9RPo7+k+IGinKtxigdibY6UBswUtQddNLo/HscKeLeQ03wws8XlA5gW34cw3m+tPS568aKSGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732568154; c=relaxed/simple;
	bh=sw/5e0XPI16MI+DYVG6YzioBpLUA+qu1uEIZbxdxtjM=;
	h=To:Subject:From:Message-Id:Date; b=dH2oB7yyV3HK/vIVPCjvmeIuW+WjAK2GCthLNABW1EHi2B1mmoafwqQv5unORx7vPr4vywK7qz26m4iMdbRUxCppHYFI5Y7nx+SSlZihUMfhrFWSFAcWMn2ucnOF7rldKFvT/nQuoiZJ+pVSR27FwtAoPJdwHExv3dh6Sb715hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/rtzqZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/rtzqZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5282C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732568153;
	bh=sw/5e0XPI16MI+DYVG6YzioBpLUA+qu1uEIZbxdxtjM=;
	h=To:Subject:From:Date:From;
	b=r/rtzqZWzFJjVY3YEvSvjR0/bATGuT4d87/nejqDKLcmW9dTYVXSCEl0JiOtI55Gf
	 R4TksvRYeSXjvFtoXwsyQN4wpSFza34f5xjiaSSVoWjLhlz+o/Q0S1HTsGZMIbAWbF
	 T7E4AwxlCk0GoNzRm9a2XetQ7WzLYCk5fIgzeA4kKUvddrQWywrzrDcFtLLpJfAj19
	 XL3ZXSMEAtr+2Wm3AknLwPphNvjUG+AkXd21OTFDgScbu6ashACmDcQtHVJRmsqSoF
	 gc25bSDufm/+3us/HEnYl4ktuYGUQfZOxM1c6cFpznozAb0eCaG7W6DMNcILkA8hOf
	 1zjs52nMaj4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A9D59D6B
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256815357.11032.16415779291087088018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f357cd7364c978600363ef6e40af773593598199b0229da6620e88535422329
Date: Mon, 25 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732568153
