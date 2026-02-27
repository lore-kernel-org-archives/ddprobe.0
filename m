Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04546270568
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772196294; cv=none; b=LvSOodbKIQ9kLY6NxsSLo+LFxgGZ3NHqSChXQuc48SNe9tyEi2JyC6byy5myLwx7w/yzRzumZtlBNlk6GDpYFhZ2b8HuuajPQPaKtlSJLH3OSAOYWtKr5/JUhcW8790RxH9sQZ9AmrM02i9NFWv3mZr/onnqQ4Mda2QxHt9oRmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772196294; c=relaxed/simple;
	bh=OOh46z/s0MtI0XXg1PC9TFH4nY0N4B7WggMn/MUPvmQ=;
	h=To:Subject:From:Message-Id:Date; b=hg3wS1TxlGDXd938DK7oRv/xL06Z01/NemhFatRVVIxlhSmQ/Tpmtrm9/tRJEHjXaJutGJtP6nNS3kVJPYgv4X4Szp8e1GW9RUw8wOpkR/PGeyVAmbMNVPCRwRQ/EP3RLJ7L8aYw2u2o2dlTv+Um2QMu3jEzZ88KDhd4c78+u/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQiSX4gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQiSX4gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C81C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772196293;
	bh=OOh46z/s0MtI0XXg1PC9TFH4nY0N4B7WggMn/MUPvmQ=;
	h=To:Subject:From:Date:From;
	b=NQiSX4gVwbQVRataWdRfN+/9o4Xg3Gz9cBLeQ0+Bl4oQEReRbr8SprtnQ/Y9pRIkE
	 LpbPLjI7+iaQI3hmfnqxOQgz04nEHEknuSuuy90nW6LVbES+HaBEQ0Zbwq2d99SecY
	 rvS2JAKmb6QH9yrYAYVTDt8M7AR9fZp4WdmLTiKBTe7FHE2Ij7TZEBwf6s/oiiyAOL
	 n/wuD5SY3mJe4eave3cQRYSAIA29czwSW3oNAFHaZ+iXDnMKgEz/Iz4rngEuDtEbM8
	 UoVehUlWLqd1+A8VUFnkE37d7XiiYxZiR2BIhkL5F4DpNG4dT2nYY+wadclWOp+UZB
	 aK0siFISK0g6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91648FEFB49
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219629358.11238.9935543031633630560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4793822da28388b7955cf73226de658f62348721bf7d9eecaf753d654150f7
Date: Fri, 27 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772196293
