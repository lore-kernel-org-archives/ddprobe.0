Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BB137905
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723045554; cv=none; b=jplNc3+X9ClsXYl0VeVAte4onVAeXNVeKWXgOFn2Y4viDkef6WNeETP+zD7W7yN3nYpmqOnFLRi6V+SlbNZlyZWeV+1cV+k14CoH2YAX6Y+6Xp8VB19eyhn44dX1hTIXBc0Bsq/PHF8nafJHVUCea8nQCs0AsVX8U2FAQjrjTMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723045554; c=relaxed/simple;
	bh=Uodm8wibBr8XoOtd+YF9vJKgXo0WqwvD706QnasFmkM=;
	h=To:Subject:From:Message-Id:Date; b=L4vBn1tNYMWsnBS3lUlkDo99aI5GAdUMdBstjQgzgCfSF+5jv6lAaNlQez8XZnya1A8YQ6r998h67iJQR3UKzvxcUGuWvNsJ/gVvDTY+So7JqQ0Jeq9bLHtRTQsDLfRCtfey9lwGeZRscFXasX5HjRnEdek3PgdwPTtHhVGB8qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAmy8dai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAmy8dai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B3C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723045553;
	bh=Uodm8wibBr8XoOtd+YF9vJKgXo0WqwvD706QnasFmkM=;
	h=To:Subject:From:Date:From;
	b=QAmy8dainZvwoSkNU2NbbT3AkVQOoPu62oBl+ru4zkv1nWpGFj8bpJmncy5GHARm6
	 mi3qumpj4Uu82du+JFdULlJSWyy2JmcYEGjigOSybneGUmP85J5iJXCArpHmGSvfpY
	 23ZUmlY4M1/6ai39cl1HR37sW8AKFPwXXHkZTpkg4YKNbXtLBsVD/LS3dXsi0Wcej7
	 47OwIX2SGVOJ7Hw9gjhAgptTDOHDRpjH4x/sX+gWtP0CRkgX1U8VH73H701PY0z5C2
	 xlOiQGPNFhtHDEqgdsJl8iP4T2u644E+6GmpX+zcBr0HHlttfR6nYmjOG2xhUU3RU2
	 Mm5ooqd3X67uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EDC52D71
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304555358.26678.10273791163132675352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1188516e6d20e5ecf448523c2ed8689adc8ed6144d360d6cd2ac682b9471d202
Date: Wed, 07 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723045553
