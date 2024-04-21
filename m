Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4318520EB
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713669623; cv=none; b=hAR8i9P7N2YOo1Q03/LxXcJc0MT5yI+kd26LfXuiqzmx5m9vZi9ghgbHRER3uH6zjrvaNuzFRK+uNxT939WF2xj5lSKDGiPxjZOP7r4qQUO0OCbiws0fXMbTn6C8xsCTn2EQ15cB7mSX79aUbwBeB5jHWBctoRPG3oEN/kZP8wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713669623; c=relaxed/simple;
	bh=IVy1G7kyl8dyATa9HGMh+CsIoF/0ThLSZK77DJ35OcU=;
	h=To:Subject:From:Message-Id:Date; b=aPDO0c50i4bHxIY7mJZLcoKeeY3bAy2YsmrNwKhO1vtts2SbRarPd8GHTi0tkY8iNx1LkCofCkjcuHtuadhOb3D3Ik6DL4TCEqhu0NxwbjNNp5LGHZVSBO/A5qEvzF6rIjfwAxLk6zlMcuN9BLsh5jRvZdpOWPxvp32w1+kIg5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMSIxKtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMSIxKtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C7C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713669622;
	bh=IVy1G7kyl8dyATa9HGMh+CsIoF/0ThLSZK77DJ35OcU=;
	h=To:Subject:From:Date:From;
	b=KMSIxKtD1gTkYiIj5qxk7fgh76B4SNHDUHQTVVT3a57MyQpI3fS0z1ZgywriRHGjr
	 umzY1aGZQrQOvZqWKdm+f5ixWiYOf39frjcA5ZeGiyxDbo6bL63jkS54fTYEXh1SGy
	 TcEK4ZW59QcDWwZ+U2fdazdZrAjfS3vsNfVwT3voiO725sJjJHvZ7RsdyBvRV+XuoA
	 II0vuLA6Y0UO2ydO/obYIWIKIHYjtCCrvt19RYPVNUYt4+zTQV11vu9VdTJgVyTm37
	 huJDypPyzrwSQyZJDMlay79P7CjmvEyMz7gF8cOcEid3VgZhwHv9KC+lzWqCaj+nCa
	 6P7nAEkaFpBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0882C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366962275.17934.9625836017397918738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e96fa2f7c9ca0f048b10a9f1dbaac6dd073be4c9987f9750fb86be278d2885
Date: Sun, 21 Apr 2024 03:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713669622
