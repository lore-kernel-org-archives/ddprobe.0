Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B71865E3
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734179754; cv=none; b=FxnkPcDy/qkzl0Xmkr3BSn9G18FUiWgNDOuGOFjSm2jRdnfYPX0iMMJ2c3G/fLmZO/IhZ2VEB77CpVr0C/uSF/OOYf0jQObC7TpE9x59dYd09pg4hcsbOsxNCRZFcBF1Kn6QiLROxdttdoFuWHPjDDZlWzR3HiPwf5de9G5mQ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734179754; c=relaxed/simple;
	bh=OaAEI4TawEMVsYT2CiZ+HPUk52pV9pc5G8S7v7UvIhs=;
	h=To:Subject:From:Message-Id:Date; b=IX3XhuZfOBkB7QdOpKjdtl3n/Is2OZ/QmZlzDe6Uez7pcIqtUuSAT+/tTBwyowmR3ekSr1ULl6MPsP1PVSWiVeF+LbcL37oNZhT6c1isFfEFv+H6YJRep5hxoVpC9lOJE75mvJnrw1FYrHpdKbWt9uT7zfL7KJQR+ffXX4gUgkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4vGDxg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4vGDxg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B334BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734179753;
	bh=OaAEI4TawEMVsYT2CiZ+HPUk52pV9pc5G8S7v7UvIhs=;
	h=To:Subject:From:Date:From;
	b=i4vGDxg2VY7zJZkgqhKxKy8finOO9SUuL7QtqKgAk062p5jFan/o8xmSvTVznIVie
	 vxfmiG73OAMg56JyiHCCwv5PnFJufm8D2f2sE/K7zUQwk/apZGckiCEtFhF2SmyCI2
	 TeOUschqKNGtsNbp8AsV5Ue3+XdbCFCqfdo89iq+6x38vxejKI1nyDV2z4mO1mCP5q
	 ES/pn3Mc9KycQ9zDcdD0gsqavAKS1bmsuguZLmMGRWajVufOEOtrSB49SFhxzVCTzJ
	 gq63FYUw6XNoouTRJrfN/8Jxdm8JE9rwRcE5uHOF/eI9V8UVUcItKdnfLvD81J3sQo
	 zhL/1IF8TUeKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A001E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417975359.4418.11660277711508086479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0413d0fd97299725f7cf64c23711a1eeaf8c9b35d632e128021c0f32498aea
Date: Sat, 14 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734179753
