Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B94C1E51D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717658243; cv=none; b=j7eOM8/WeYsqnCD/fA3hfZollg/2C8Twlib1MU2PXrFunsaHXc3KwNfANT4wY0a7aG6tWfgK3BSLNaRq9itAiMlk0DsG+hn0g14/iFzXeRr7Dyeirb5sOv92vR3l4gQgyodD8WNUMPbrZx5QTzzb1FREPJdJMe2BHdeuKYlKjBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717658243; c=relaxed/simple;
	bh=M7A4iU5XNsm6T7dfG1LUOeFgwp/BVN0TJRrPpUBZ/II=;
	h=To:Subject:From:Message-Id:Date; b=Hm5C7ZOsa265YoYEx7/CcTuF6tOWaecZzAiRyD95rVJnDZ3uBN+iswPUWhgXDAQV+haM16x/QEmvVl4N3kiFEf5bwv8H8MFAuAl+TFxPC2sheRMnum0cBCkSpDgX+TPN7Xtnq5//5tMIRwO60epKG2aYSoae+XDhd01/esZIRdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFbpDxQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFbpDxQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC0C3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717658242;
	bh=M7A4iU5XNsm6T7dfG1LUOeFgwp/BVN0TJRrPpUBZ/II=;
	h=To:Subject:From:Date:From;
	b=oFbpDxQEA95QEg2Ir+XlrTo9id9IUf6KVI58yZOke1zDCJbt4VRXR9rkTu8TftQM9
	 hNrNav8gpAODxHm0bnyKOktNohvDXn2KRrm805eCudVjfni59qTdeewMibPgqcfeox
	 Cyxayuw3itTck9ZJJmCoprXgzYFBHUHjaLwwUGc28/Ro334GHC39gQvjiHnX2FP2iX
	 gN0q1PKPK+o+XuqI/o7hDTU80liXGFPZVU+NHUKRVExZtkulrYbUHF3g053T+jcdp+
	 VBSE8i7k6u+aXM4CG/teNFCNCRDdw+tjn4M6Waxbv1CssagTz3BOHePUoFdim+5oPq
	 Jx6o/yHMkwbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB291C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765824275.29576.7470451317010176019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f8e4c1c6ac421e0908d60427ad90e9893ebe6babdbafff9fcf5ba35fd76588
Date: Thu, 06 Jun 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717658242
