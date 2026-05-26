Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E926C3B0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779800554; cv=none; b=QyEN1fd8EKtZsw1R9IVFrdqcERkQtMYoeelhM8q3S1B9/59jmklyDOozgu72MOfj063PagtGFXlizQcgzfOulYdoOc6Hftww7ELWzFEEeezYvswT9vKjqYApHZg/nKlQKe4zP2YgWPXdz0QU8wERbVddRy9QU5VJVwJ0xOkDSC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779800554; c=relaxed/simple;
	bh=Hz6GGqyeTwNF99j/ogxZbXDmlCTs2V0yo2xx0IvtOlU=;
	h=To:Subject:From:Message-Id:Date; b=hVsC3vBMG+32PS3ZLeTB46LQjTcgh59FeouY+QZG+WRFuxltfQ+74+Omdc0D+w1LUrM6LNdWZyWYNbtfS07g7cgZ8pdhBYufF3zTLaG6lVTZ336OQ9ZSqkai6kH0P18eEk6UBIQ6AS1RvMny7j0RcrtP8vSQI29afSpaqbSvpY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXLn8/RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXLn8/RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EFDC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779800553;
	bh=Hz6GGqyeTwNF99j/ogxZbXDmlCTs2V0yo2xx0IvtOlU=;
	h=To:Subject:From:Date:From;
	b=YXLn8/RDNatOgKo0XM0h5VKfzkUOdaJPah4vJRtl8kUxLj1mFlt68YDDbHok8+i+B
	 vce+vOF6H59Nthn1WpPv80+Nw9YgqwyOPIRaDCv9Dkflg6bM8FrQ/3j4SUROXpx2id
	 oKJ6/vpCHWFo1VLBKzjcqa5Lc1QnSy3eogLpnH/Nh1X1/SG1k+2fuvxilTEA9pWyAz
	 DGlv16YzPkaNrEyB9gWeII4DMFfGmWpSFDiOBsPEtNkIM4hv0DUBw5EHC3aX3t1VsT
	 KYZJLjFhe9Pv2j3voz6mS3Uds8zEB1zfv73dKwPCGqTAVmqLWGObYwO6mZeJC1zZ3C
	 i66rvHdiz85DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45BACD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980055372.23873.2595121767595857872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31c8fd344bc302f4333b90297e7ccebf421d1486bf6162c352a99507a82dab6
Date: Tue, 26 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779800553
