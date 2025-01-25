Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE80171D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737827154; cv=none; b=mDHcj3on6AkK+PWSwo2KydN0KY+vIVenYyfKDqgVanEgBnj7sWuDVZeIz0P6Fqf1oaw0zcCpa0w+Dmiph79/xyXfRSp1Km9qQNQ/dzgGUtwsn1CBRVjG0sAs2Zc5zYMKYcHkfTjv51CrPmUVk8Yd7fIF9wpm27X2wp3SOl9aNfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737827154; c=relaxed/simple;
	bh=xsAPzCVM0f4yxeCy31tanV163b7PImFsGzvzf2h2oCw=;
	h=To:Subject:From:Message-Id:Date; b=q2rbGMM/PiCAyeVX+EOSkT0m0i4gMRQ2ibrgZdteYQZ1f415SUVlKF60N/DEDuBeWJH+x3oG4b7TI6gV3RCWv5RCL12wUKj7FBtO8IKrBBbs7abB6yIvyV1n3XWtmKxnfUGZgcT9MkgoHGPbcGVJ7u9CPIpb/OlHoNtd35sevnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/WOWlYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/WOWlYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F3EC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737827153;
	bh=xsAPzCVM0f4yxeCy31tanV163b7PImFsGzvzf2h2oCw=;
	h=To:Subject:From:Date:From;
	b=i/WOWlYifqUlKY0NJ6d9F2eliEiQhMWCnN6Ss5+VMVdTW5+oOV0ZXsROdw+OvmM+N
	 fP7nTejFrR5hfZdsTauUflYztfjoKahwLZUXV66ELpzWjCkaNkqgc9eepTtI7ZKmyA
	 M90P4/T0X+D5EOxcH12p03MXIZhy4BhFYAO5Q+KNAGbHOlJXLspY1Ze7mx6fQKnLyv
	 t9PQ5Blo+CnDk85dNmsD9XbZGwdALOt3cgHym574ZBMvbOuI4QKGw2Epy0tZwd9CZz
	 aEqvS19dSMSbsv3QO+WGUYsptj3nE/zWqvO5Nrv4OQnS9B+1xrzwQOxoNLHlui5i6h
	 FjrCW0rf+xKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782715357.5687.4070939175481351540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28eae099d0e7b392a2b6603058cce818926a6c236208d61e5f17509ee1ef089b
Date: Sat, 25 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737827153
