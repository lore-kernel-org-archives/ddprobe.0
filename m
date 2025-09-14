Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265CDDD2
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757875794; cv=none; b=iljAFi28jhSFQnT5K0Ytb65pcUJg+JmaUxoe4txUEAYx2MiILh+gnYzkmHCluOrbOR4oMvTQkMD+2tqo0GsW7wutmaPaGQObziF28x3ijx0/3MINSEZ0TE8UghDON4scQXM6j4RkIK2yJnvUGgA9nr5CrcJartOCK4s2WAg1IKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757875794; c=relaxed/simple;
	bh=ZdDBC+OBzaN+X5j0aBo2Rzskjj92nZRjo3ISMDcr1tM=;
	h=To:Subject:From:Message-Id:Date; b=ODuQM3FwU0uyd4fX631uAJKnvwz4blux5ueU8F/y4DDbNcrJ1c1+R1epwll47DTSrH6L4FY4IWZH7wEp+XIlX5nACLfe+JfCBNFdpo6wgim7LHUG6BmuemayoMOBIZxgr1BAg2+oPmEKYXkrOc1yx7+1aMNTibS5kp9Ao7r2CnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj7uwXPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj7uwXPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757875793;
	bh=ZdDBC+OBzaN+X5j0aBo2Rzskjj92nZRjo3ISMDcr1tM=;
	h=To:Subject:From:Date:From;
	b=tj7uwXPv3TaGUwVdoTpDvyGnJzB8bK2x07fg7u0QBn81p+dyz6/66SV4bbkN9x78i
	 BrdxWod7ffs8kMnrtr8gWp7E5TPVTAlE2J4XWUEkwyjwv6ly4pA7CZ2n0lvQMQQifR
	 ofVLo/eGezfaj2A5Va4Eo/YduD9BiQm6Ac4EQeGXlaVTYOrxNnnk0pihYuwgfLris1
	 EUrL+Y3Xq+MuKGQR8Zfi5cZdNdyQYr4DNIuxoRAuOgZVRLjY89b9CKj7RRARQJuwvi
	 FoMqm5pJ+Wu15HWSjjUnAcz5ex7G3RaB3ACTHdMwWZXqIxo7EgRA9bG3n4FHd8vTlS
	 OtbxYpcvCEg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDACA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787579358.2893.6289843845862512597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ccd8614801af4611e3a4e48db8dc1d7028e85e035b3b8cb2e53cd0fecb9dded
Date: Sun, 14 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757875793
