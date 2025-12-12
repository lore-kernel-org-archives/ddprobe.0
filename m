Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE4C126BF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765506174; cv=none; b=PHux7L/PbSY+qxnNK+LTd3upaMSxYWU0KdmUjnT+iUnvCDhlqARfr9bWAE6EZWDy/Cq1zdKQpX5uBdpQCayNon2tKPsd9k4+RVhupKGKYW5kqzMlZbuoYBrQe1Bt30FHkdIQ+k9txNFikJux4R3nrnxUR0iQkumEDXACZODKHvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765506174; c=relaxed/simple;
	bh=ZlIl32f/Nsu+fBR8c2rS99TjsRsB1/uFruBGTCbDD7A=;
	h=To:Subject:From:Message-Id:Date; b=ABoLlcRqBkO2x+wuWL03OtcY2um83+nP/3RDCumJQHs+tFoJbWwVmKDKQ0H7tJl8Agxv0l7T3iXHGRpBT5O1Dbd9Sus6Mrw9uDmVco8neFkczChOznK5kiCqTobkPCMiqE+zO5Ft+zo2b57WTysItAhnjH77zR9jqtPWWYv3b/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSnPdjkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSnPdjkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765506173;
	bh=ZlIl32f/Nsu+fBR8c2rS99TjsRsB1/uFruBGTCbDD7A=;
	h=To:Subject:From:Date:From;
	b=KSnPdjkbLDeONXCiCWL+wDx8KOrMi45MMqqt3dHhruTCQGBknlE0j0KXUsDewzGSY
	 sDJG/dJ1lldAURYasp+JTlYq1IkNpyhMTsEylgu1h6Ju3EgRf9KJQO1yohxC/+7l42
	 AgQ4R1Hk01JrNMJDwjV0qqCGrpDnv8L917jIiI8aF+OXXnWtOGinwQXK813bYbagNo
	 lPVhTJPgp2zGeXwYgM06t78SLiQogPAvWrm9npolqcRv7p+JuFx/xRFUI1hGrkGKJh
	 ceLnn/nJ/V7j5kV1EFYO4GeR9nnx0L7wd10R+E/e+6Z+tQCWfAboEeQdB/w4kHCuWo
	 udiCmvS9KwiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E69D43366
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550617359.12405.9936161431082693510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a91025f59fc8ee8964718a7abc6b7a4654f1127aac66700c282ff2b3bcb56a
Date: Fri, 12 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765506173
