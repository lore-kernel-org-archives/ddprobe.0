Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2E510940
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734144954; cv=none; b=UkrbcHnNm1rh5V9wkWnRNO8fTU+ga19badYi6f9oZy6kTU3gQjvnT7buc0qmrtuEf13bFcPadgUACsThUFWDVUVjbEQFgXVHha/3v3eX8ieqhvfBVdTli7yBqLeu5sq4otcNPMjTN9pw+n2SmffLEMDCfz/QErS2RjSFs1QUpwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734144954; c=relaxed/simple;
	bh=zWJg2g4XUsev+e9VUYNUnTXSOnmFt70J46TPMA73IGg=;
	h=To:Subject:From:Message-Id:Date; b=bzI788O6IyLYW8Au3oVvY8newbtIR+20gv2cFO4NUjEr3v9f9E8rw5z+V6odF0zrFIMfE8Wq0ooFwDacfOCu1y63seJrXdfDemRVllmYRzMuCdjrgMDqmlKAVC/yq6BDq9P7PlbfsCyhqeiBPIzLn2KA/hRfmRRO+b0ogIzE+FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNdafiCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNdafiCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A16C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734144953;
	bh=zWJg2g4XUsev+e9VUYNUnTXSOnmFt70J46TPMA73IGg=;
	h=To:Subject:From:Date:From;
	b=NNdafiCDLoECIRuf1+ETMMGZFPemIiIxJ0TRpeYhAhuwhZ5Abg3Wx0q0/F50gGRQc
	 hpj/ZwwN7Pd54Khnp/EjwAZxqvG2QVwLwdAtdA6PCb6EWTJ6QpY7T4hteExZ+yNXkZ
	 eg22CopL5j4Tks8T8P1BFgZTEtCCgnaCpaFXNugi+SUHj/7KYxh5u1igVNjFd91Eg7
	 RvZ3tYwBJQt77gqPGIZdoUP2Gs2YjBvr7HNrw9n74D9rRXvclOayjSQAxigeYNyutS
	 82568gQ/uTq8LzM7hGBMNDu3BLbIMjLJ5DR1S+pN85SckEZxL0OapxTqbAVoEIy/Sg
	 HSemKzl9vcwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8AE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414495358.4651.13574802850526928779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6b1e25201c62e62aaec7460c77a82faac379ebcb33778540ec58ec3f12f25b
Date: Sat, 14 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734144953
