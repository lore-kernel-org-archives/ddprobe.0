Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484281A3174
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746276594; cv=none; b=g56dilSCy4vhSF4HlXqsQODdG8KDGFOvzuINs5C4J7VgCaFotNKO/NYlVhkciaMPypIivYY4+RsP7rpXd+WhOmXQ1nFcT/gxgp5/z59Bj9CLm7Om+HIugDZUqWaf5/A6iSNtqiYj1nb11o7Vbf0JVF4g2My4ceGSMurCQ1IQIjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746276594; c=relaxed/simple;
	bh=JKoMcBww4heh3TguEodzZiQThZdjqp74VRBhJmRp5qg=;
	h=To:Subject:From:Message-Id:Date; b=shKqBAQK/u3OjXekM2vtVvS+BwEziQN6RsdHlc1UwG1aS8Paze2BKAQeRBgCA+vDidgsGlHJItMZcAKYV9IF72Wfi6Eduw9Uy6ndIimXWGeFcbMTjgL8LQgqXZx56PyvgMMLG88SfSXEM9QZLbcsaz2x5xDg1q11j+cC3oNoso4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9+DpOvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9+DpOvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5052C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746276593;
	bh=JKoMcBww4heh3TguEodzZiQThZdjqp74VRBhJmRp5qg=;
	h=To:Subject:From:Date:From;
	b=s9+DpOvtP5DSTdR1Fjt0kDztXKovNee8NUQjguV8KL07Qpaz6O4fL7NSwaxidrBgj
	 9osJ2HvZ6CJRAsT1QMXItaB/pooS/ZTNhGCWXxndCn5TXwh4R10X6DJdGENZ+adG4W
	 8z23N52N1Eyy3aTnTARnAPC1R931bwhwX38H1iNppffr3cv5OC9dqEWGAPxmO8QmHD
	 /NWe9X388W0mCWnxRrEB5Y5ZRApC+Pz31l9doekQxbkO7IM90PI6C6BL0in/cnZ2wT
	 DPK3fsy1eGEBvuHJUdEAnBwEOpkDJe2iMOPCiJxEq5w4XvBgC9Tc4JQhgdBsYX+uJk
	 GS4/0EiDTAVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DCC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627659357.30410.10289274353807395011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a612c7a4a52463efcc43455cb7d0546be6623f7972da043c395dc997447bb7
Date: Sat, 03 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746276593
