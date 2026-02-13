Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B5923D7E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770995694; cv=none; b=W91XTIFq+/oQZKm3WEoM1im3nAYtbrA9nnwvyQHLl64WYizzy1o4/7iZQtfR6MB1jmZBl1R1RLm/5YMhzhKjg3bu4717A21+rrTkUMq2mA2PsYLYWP0WoqpAO05C2G8t2CH3GC439LBgkowu/a8GqO5YGmfS3N2B32vA7QBtklk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770995694; c=relaxed/simple;
	bh=sGvSvpwKwCA1sQVHuw9U4Fvb0kzCJ6LDED6yGFsDWaM=;
	h=To:Subject:From:Message-Id:Date; b=FNPZ5LZBZvoeyIHv1noVR46eAYqMrn+Qzox5bge3O9Z5rAVTyiz0gOCTfDSu40zUDqHZHh7CsP3zzyNkYs8Vd7nWGsb6GhE8Gpgmoytq8prZBZWWb/P3p5IC1AEX2PtNtjGibU3Qf9i6ym/32KE7itaz+/bBBSbWL6qRKoHjWfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL7Tof5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL7Tof5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A495DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770995693;
	bh=sGvSvpwKwCA1sQVHuw9U4Fvb0kzCJ6LDED6yGFsDWaM=;
	h=To:Subject:From:Date:From;
	b=iL7Tof5rRTsoNnu/GdJ/n94Q0IXEfguS3dM2hWYajsdonED+hM2BBfTwYjmRNBOVN
	 KohW3LwXjMqhwAtAKI9WbwWDRWW84/MD/i7LISsdHbEm8YzSdM6gtenQFkOQGdembE
	 GX4asDr0IoPY8W3FPkNIget5PMRiWE3StSsnKsL0s7WhrDFmYNPA4LzDElPcc6ZCQ0
	 7qCmFrFBvw+hsrq7geybyUJ8dld/T4aOGWEjkez1vV6qljRkcaaR1WUcVlKiMusww5
	 JREYpNYSW3jym+DFA37bX4qO/l1Oj16Bf8XUK2NB4dGHpHzFytFbQpsFfxq8zUu9hl
	 vZ/AFFUbPjBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578EEDF172
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099569360.10459.16632044383372250218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626843b7a0d16353d887c0960858fa9d584e004411fc1b88d9342278f7990460
Date: Fri, 13 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770995693
