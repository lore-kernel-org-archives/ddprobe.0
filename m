Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2806B1D5141
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762728594; cv=none; b=PJ4RoaAKkwqaF6LRPes9Dk63Tah0yyuDyJ/nCxb2Y0ZXfY63+3FUBUQvOWOqajuKfjT2qRqYKG3En/khAF7EvfbEW3DNriXiusA2o++SpurNUv7WchY8WV3QftLFmSTDwzleWtfl6MUnpapdoM5y4CEWJ5e/0UK5sTXKSHYyNXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762728594; c=relaxed/simple;
	bh=ryfmvQa0bgjp+HC4ENJ+3A+CnwPPLjUv3myd6+ZnVRI=;
	h=To:Subject:From:Message-Id:Date; b=lHHqkYvCFk7y8ejOp3xatlksXDfBYJFh5K3hFNmaJQrHEPBmIe3rF4DxdQMXKqzN9MsasR20JTC1N+O3aOXPhua4rPZ4pNPjYrXSwy821PNMOJtCaQ59oeRd/nE1ryZUbK9cwlQ++YkMs1VJ/8LntWE/dQcj7FNoq12fYmWVoNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OycXSSUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OycXSSUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762728593;
	bh=ryfmvQa0bgjp+HC4ENJ+3A+CnwPPLjUv3myd6+ZnVRI=;
	h=To:Subject:From:Date:From;
	b=OycXSSUh8iinKQ+i+2SVzPWzg5XULi/nNjwl208/j2T2ZjtjH57T8WdcJyxF9403I
	 aOOtKG/EjlSxP9xTJZF+jNZs3A3C8z44zgupkQ2+co9is48SnENaU0SOXutWJhFze5
	 8+fpV6VDNDGdrDzEifrbkydVkMmfQ6KXLtZPKMmaYjD1xFoP9xVoZQH+B6yxhKrkOC
	 ExLbVyrmNUZAuxEn4D5fbboULaEcqg5LIXETz5x3a4/ScbVBlKsyYfoamiVUdTnywl
	 PTBqLg0Nx5GfmzRbq9CZ2Pm/mhtuf+wRFop/6bCSGQeQx6mNrAvvKAPUmDmqL1EDO1
	 fVcnFVslDQl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F7CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272859359.29107.5926736921521807152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3ee76e15da6ed422f014440380246957969e4982b8358a264fe89b1c782460
Date: Sun, 09 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762728593
