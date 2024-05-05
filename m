Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2F0191
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714867943; cv=none; b=q/UvTIxn16r7WcAdtBQqVpIUaNQ+6GW68xw5ZXGPYncHSjp7a27WtMaMgW16AjEtNTRG4lQH03dNf5DS6rpOcA7PsHAB93+qCkircbgr87kab7KrrDa3JWpQngSzO+nMlStm97wr1MvqvSTZrTG3tE2NLFepkZnbaPFG1ELVPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714867943; c=relaxed/simple;
	bh=t2PIcpzgysJKluKVDDSclmGtoQaAy8a4ao+t2zwOI9o=;
	h=To:Subject:From:Message-Id:Date; b=C7Nm8WPAOtMPuKKoKP1c9JH/z5G81G0bjwtkxiSjEATaUHMjoqAU5UTtVghIDkhF2GkUcUKmQOmHTgafxCJMNgHoBqqObgJ7Fw3trI1Ficg0bIUKOuOZiPUTCf210h0Rgp4yHPXHnJon/nckDWTAE+PsMLMDUdvzj8lPkArc7SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DStHQdO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DStHQdO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE4BC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714867942;
	bh=t2PIcpzgysJKluKVDDSclmGtoQaAy8a4ao+t2zwOI9o=;
	h=To:Subject:From:Date:From;
	b=DStHQdO/PqJncpGd+NOT16BHzUXvYRjcsrpLcTnNqVFTm2Y1jOYvafC39kN+PpXip
	 gkol5RiQMXDNCtfj/HYIwJjT8gliUHK/G3r4GVPlIEUlOLbfQks9bffhzGJ6KUEF2Y
	 GiPfUc68w2qoRB6RPMQLHl/pBjRcj4u4ECgKwdX4VNGsACWr8QHTHGYEHV4H/hAUop
	 T/aXQ59l1EqUWBbYi9H35zAVnkU4TXzUt4V6k3/WApu9aUrn9tEFjYJsbHns34L1mp
	 SQYrL6iCjWXVCFrSnbxnXokv+JqM/BWj2oGIEpdHJsySs7kXvzwIWiHXJNAf5owzAP
	 gpSLM85hJfv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C191BC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486794277.1495.16751620510171784748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4447ca20386831d36681603a6a1743221719491fc249dd5fc5dda06facbd2589
Date: Sun, 05 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714867942
