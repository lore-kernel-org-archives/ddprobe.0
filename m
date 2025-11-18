Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C21302CAB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763502114; cv=none; b=Pbk4c8lGSVOL6nyAPaJZilhodxinhBt4dMxnrIdtxuq5iELYXvUYq1/CAilNW46nk7WqgrmHC+VSgB9ULNu5z7dcr8CZzOFx2t9nhrrdKSepu+srlQlPpa6cKTgPWUejdWYcVnlhZqQrJMqHFE94Q+vCacQac5aTNqmJYnuoZxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763502114; c=relaxed/simple;
	bh=G8sL+2XfAFw2ylN3sz+IcG/+qwbZYc6SC8fzmYfcePQ=;
	h=To:Subject:From:Message-Id:Date; b=NDQHdUmA0jHUbWRREIJiAfansgfwr+2nF00oXUPrnzhe7lGDHOp5JxUJU0GaAgIX/ObBcE7NxhD7qlPS/1D/pSct/nfXI6PjdkqgTUFnVYHIEHn9VtP+Xtjn7qE8RoIVE+sUz3aVTzQSngVfGXgVANn24ntUsJTJd5kQBe+gyNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SarVM/z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SarVM/z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7749C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763502113;
	bh=G8sL+2XfAFw2ylN3sz+IcG/+qwbZYc6SC8fzmYfcePQ=;
	h=To:Subject:From:Date:From;
	b=SarVM/z3kDHKmoeXoeSbBglLPskMm9xFNStLmQMh4xyFVFSNHUKuqrGwNnKkkmk9F
	 1fov/Uxy5l+LnGaoiR/UNHaF6as6zczh+I518sfafCDVo1l2gZKKG5a4meFyO9dFsJ
	 WwcSTTdd/kIDVqnMm+YyMq/qrwAYRKvrROfWaVFJyRc6VCJFd9vcAhSHma3e0JlIcC
	 sfJ54TKfXpCHeq1tc9WyGd+sTG95Cr0kTEr+sv+/ZpDNN3v4awJ+N1fVslJFnVdO/H
	 ZLJeDOPtTZCyfkgGJFlkPdlbkiWG6lj85sfEWRnvIoGDBYFaTIAkUM33w25q50e3ZH
	 coICfI2TTM8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051FCEE334
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350211358.11223.6005261526259040018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068daf398d1dfdd2e4fd90f496031938bb0f89df2c6ab8b828e29e6b8a7ab287
Date: Tue, 18 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763502113
