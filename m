Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C4E1FCCF8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759333794; cv=none; b=WiE14k82/lLRRqyRI4J15WHhiKKIs674Hk7Sykwx0oaQCJ5SLZ0ryk+f4lcOuIlrNxjbXDWp9tUy+iWDPIcfHhNHcMdqaisNHU2L7gilNqtP8LCeVxz4qJAL5JbNGc7gHljtSKnTSrFuiWoGfYOvRlstHQuh5o/+4noZNN5TzAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759333794; c=relaxed/simple;
	bh=Cl2/QzR2huEMknZBe6cUpkPVnZ8VD5/swBT/K5jyero=;
	h=To:Subject:From:Message-Id:Date; b=B7CtvgF2czRo5VGbokVUfjGFStMNKAciOQktkCWmtHb+ELR1kFur0rpbve7s9gl8QCdywLeKVX4Cu1nQvHp3faYgx2m68mWp80aYB0cpoEEGEqljwtzj5abaxcNciQ9Tmg+LxhDI364px/DsjLR0mM3NwOlls53YMZ3N/gNVGVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku3HXni/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku3HXni/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759333793;
	bh=Cl2/QzR2huEMknZBe6cUpkPVnZ8VD5/swBT/K5jyero=;
	h=To:Subject:From:Date:From;
	b=Ku3HXni/fXeavPONNiFOqCFfccBoL5u3vvi955SFDE+ogmeelDjp+eCCOVxc6+gvx
	 ZGKjoQFl74OSobok4mzQTibAya2/Ro8TtqqXHs8ewIHKM0qUdUzmt9jhUOa24nIqas
	 Qydm2QT2ot+7LWIhXYWhmtUPj3kEf0z2graWYsQzTNVa74fR06bc4VpPRewgo4sHro
	 MBS30vhUpynka7akGNhlR1VGOJJYmIbEMa15aqPSseY3tHh+doh9bXQ+OCcgDY1Saw
	 dNSZCPvdC+EKulNoIVrZEcWG0BhFoTo1m+9lmIdaUesVH3unWXc/rzM5YvntJCpw0D
	 hLsAzDu1bAjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FC1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933379371.26901.7545368523427621934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d2e07090805aca854d417649429164c553c0b9f4a4d341c15abef37cb55c5a
Date: Wed, 01 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759333793
