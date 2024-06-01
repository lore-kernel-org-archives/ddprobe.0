Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5CAAD53
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717236863; cv=none; b=IV3BO8S9VbuK7LX8jfwliW3uPGRNdoMD0JqGFzVIm2L2K8Fumi3RkkVFC5taE/CzCkDiw902N1t6STtw3ClK6lfoYWSSRFSVFaiWDsRqni8mrMMvKVVDVe08FyKqMuZMZCMuIhHoV3aubnw6RChgC1YXRmoN6UQEB6+vaK7bT4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717236863; c=relaxed/simple;
	bh=agKB8xsoGHDEBJw+8EIW+ves/Y/cYUdhnkpgDcW/3Fo=;
	h=To:Subject:From:Message-Id:Date; b=eFwVMwEPuycbvIADSaAuLOI72d27STK70S0QLsRUW5KK43fxYMP83m0JLSlB7mB5D0G7acGRjChIr3bM0Ngb5F+vH416wBaMZv/TtB92y3w2aV4vBF27IhIZfaArqLc/D6/v+54mTuCFqk9lNQlC5XJ9wpEi0NQ0BN4Xv3Mq0jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlgMgqm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlgMgqm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D908CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717236862;
	bh=agKB8xsoGHDEBJw+8EIW+ves/Y/cYUdhnkpgDcW/3Fo=;
	h=To:Subject:From:Date:From;
	b=GlgMgqm5vRUpSk6bXaz2rsntTwFOBFO8h2I4MBHcquhOTlL2exlxoNjYayyu12Hpe
	 LgCe7MQIva3VIQoT1nF0/EOHLqhpsdw5kC2KH/j6pBdyDswyw6lTjqwzPtkpDK4ef5
	 q0ZBp+T6XehBKI0j663aI0U70Q/ZQsVLsxM7Zm36lLpb1aYObXuwKFU5RnHOQgsabK
	 F19LEpNljcEwi0P+ukYOIiSh0HzQklFjfNFE10sfuHfdrADiSWoWwzpJfGhyA64z5D
	 bzVO3hHfOqBYk4O/uGAlgXo5Nhcm+JCpGbzNVHVKqHBX2m0m+/A6uxqkV6bcJPOhoC
	 S27gTB47GkvVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C566AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723686277.29218.1307976232033496838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4392311c48049b72a21c886025b461ad54e1c6d1dcf9e39fa0fddbebe77352a4
Date: Sat, 01 Jun 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717236862
