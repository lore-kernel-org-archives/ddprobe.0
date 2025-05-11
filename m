Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E53225B68D
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746981594; cv=none; b=FBxjtE12bsWYnsLUo0rd3en4MMuNAsJhcWuiI0DGxsl3csAns7J86zIi276R8Mdp0UDplLHaB93A04Cv0OdvzaYocRA0Zc9UEghsnH7HyZWKkIDaG9vY8g5HnvFdrW+GyXMYIuC1LFTB5dhB+Kg89X6Qov44jgwFtfXW5qgF5u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746981594; c=relaxed/simple;
	bh=r7OO8wqNWGKWZMBhoyiplJeZeJH28JTAZjTHgETi/rg=;
	h=To:Subject:From:Message-Id:Date; b=q6fTbk/cpyCstmoZ7VQUX/Gkstarqg9txOPPlsIryCl/QvwKiPBlRIa7nT37V6gDh1DZaEsvS+tS3amSAlyrp37IJ/pS0Xe9AN9GHZfdZCy+GsFOSZxbDbMQzLV3BcfA3hTb9E/Qcl+CWVAKDbDVBqbvGtA2e4tLO2d6I7GUB8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C07dMz04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C07dMz04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746981593;
	bh=r7OO8wqNWGKWZMBhoyiplJeZeJH28JTAZjTHgETi/rg=;
	h=To:Subject:From:Date:From;
	b=C07dMz04pXIycJtY2IWEO6oQ+0HWJhMp/NtlGq55XRgmKV7dgWaqGcHF8mAbpfCID
	 zumKY6wdnkqLNJRIRf6XAG4Bz3445cZk0xOjNcl8hPrlIJ/aL+pV/5Fv/j23hjp1ZE
	 2qy8rkhzykfITxwP2sr7NIg+lG3tp8Atd6Hk7FLgSKSuqoxYpq/BmQI+PM5mjZSKg7
	 XhV2O4I6w6LKBtOsHCIIHlPHeP50IfMlusT3EOmH/WN+TUp0Vhfi70zXaZWNDyIgvr
	 AzG3IYL+XbYSSrCcIvMfRie9R3fmLqB2SUBifL7pjiGIg1i2F4LiSB2+UbmOxVX59X
	 jlzsFaNWWRiFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97617C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698159361.27295.1621076200878841197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b8ae26063c6d5eef38801c78a671b1ca36d2e26cb589a4af4f52d982529ba5
Date: Sun, 11 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746981593
