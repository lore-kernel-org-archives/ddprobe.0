Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C4F37BE6A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776288454; cv=none; b=Eb1NAMW28Ua40dKF1SdXcnPzgc/gFzdrboSK3Kxsw66sdFDxjctMNWZ+0omwvX5C5jVPKaHKC8+lYEggh+kwvYlfdnwklL5BF+8M/aXm234or4IKWJnzYEe+0IY4AbaRhHAVWhy9QaLWXQDNkAUlnWptAE+faSS1kmYZLocHV48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776288454; c=relaxed/simple;
	bh=MmX932I3ut4fmN3zfcC5iSCTYY1+oxKM7IWZMi3mE04=;
	h=To:Subject:From:Message-Id:Date; b=Exg7S9kH7M8LqzQTmM/0U8LEXoytR1XDTEsZ5BVo4+1se5+BCio3+SFIqG13klR9MdWTwTnGqStFWZ+nkU2eICh53MYZQC0yNKg+MU99x3T38M0ERHqdi69jh3mrhk9SZbt3eau/8NFfe0Dsk+cO2vgyC8kLg20IiTJc3BGtaow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNBW4r48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNBW4r48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E6DC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776288453;
	bh=MmX932I3ut4fmN3zfcC5iSCTYY1+oxKM7IWZMi3mE04=;
	h=To:Subject:From:Date:From;
	b=hNBW4r48q8CoHH/MYfayjBr0vIjbWAwPilJfsUW/clLlMWawt/AEBUCVPchmcIKIy
	 hZHD67UunkfpBzq55/2D4BtrSqNhH+ZZixtpKWRzMu0XFLcPyrllSh5bZ1sodxqPfY
	 mfefXyeo5+rmJXXzHgHHCamQgLlTm1DZQ45+gGb8+piIlQLywXMgOpH8kr9h1XQDtF
	 cKbgWvCuDhswmjoBSog+eFzS5JWIeVNhTKJvwNzhCFa91Og9pb87r6Y4+XAHcpKiZM
	 Kv5tz3oHAbdtJk0eCPXzAtDNzz/cS9FLRpRm8tOU16e4uTTlcGFcxSGz6qKybZh3QE
	 02phgqfSCu29w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DF7F433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628845368.19157.13289997900900420740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279535c60d53b87c9b10b3b60b602c196202a3922fb173ff5f548d813901d8b5
Date: Wed, 15 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776288453
