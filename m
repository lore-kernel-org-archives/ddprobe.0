Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C767E66
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707473297; cv=none; b=LGWj2qSwcVFbPVKfHOFRfuMSw7iiRZhgJBzh/LWZ1MFjEdaO1HjFvMlWib9yhkTyHg6qKTIvAJ2Zr0cbZY+7FpVkL+ByZDLqBZczrRe05QAnx6yewrnxcxw3v9HGKOldauwxtydgrB1Td5S8GGaD4brxtSMXCrm+QPpUDoRDeek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707473297; c=relaxed/simple;
	bh=s4LtqSyyEik37XFFtgu90vPRaz0D1/OHyVJQBBsSpGg=;
	h=To:Subject:From:Message-Id:Date; b=LakfbMElpnDC6C+n8yKf95srN71XWTMUKfe/LkVKurs28z7QU4AxRmgaa8Kvc+ZnfJaWGJRlxw68b9c537cjWzZifDw8JZ3nDjc4awIQhsAL6L6Yv3fcI0Y8YM51JLVbnorO3YQyCaa3/c64falRI+b21TegIlOTdUDwwyqcG5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTYtaq7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTYtaq7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86042C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707473296;
	bh=s4LtqSyyEik37XFFtgu90vPRaz0D1/OHyVJQBBsSpGg=;
	h=To:Subject:From:Date:From;
	b=UTYtaq7BDyaCmEOs9F3YGkeO1NOkGrJt5IVxyEMUEHvyvr1XHhu4+Q4iJWHjV4rwY
	 Lnzu3nNXoK6Jq8M8PFp7+nsxRGP4M66v/LT6RkiYZKCn569lA4rr//zuPaWAEgR1wp
	 1Fihvvxqo9COJT9wg1DLdSDU5r4L8VVUXOHc4llShY7A47Bf68DF5L3mHpNjO2qdOo
	 uXXMdLQc0aWC6L6n1Iiobbx1JTJJYaoPF7f7MOiwthMICPnLxRFtr8EoqAw8p9aqNg
	 pmsd6/pYc7qPtvCTTWjV5GWDWNC3b+iehDUXVVokMBJKugKuh+NlZaUF4b/ET10jq3
	 1BkVvypDJ3zfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DAB8C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747329641.32261.15254498953625139343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ac4d809bc55a80eb8c40c78f981607b520ff19fc75897d4f96ebd991f1cfc3
Date: Fri, 09 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707473296
