Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311D21FB4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737270354; cv=none; b=W+R+F0GrxgC9lQOAm16Y28WrN9Akm5PICfjPgS/TW2rxRrSS38wa3WBUtg0ra/zfGUC6g1b7/ZZ+X79h3nSBI4RSMnKo6hU+ga6/EhqQAeNN6XnwAByhE1jqZDdf9kho2B1vRj47P5LayimCJKc/93vsFrgbTJYO7l7pHb7Hb7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737270354; c=relaxed/simple;
	bh=UaXEU6jwSAhFlNsZwy2a1rYAc2fzxZ3fNxTWp6wjNXU=;
	h=To:Subject:From:Message-Id:Date; b=itBelbhnree9BnoqsxkHTzEXXbl6og5EUQfCHveeXEWa/Gu910dEnHji48PBaF3fg0yrMWNPMUNwQIXPT7pl3fa5WW+M1E9ZgXaarZLqMeiIQIqHw9Lg1qM87aSyoSJf9f3ztMytIFCHSnqrXSdLaPjz9Bo0dU4f+oVtNP6YjIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU2+lNnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU2+lNnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E44FC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737270353;
	bh=UaXEU6jwSAhFlNsZwy2a1rYAc2fzxZ3fNxTWp6wjNXU=;
	h=To:Subject:From:Date:From;
	b=jU2+lNnfvBMGvKmgpMTkQqnnywy52uO6ADmy0Mw9iZfZ3t5Tp3Nywoa6H9JVsAldb
	 3AE/g70zeyRKgcg6OGr1GtrXf1QqFYNFYR7gcQcM4LED+2GcMgHcnf2QqvolUKnDy1
	 VPhVK7b/HmMqNAshEHAcap5MCcHzsSByzjxyimdsRakkk/ORyvFyBNIViyhTfTHmej
	 9DxijbCABIKnnTCfvMwxT/i6TfJLMM02ZjPl0lPecjKbAim4y5VxUqivL1sAgR0x0Z
	 eWZQZ8Lu9MBEwfCqOmAwbtlefGJRXa9N5mprwQXS+wPkreB9MFtuSEiSAJ8Sa/uXYx
	 LqZNpGbkO52IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9CC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727035357.25097.7154936779624833234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a626b4e320a2abe8084cc61cb78fa60d141bae2cc1c010784811c8c9f018ca
Date: Sun, 19 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737270353
