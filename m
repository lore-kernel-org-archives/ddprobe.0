Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BABB36826D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771872294; cv=none; b=Ln81ocZl8udak0R/E2XPGJ1CZcMyUdqynVP+S3s9g1rjcO/WlsxQYvfnbikABpc72Kui5+6+M8wIbFZL+7D1gbLPnrxwpjLPSXp/1kmRvhm6yMHw6dNRQXlkwzY83wLiLhi2y9//Ld0bOUZd/vxl9sXCN1tiHnFDfSjTNZONIlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771872294; c=relaxed/simple;
	bh=qadzryQEFi5iz8EnBnDePBugrtm0M9MbcmlheN81kIo=;
	h=To:Subject:From:Message-Id:Date; b=bf5IzI50pgYNQD4RCez3uy2TtGGky14zlg3gzEX2BaUpEe5cMW4jhFliNhORf9G7uT4uVX1jRvGr3tCUmqmMmBA3b92SUt+uxDSv33OhZTV4zLEV0xi1NnUJf82Nyl6BvhLpzwG7HGvpRZXCuGskAKXE05OfOro3cGNC6xJRGQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xitme+GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xitme+GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7113C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771872293;
	bh=qadzryQEFi5iz8EnBnDePBugrtm0M9MbcmlheN81kIo=;
	h=To:Subject:From:Date:From;
	b=Xitme+GUcKIeUXpmzGZk8XPBMUovtQaDYRIfa/mUwtUhsDKeOHLYbA1uYonLE8Fym
	 o7hZCYKNH/gmxUDu9CcQakXhJJzHJ97yCbq2kalHmNEvGFaAwaJyi6zNfGQ/3JSRtF
	 rUckqCkcgcspfb6lYcvS5qyzeaKihGBouwT1ZmiSVS3a8BbWCxnCOPTiEDmyq7ssd8
	 Eb7b7W6v5vBIQtjCaNHUM4gKIC+xaT0jW9aWXnwyykY4HCiv4LPMcnPFXDccbFwt9F
	 Jk7n7wHAeAq2er4kcpRveLweq8gbH+lxh98N+ZZqFGvhjCRy5QonqYisCoYGp1hDTT
	 IYfSBi8yeQH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2DEC1120
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187229359.16623.5820185439498121857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc1fc6a7d14c38f184d185abe949b87ff65c3c65243d35b94a993cebaa69bd5
Date: Mon, 23 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771872293
