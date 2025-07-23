Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C16A31
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753281594; cv=none; b=scKNhqTdY4/c0UUQf3uv+7abQsm5B7Jjk7lulIR4/8epe6i/DceYHaX2qUfWkejHn0dP9diUIzRrcDUlsGIz1QOYwsM0fQR2lhWPmTPwegJGGBNADghhTF6qH/OodAcKt6O7FvpOwGq2IEG9gUS/QB0npIgdYr4IkWC+NXayaGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753281594; c=relaxed/simple;
	bh=5+S5fnPa80jS2FVXEILj52zaryjfvigTLuc/oWW0iF8=;
	h=To:Subject:From:Message-Id:Date; b=Ra4nwwmp/TvqjSCxApA8kJ1AMMKKIpiGQ1dyuYtPeyeF+vmqzeDjC8a8H6gyc2PEcbmnU1DVPQUD7aFsSWlEpFfHqJGdq5Mo9E+CQ1TgSCH++gh4r8TdkPOzyS//ZFIqA9wNR11+ipjBSeWu1xKdGqsNFIJaeT7b1ZiqytlKY60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMWE1jsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMWE1jsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33BC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753281593;
	bh=5+S5fnPa80jS2FVXEILj52zaryjfvigTLuc/oWW0iF8=;
	h=To:Subject:From:Date:From;
	b=XMWE1jsa3lnM4jZxuwUa/oWXsw64rehDDqFw+XqAtBl9BRweTPpEKn22agZV8XFZS
	 E4d9pANbHynci7PW5UhH5d+1c677HxZpO7huPoj5EBEgAh1P32ExaXiOvv1JTsLkR+
	 be6yq1Psh25YjYs2ee/AGxdsCK19pkBa/FrcAyUoC100lQHRQzh7Hs0ZX6vCUfPbIb
	 mnDU3duJ991V+09spPHAbh0doBdKFqDaJvoJK5QhQU8NRWXIWQHJnziGjeIh07y2AX
	 jeybFAOk4AgRQyOGTOraLh4ZuK3cV3/TmF3h2zhdYUaG9UmIoBzBYk6WvcEMoNbHKC
	 60WQJ1dj01huA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91782C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328159358.23332.10728604417025643545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74702fe74a14928fa20923ad0b4018cfda3ed0f0715490117a8f26003b35f4b9
Date: Wed, 23 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753281593
