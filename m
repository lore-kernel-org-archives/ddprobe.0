Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5113F2119
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735760754; cv=none; b=rkB0cIUSYHqfKvceayNoNxY/c2D5dNfZBEoTj1VRVozR+v3ZLk8TWQjZRJND0RZvjY/Q11xZtebn1wbBtARztDfeJEC/a3IfwgfHzK3IsB7BbiTT+Y/WOS40REZDJSsl/12dXMdtNYOKtIVghSRbOmYl0UdsG29aA8p1x3T4p4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735760754; c=relaxed/simple;
	bh=D76I/gx7ZfexPxp7isbARQxdzFqkaCzChOeR1zHxLHw=;
	h=To:Subject:From:Message-Id:Date; b=jeB0H6Xawf7DwRpNI4ZehSVeusHZdeGCRPuzeyKNo9AQUNzn6ljpZj8bGsJ1iGy1tpvzmzg5aBGE1tjlOIluBS2A5chxasoJ/yuf7doTeT1+EjGsJtpZkRNWcxLCg0gapOX4aY96636b/E803EdhpwzevCFRlCWm4Ocv65Fxt5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Tor7rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Tor7rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA13AC4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735760753;
	bh=D76I/gx7ZfexPxp7isbARQxdzFqkaCzChOeR1zHxLHw=;
	h=To:Subject:From:Date:From;
	b=I6Tor7rZtMTSTyv+Nb1HQQOpGrmRO0M/CBoX+RIAfQE1Dt7rgsSSAeeXmq5pDzkO3
	 FLJ81/a+XXjdqGzSiLNi8mHZP8HH9eX5X7M88WmT0zOL5/YFE3Egko4Dg5ViHHlSBV
	 mFI0VM2q3Vgck4hLwgJWMx+2euxBR5CKwettUuAKgv9/21PmedAb7QzjOelCCe/rIP
	 iStUjesHPUVcadKu0pgwaByILD7pa/BMfdMR1BbLzzZgBjy5HpZ97zox70ikXnIzXE
	 ewN0gTNbdrnAe0P59P3GsuVqVNXjaU0UJGpmpKMnGK62OljMDsORYsdWJQ7UW13r0O
	 dBEOtecFv5VCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FBCE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576075361.25946.1275536955685661490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823353a82491d264809cb66a8763c9d65b29ccdc8c9002add0f40e63b5cdbcc3
Date: Wed, 01 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735760753
