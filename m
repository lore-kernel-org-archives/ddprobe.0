Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5F1BDCF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720074323; cv=none; b=lIjQ4N6fj9jaFY6j2r7/qidcsU2KmiPiUOnVnNS1tFFtF68KjvaL28MDprYWWv+EmSu5c6YKPPeF8pZ/lPeQBNDbDcRiCMgSoHVzuLqT3/NYIAYlK1GfD/ta6pIEqC7/WyhSqhx7QgGrbzfp1xyT6mPHmrgp/reK2XxhHM8Owug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720074323; c=relaxed/simple;
	bh=Vz662G5pBMnohS/4g9I9nXI74gLTVhp9oZmXBGKQtkE=;
	h=To:Subject:From:Message-Id:Date; b=k7o9kl+tW8xhjamktQGGqTdorPLvtMSxG+zLnGHLVI4qYa+tkOBYHar7/d5W0BTvdjKSX5ziY6+3Uq/4nfPrapO0K8De6fVpoqTmKMzTS7CoOITTIHffGAmRHcTVbhx2DMikHpXS5HVXuZroeAQ3yns27RpIWbC4H4LR33h6ca8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGEm+Sg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGEm+Sg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A1C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720074322;
	bh=Vz662G5pBMnohS/4g9I9nXI74gLTVhp9oZmXBGKQtkE=;
	h=To:Subject:From:Date:From;
	b=rGEm+Sg3PaVR8D/o0VwmBGn0Hqb/JDA5wUFBtZSLUpFI3iMuVemZqUWeaVbVj9Xl2
	 q++n8MXR4t3RdsFejzYLNjzccqo3tBirk2ptZfjv9WY7/BKnDhjZoCqazbA0NEyVDl
	 3L8/ILn2kTvNuQrPq4fD/u5+pribWYCUI1a2WghncBnmhiGQnls1O3afIhUDaUI2oN
	 npTNWCicgfXcvManJy0hMG8kPO4j0cTfOm5jo7WTpA0nST9L3afv/nFHscPZoLyuRQ
	 8IZprC+NO30QXjJhT+MDwUD2A1EZ8+SEkcJmdOXahJn+5vd4lPpM16FTC9L9NsOEjF
	 Be1T643EB0EiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64F5C3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007432280.15440.7408866179967492133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56aac5d69d0f9821b4d8a520d3098d2ddc7b8537bb89007c7d11718623543d94
Date: Thu, 04 Jul 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720074322
