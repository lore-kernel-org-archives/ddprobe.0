Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E91ADC83
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787007634; cv=none; b=dhPmv6CZ349gg6grRNt69wPj8GnsLHPNJ41RrP3gHSZN0TjD1CKXI0K7zyObrabq5K5AlXB6d7OMQi8jiebUo8cd+gKvOwLdZpbVkab7i3yaRiVRHbnK4ewuHN8IulYONFu+bpLy2B2uxyQ6TPWFzoeJztZhKMi+PphZKwMe++Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787007634; c=relaxed/simple;
	bh=syx5pSHW1N1m2E9YtdNGVGWU3eyzLmuqFBJWSYO707Y=;
	h=To:Subject:From:Message-Id:Date; b=eZaJTpajPTsbS/cUkOi3niodhTVRihAv6/tGI9iaefP1fs31n2PjkO4kLh9vINXIg6vHwzWjOw6FoqoRb6bXHD7w6j0IveSPPkUSROZaJRm02tNQTE1/pBSlduMuscvhp/lytq8a+kVry17ywDxhxrekLENanXIY9fVH+93aT6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuqC21nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuqC21nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF3FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787007633;
	bh=syx5pSHW1N1m2E9YtdNGVGWU3eyzLmuqFBJWSYO707Y=;
	h=To:Subject:From:Date:From;
	b=NuqC21nc6EwxM3OpKBzy9Xx3V6z6gXK6QJXxFXwU90xtyWpiCRZHzaCiX8jOdBect
	 i6zElwU2tlPEqykxbysDhSFVivkj23rNA/y3Krsv9M+QVx9jQ7gdnpRyNR8SB56vvm
	 Qvh31cpim8HEuQAbJ0FOKb5/l7VOSnM1WVp2QiCg9xzjyOBv2hgn+3X68EDsG18eIL
	 xVuV0PRMeYjhundvyBFlXD8W4Yk1hwQ06l1ZNVimBCkrz/XKbW1Va2IwZAgSJUHhSF
	 TNukbymt2tOtDxWAfxXB34C4ldCR6805ThVPRqE47tYpDAI6LQ9F00bmZvoOPA/QRI
	 HkweWsFqXGphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA8C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700763369.28993.13558234329543056542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a9715b8b52b149f23d70be050c1bf689f6f332274bc03d55fb80fffcb7c244
Date: Mon, 17 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787007633
