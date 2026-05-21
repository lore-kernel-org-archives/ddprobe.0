Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48268242D7B
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779378754; cv=none; b=T6e2vL8wY7UTeNWigngecujbTO0xLm2PHEvau/7ds9LlmdAxydxJc8qXPARpvj0ztBqE5Mg8SmvKaz9B90G7/rK3Dar2eLHg5CnoMBRd+wFGG5stsOuHCmTRRmFjdKLLvM70nBMnJgqgtfI289tbnhFYwHD/koAFFvVQxjxACt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779378754; c=relaxed/simple;
	bh=PH5Ud1B0ImtxR4evue7TLZBxSuKxyGjV4a0Gnkw2m6w=;
	h=To:Subject:From:Message-Id:Date; b=vCe+PnZEQUkPTdZLnQOs/quPPvWd4qLmmvGqy3jzt/1S81u4IoCjYrXzgiIrhn2fusXiTQMTx8xacolMncu406FPOLcOkx1oXv9jADn5cU9L9KNjY0GMZVREdStTwWwhl3Xqo/h5fEDRvnkRhL8tgAwWh8+4OG07duzQs0x+5QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVK+lstW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVK+lstW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2754C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779378753;
	bh=PH5Ud1B0ImtxR4evue7TLZBxSuKxyGjV4a0Gnkw2m6w=;
	h=To:Subject:From:Date:From;
	b=VVK+lstWrPBbJvD0wKT0QYZXzhEgiFPwGRI4lYGGKIwl4BHD5jKoQCTNdpCgYcvqW
	 VMiP9PxCJj9EmDfQRX/GvGk28zUtlOQ3LZ/ZwP+QEfI4UnjWSuDxx6lTlMfkrFlvBK
	 lXrFiJ5qMVmkNm7ftNw1CHyy0HzasCfbrypjrgcCY9tnMdldnK7KoY6XYMn370h7mW
	 E8vou/M/Hu1PiysM3x4gLWlzsZU4S9XlQSRTU7kYeGmbpakcQ/R8pzyq4AVDBtVCJm
	 YhOea/EIGqbNnRMjdA7F9S3qf+2GUpb/SNarSewxIXOoWovTJ/DX5800BY4/pe41+A
	 jvVqvY8NA6rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE952CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937875376.25528.7104221599989588406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86624b91f67653428321411dc3bf894f4043880e05d160ea12cac186d40d215
Date: Thu, 21 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779378753
