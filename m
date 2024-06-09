Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B15F2C181
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717952843; cv=none; b=uxrvJyVu5JytUc2FcQmiA7WBtTzfWvG4kdlfKV9hao9dXDzm61NqRIvPKf05c+/hU9lHCF6K6Fe96DBFj3Plfkhadhpgv27CRb/C8oL31ce0DAtiMILvwtKO54vFzIpKp/ihW1LU6uyFxOUrsMPPuXzIDLfAY48EMDAbwqbPEa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717952843; c=relaxed/simple;
	bh=npx9iQHfpFwX4BtDo/Po5ZgBLf6fvBNk9NfVaAVyFNI=;
	h=To:Subject:From:Message-Id:Date; b=lWS2cyX+pkdVGne4u1tUELjm43nqwPWrsvU5c7SW0SstrgEaHQvG/qwzNBILVhJWl8z2WIfVjdi+triEFjLhC0NpaaSUKqbduempcKtE78Wx0rxvo4iZhyji7Sh+rXc1vzWUL/bjt2fF+RMi3cENDqifnzEoVPDI3uUCKXSwjDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ai/9N6aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai/9N6aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3BDC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717952842;
	bh=npx9iQHfpFwX4BtDo/Po5ZgBLf6fvBNk9NfVaAVyFNI=;
	h=To:Subject:From:Date:From;
	b=ai/9N6aTTJhbuQLAW2d0Gs06SjGPzixEoVDQWyNI1Mn+PGt0J4SYxRCnHdVzaaxHI
	 ml3xt1xv2RblZp4hr5YIpOQdgIR7+O6Z9ftR76jUzZAXL3oIDf+HUPeoks0Zpa1vVz
	 7t64Iu0Nl9SHja5j3utBC+iIzpu2SY1V9z699wvfrRqLusM/1qqdNScDDRqLa4+Haf
	 1zMzSi2inptwPI7Qc3ju4YVNoUiptxSKinYyOVRroj3mWqINw03mlkD8dRcqp9Ysop
	 yXmFfNt68e/ABYcYUkehClfqYN62+lZdnH7UXsmZLkA2UHC4a6U8tUw+p4AbtGX1EK
	 BUoHerzpiCU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C100AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795284278.3391.9906991627498472873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e5a7c38faa439f061a078348bb6f2bf6ea27050ed30035b7d5f0326881fd88
Date: Sun, 09 Jun 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717952842
