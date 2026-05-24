Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C83101CE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779660754; cv=none; b=mru8V+29cSo2ccr+AG84+NvHyOeaepvMou+divHOl58hMP4kLoASeoPVxXivxH2h7EfQ3ILO8pEP4fqHB1OdDctFpZTIn27K7eJtIS7RaYmLjjIpE4Fgeskevht5Hewn6Xv/0gla0BM6eYzsWLrtp4rLPK+ZQ2n3VTqB6Q/XomU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779660754; c=relaxed/simple;
	bh=+1sucGPruRECMqbMqVdPcY7MlK/R9Z5pIekbTcJCFRo=;
	h=To:Subject:From:Message-Id:Date; b=j1+RSA4IZKOBOE0wsKfGBsLaL72FSctbyj3LNeFXy0To7Jovaa282SjTjMa343f0bIEKI6gekHA1LSKZIBWX9WAeXgPvh9bn5v5jfIxe7ah94pp22mRPvb6YltJERrALRrXlXnQoAistqV6QOR52ZsckmrCplyH4ShbJjGt3Xls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHfkXVlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHfkXVlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61A0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779660753;
	bh=+1sucGPruRECMqbMqVdPcY7MlK/R9Z5pIekbTcJCFRo=;
	h=To:Subject:From:Date:From;
	b=BHfkXVlU7KovmXlultX2Y5g13o7mI+qzgpQ8S+moGeW7hrT1ptZOolVdgeeYIznF4
	 onNebeTZ0QRoKN4pp5909dEcAvYrVHHssV4WvFvDqHxWlsFU3NdJh/WAqGKEzRHNnI
	 ierXCrXbYGl5+zGYRL1wwLeww7LE0dshIJuUxuQky5IixDivqCVRk52pN27E55koIq
	 8G4N9Qbe0rPWBvXLehMwIpDRRSRE/mSSujwuNBk112gcuY1Qt6RPjYe90BDN/QACkA
	 JUPenC2BuUK2Uvbtgq7+8HxSEjrQCmVKs3uwTZTWNElHccBAChg3fNuuJrKr7T2uuC
	 lHj7osDMZZMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEA4CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966075368.2829.7419168811011288035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146e534d87fbf67256482e41f6f98ec68bfc3d7de96fff0f2172b73ba2d7e75f
Date: Sun, 24 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779660753
