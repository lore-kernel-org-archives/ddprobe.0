Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A0345757
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780295074; cv=none; b=Kw/y0bKrOV2Jo7FSA1Q59qNN/xnHIT6DQz4xBN9IMRMD3yNAr4H6tAXbCOAE8VLgmHSI4fhw56pd5j8GXQR2lfh8un6dRy9N8/af9oXeceQ3dPeu0SyoKXpAbiiOfoavpaP3vVNYGG4zpNOhkX20JCViseEOAlINRowf+O354v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780295074; c=relaxed/simple;
	bh=S9AVGUKElWAaof6ci0nYmHIKVpJC/Mp6mC8gf1dPsLg=;
	h=To:Subject:From:Message-Id:Date; b=jhi7vdGJjqZahZGcuBZz/H12S1XGOB6qgMSBVmbkn6DQZAs6DAVRqMb8c7QqLL0xt4dBqd9idwik3vfjcEE77782GxGcx1ijnQibKE1j4SGQ6r6+X7+W/8xJHO2au+6jvBdhQlBfyUI/z47DfCAT1bWCcy7hFFMpKFH9P3Uh+2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAOpnHn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAOpnHn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43C7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780295073;
	bh=S9AVGUKElWAaof6ci0nYmHIKVpJC/Mp6mC8gf1dPsLg=;
	h=To:Subject:From:Date:From;
	b=LAOpnHn8xBsNQie7joM+fdU6sSQj/DVyWA2pOhTNz5pVwJSsaBVLWZH1Wdg2zXhIb
	 lnMjSVkdvtG2b3g4bVvQm1iLshF38u6wT2TPeMtSCRYxxuD9oCe2oapvHNQT7fqiBh
	 YD349HWL48VEymhdi78k+WOH5JQS0aZwo/FRCZXMp5AgIiuP25kHNshV677sKtGFL6
	 v4A6Bc4HrbBEVl3qsz+1tjavqC7yDnuQnceBZPdgwhTXLEjd9fiM9XFeJAahWxQ7oq
	 0tCs7FA/vbSg40gu9sxgg/zWdOrQNaRhLF9d87kRCK69v3GP5tM1MdT2jKmZb8W3v5
	 JdbT4rQgwX3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F7CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029507368.3615.511923661684981071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1d93f2def6b24b31521a47eb748b3f61214b4f2ddc9cf0fe85ec887778790e
Date: Mon, 01 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780295073
