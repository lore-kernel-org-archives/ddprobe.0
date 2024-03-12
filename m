Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F555914E
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710273497; cv=none; b=od9Lja1pARtqIazTAV2xdYwvaNvz1ncfUuMWdrklPf3i+lv147Z10EYewvK9dmwf4he3c1pupxp3+O4MC7PM7iC1o8HBbSB4JsGKpYFqUUZTTTN3Nso685PHJCw+URChxOxTn62L176UE+KyWrQQedDXt9FHNTxHtdEapngCKHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710273497; c=relaxed/simple;
	bh=StvKjLTGoSf7VvlBuxfXTauNVktj09iS44A2gM7e/pQ=;
	h=To:Subject:From:Message-Id:Date; b=CfY5rn9/N/SdTABFeiTityfwt/8GGcJSEEKlQCizOPxd77gBGctIPSGfZ7mQtFHyUfvriIAS3Clb/O3ZQRmv4KNnrr6ohuJ0HLpo9GtRVI1j7aJ4VfnLEHltuwf1qKW7xpx6FWiraJgGx0MdC4VXV7xwwK16z3l7QSpWsVzfR8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdYCUjok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdYCUjok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0A8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710273496;
	bh=StvKjLTGoSf7VvlBuxfXTauNVktj09iS44A2gM7e/pQ=;
	h=To:Subject:From:Date:From;
	b=LdYCUjokht0yCsVnKqLd2Y+Kz9/2DePNIi9xVM+7bKODxpxbyQBXS1+tnqOzdJtRv
	 RoRLqsAKjFb9Y4b3VWnw5YABx0jIKVKUWR/KGqNxaxxxIsBDAgP5r4PHI880uYXJAB
	 zZlQy/5mVTxxtYme25DOIaXpw9k1bnWLcqFCUKvBNUO6rn5WlGT2MzrvU7pHEFCEsX
	 TusEhsVDJ8q99r/rh8o11tRfaIptTZKqzX8UwnwwpJE3befCCelqG/StdY4qGmq22R
	 b2UnIsNWbI/Blp3NoqtjUaDGVZBvnh9yv5bi2wRaEnsjx/KoyOT44cug3JfpqPaDO3
	 4abi+giR7NSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6358FC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027349639.16611.13811937535044219314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e6cb4e3d003a9290dcde1c0f373b02811699a9d5d0a80983da2c56dc353114
Date: Tue, 12 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710273496
