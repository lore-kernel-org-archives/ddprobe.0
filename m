Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3717122F76C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805794; cv=none; b=Fa6fqXIKQVOOEI89QmdVtSrijGh3/8vdAjMFVobiWiMRpmMUFNVoiJG3FfGM1LSy1pcWzSIZQXh0cfPRe9EArd+ta5Kk1lBR/NND0vFTfpaQLy3uHOGZifvPxSfmgHt5gObufvM03QaYfqG+RKgIHifl2VqBY0/C5PTMdAnwMBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805794; c=relaxed/simple;
	bh=OMvf1TM2C5GqeNi+g0LQgxqSdLqfxbStNZuTkxbKjtk=;
	h=To:Subject:From:Message-Id:Date; b=PaTKgZyD32Yh7y5r+elhgP85VcXBOFzt1XmTnXGkd/JvjNhjG9MM1ExNKrUK32HFIBef7rmehULbvBM2jfsVowQM2uMxeCW0LNK6FZd8ngGSorl6ZduaqGr1Dn0hlPJ4QJW2Srb5shas62BDc5dcsuetiurJOlhdIdyDFtelfss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyxEc+Jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyxEc+Jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A083DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746805793;
	bh=OMvf1TM2C5GqeNi+g0LQgxqSdLqfxbStNZuTkxbKjtk=;
	h=To:Subject:From:Date:From;
	b=hyxEc+JvWFeVqoWRmJyp/ELKzHfzGzkCLnwpfoMn9gUw+HYJz53QCYelC67lJnZ9k
	 K+avC13/nRP8c5LZ0uBWydx7jO0HR1ck84gJ5BAJGohP4h+fF89gziXM9RGJJH2iYw
	 4Mo48OT8naQ1rGyaoKXqHysuW6gCOGF6CjAM648q7qWNyN3ObjEWzxfWjXx7QrksO3
	 73iJkfX4yiwmgEtEpVdBR2dKkmNbaejFN5/CxTT12C0+nTFUGnqVlgioiuCNpJMCQ1
	 rWew6XPaatap1QA0xdqYgDYJEu4RcbxFDf9tqbsA4AxixAkmFYmBZe+Jv6LSZqV9tS
	 TgRJqRLNWPvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F737C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680579357.29292.10540942438275018714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a56427bc1cfca882a87c44ec958f4c065f353af0e5faf884a4b6a91553dedb4
Date: Fri, 09 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746805793
