Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1901433CEA5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797634; cv=none; b=qCvFlr9Z7DtkO9SeV1eR+1pytbgayCeffvGEn4PKbZfEV71PkivCOhmSFzTHI5CbrGcuQ9lcZdAPaCbogmSHL8FDmtP9ZXOdoOoqE9E1hwFchQ76c47pkHy3C33pHobRIDUkufg2+aQYePtkY5OrBQ+ioFRl7+cfVrizj0WCiiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797634; c=relaxed/simple;
	bh=PnkaG3f4NFPNSqaTMip+B0818z4abybWPbChs56HoRw=;
	h=To:Subject:From:Message-Id:Date; b=HW+JK3quGK0HooxjCGCKAh3aiHulMIABy5LSnWdBDGUm1jFHzfq2p81j1S5ivF/9TAJ0XAtV32W7b5v5mFKwW0NYQV/aXeaNamJqM3qF4o+SlA83VHPvJ3YIYa/FE+yBCZFZMmr/4IcVJkmWwmkwPjts+Eg/jZqY/VQJOp+SN4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NabUxpBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NabUxpBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFBFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767797633;
	bh=PnkaG3f4NFPNSqaTMip+B0818z4abybWPbChs56HoRw=;
	h=To:Subject:From:Date:From;
	b=NabUxpBoetDqHiDj/uxBHHNDot2Xfu63opPGrdATnzr/PESJdz8kmVM2zeWg90xxu
	 xnpP4hdFj9/SpNgjjiqbDq3vPtVpVBRaHxhoXSXnGX9O7zRyhIcyh0QHUIL+X9ASen
	 riWcfzHHLRFk7BIfCqeCSc/YE0HiWXtV5EkSBlEx3hrT/0Rp+cu9RYeGoIHZJja39Y
	 ozIpUHJQf2OqXIuNIFpn1ZEpZ0Ns1lMVysX3ZLH54bz2oNuP98FU6RD3MKyyEMBTNG
	 TfJpeDy4pXmbxuM+zPAWUcevSZiYVkGkc3TzLRUrwukoGQDl2XwbvbbE/J4PnuC76V
	 jKWix18rBwogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DCCFD641
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779763357.21912.10613069503145610525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ae3b3cb4d42dd7a0b633831942c36456bc123097732a27ad82a1c3ce7c7488
Date: Wed, 07 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767797633
