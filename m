Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB353254B0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762430994; cv=none; b=tSg1MKoWeJhF2fI4eSUHa7BJRAHIfRxG7PwT0TAu9Ba9VoLbHDf6RiV92gYdYo/bPB4AF6UB8Ykc6WRE969txfWL2CBNFz5kDkYCp1zaAu/VWg8th72s082rutS77BkZnvaRl4zxUhrkEdlzU3GuUhMkF8jhSnI5jn3Moi5zCOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762430994; c=relaxed/simple;
	bh=ZRvzLiMF92vjHI5l9ExmSm7WeyiX26VqQou1mVN5soc=;
	h=To:Subject:From:Message-Id:Date; b=smatQvwkFA3UOI52hjardyZmQUkbBk2Koj9Oi+JAj1t0+X1jx0ocof497tAry+h7b9S0ZcH6nz1q1MNocgA//+qDoqhWTwinUEsjfbmoMnxXV/OiI5HoHhrpMxLLxNul2bXwq5vdBxVHz9DlcUuXMa4Bj7YEMOQaTl2MKphA2pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYXsP7jO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYXsP7jO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0746C113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762430993;
	bh=ZRvzLiMF92vjHI5l9ExmSm7WeyiX26VqQou1mVN5soc=;
	h=To:Subject:From:Date:From;
	b=nYXsP7jOruPR/BWnsRHi38yRCDm9ce+rS+CSCeCoAfLftdKSGlCmCjZoIngKZ3lvs
	 qWNQAQcu2I+/4lQ6TOULeugDkf8hInVWi5KzjJ6eRr9r4ajBGoylwMjIn/nUfTiDFb
	 QhXe+io1oPtui54vXESW4GJyhCCPG1oN8b28NEbM45d0GpH8MuRte6OuMv3MR4vjPx
	 1AxN8JjnC7RT+gKnwkhTJXH2XQgVNDoM8Q9q7gTleFG39G0BAcId457DWsycqlGZ3+
	 ABVu4M4t1bVkJGgEMjGvwZ84MDGpqzFVECHPuOV9sRCObU9D2A4yAboymXjVCEsl4v
	 WPGscBu+jA6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD464CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243099369.22145.17083905480872123569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1f880987e5cf13f679de1623b917a97c6fda306de8dcb2badf1445a8eb656d
Date: Thu, 06 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762430993
