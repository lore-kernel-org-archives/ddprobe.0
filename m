Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4687F241116
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739044554; cv=none; b=NBguJS+T6FlbD4RO8LPVN+AMeT6eKWFw4MSsYDLxmXsK8VomXOl8K0FzgWL9+ltR6/5Eh2BesB9+ivT2RMdjrFut1M70ill/OTLLT8ZUHu/bMrmWiGebwQEa7uQNkVEkzBm33Mt/RrFxIAXcL7NrvPdmgmWX937ec/PSsHa1TOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739044554; c=relaxed/simple;
	bh=ytbZ9OUJ25VrXTK2g0Ob0LnfgFjTbFV9m6RiCwUqqII=;
	h=To:Subject:From:Message-Id:Date; b=ZFIGbZLZO+LgBXt9rsTBgFk97c0ON73Ti/+AIxLOS2I8Fnx6+YD2Nit4j54S/dUeq+by4ieYD54DhGLZinQ5O7WJblfs22BS2dJ0uVXOpiYknIkcwKUS/eZjr//ks2gun0KNqB3Uqd4fZd6nEiHNDVJAWg9ryIWpi3mjI4BOy5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQ4vtr+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQ4vtr+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB73AC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739044553;
	bh=ytbZ9OUJ25VrXTK2g0Ob0LnfgFjTbFV9m6RiCwUqqII=;
	h=To:Subject:From:Date:From;
	b=vQ4vtr+59quGwLcG+Azq4hd6rE2ExojFSll48wdIqNTRU5WPzp/cowLwVccCXb1jt
	 Ws0INaUFqh3PrVHgtBHXYbTmEVIQHCiKc+b15QCRRKCiWSVW8cyEn6uhbqNJ8M0uae
	 aMDDxCjtrUBXYCywY2muTaieSowujtkj5zlM9+w1rZQP+E1vt7DL+CZhvc9A8iI96X
	 3UG/9hLCBRZdsErTHNDAm6UIlSnxvau9lDMo/CNS7NEyBICwE1+4d9QaO/ErNWOWLv
	 mN58UiDVHQq7/40QTxK6PTwGHdJc1jdPSZg7X4NJD+MJPisfXTU9MLez7IJgbH+S2Y
	 w6TpmOjPcfk5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D2EC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904455358.32401.15530925479388839000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b90f8b1cc7f03edc5730f785d88e8286423c061798cc3aa195e8e40bcebd70
Date: Sat, 08 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739044553
