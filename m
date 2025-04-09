Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8C125F972
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744207194; cv=none; b=qX632mmecyfT6Nz6iUIBlJjFEPmbawTCZkUr1Na14j/a64PHCP4EAG9poIbj1F+FvpQaPVBOaPW3VbN0RJkNWmgIx4IQQW8uD5BT8+e/++8wQ38KiMnyJsvfJjeLuRH84nZrw6C74e6Gy12oXWR4HeC/SzwDikG8xdOxRkDWU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744207194; c=relaxed/simple;
	bh=kX78OTIVw2PcswlZsGcqlEHSc5uKOfSB5NvPFJZT0yU=;
	h=To:Subject:From:Message-Id:Date; b=Q6gJdXYmSV0QhhgzMkW3T5zKcukMoZjdHVM3ETBAqc4XmICcDcyvenT3eiQXh90rmyEkqly+dykk008AHLFRaYcIDHsIEfd/Q7zte4hUUp3J4E1xlGWcDTg8SB2uFSzjmnxkoreY3+4je2dYICu/SFhLAMUjTKucfj91oBvonkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvTIwFSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvTIwFSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4422C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744207193;
	bh=kX78OTIVw2PcswlZsGcqlEHSc5uKOfSB5NvPFJZT0yU=;
	h=To:Subject:From:Date:From;
	b=lvTIwFSqcwlWiKJq5vrvqbPR+F0h7PM5HoSR4lCMqhJ45Us1Dnvb05J+NZnCWvrLO
	 IaJWgEOP9wGasMaNXNZkrg1rOXOOXCXKDLqrJWxwU/WQPU9MCkCk9glcbY1PlWB/ba
	 pZdId1NMh1FTzjgbIe10MoW2VwH12fuRktkcmqKl7JrFcht3teVjUimCjhbtAlxn5H
	 hafXsjtknh7EPO371DwIw0pFE/Xew+X1tAdNW/9L4Bxl2MvEWrSjuiS3XO+tI8ALO+
	 Tl58gbIdvoTd7pZNvKUlnueF8JJuo7/2TlN5mCEwY+wwpIXvUwTqC1+MpnEnvLEbVM
	 WnUrq/02J71pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93673C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420719359.11982.4270954025649480356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef473df63b2202fd8b58d39a5ef47d333f82552124116a986530fb4eaf1e433
Date: Wed, 09 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744207193
