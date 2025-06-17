Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C2E277C86
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750187395; cv=none; b=QZW1hDXcycZPac3wcG+o7c1UlsQw6+4WtZQaonmIJHoOx2aQDL0coJ0bOdXxoKBmYAOsKxZPJovj+dODo19oNklH0JHrsYflMcxRPGYlW7VRbQBG6bOw2t2u6dmgpExyfcWtItwrGNd8ocu3Y9QQs1xmez1OQYX6IfJQlU5ArBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750187395; c=relaxed/simple;
	bh=PoisoDV+ptiXWmZOBBdXlSC9tm47REjpkhVf8+nUqYc=;
	h=To:Subject:From:Message-Id:Date; b=EzDepLa+slftilEtT8VimQlAkW5bNwAHgqEuaxojlmrfCW0ROvygyShWa4DAUPl/VycF2jraJVUngekZdLn1eSeQbGZ698AzrGhU5Dcrbr9dlN4e26ZFrm1GrhOMnj1BpWLvNrQjM/QL45EtsgiQpFHRSpEgmbSshGn6HsZLtlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBmYYxan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBmYYxan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD0FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750187393;
	bh=PoisoDV+ptiXWmZOBBdXlSC9tm47REjpkhVf8+nUqYc=;
	h=To:Subject:From:Date:From;
	b=XBmYYxanDs0114CyH6W3DQ9ltPWlTPXGiIZLIq6SrE7Cvbdzh4Hw2CQr6U3O3EKNq
	 wosWfGzSyNO1flpqUuDM8CixdkXMDhnm0315O5rVxtg+JFuDa1fCiMe6O0GGeFFZDx
	 VD9xOyMOsZO8+8oRvSup31lFaQMV1u4WssVqhk8Er00dFjL2E1uciNkCnWz1p6hk5j
	 SVMgi1BCr21WeKCewBdl/hPiOsnkx2Is2SBHemrhXPC3XXHLsdzQS1S0sFZdBzBUM6
	 G5ePR4UiK/1mStMXK0QV/6XpFUJG9SBdJp8bfeh7901orHuaOkTFZYR4w95EDAU6LD
	 xVar5mGuYp3wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEA4C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018739357.3402.16603661426963199328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1a6d5c8d943c8857d13897484aae8a60a2f64c5c18115c032d362612803fb3
Date: Tue, 17 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750187393
