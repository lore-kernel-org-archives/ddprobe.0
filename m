Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123751B81D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768799034; cv=none; b=GKWDkAkFUF4TzNiwHKjeIpM8Dmh9m3lHcKYeQsOb3oWLmfdRu8WSlyElxqgSolgKgRyKjwPw2OYtRVR7U3qQe6q7kIVm6/VcG5mEbJPR9N5gNAo83r5VsnMFQWVkInhar03uiG/QDDHnu6FFhjoJ9VG6RAw9E3YkIunJxtkqMOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768799034; c=relaxed/simple;
	bh=z3QQncgDPNZppE76nwc9BdCMzG6sexysmLNVqYLkUHA=;
	h=To:Subject:From:Message-Id:Date; b=BHroGwhIl/0cuWETN0mIAdyluy+kn2zV6Ct3Lg+papgkYiHAagXEB53xao3TqAgLwKlCCS+pvCNFK4vY7XZDnUPEvZKPkL5H/PdSVcx9Se27keYxZB2JKNbB4MxnEsghf60t+jS7zCzwBzdnTpgPcv1boxtt8BwudHyegVGuSlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZFw7cB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZFw7cB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87F7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768799033;
	bh=z3QQncgDPNZppE76nwc9BdCMzG6sexysmLNVqYLkUHA=;
	h=To:Subject:From:Date:From;
	b=DZFw7cB6aLCtc2Uq0J5guNHfQuINs2JqFdH76w077yccXuYOS5ghQqxKSr0U1ASD/
	 Z1eF7VtMValnm0LS2vfNQqp9vN90hh5kUdtfSo3a6lBMd3dtnyKcANQv/UBJY6zA0V
	 JCTuZFN0eSpJAMt42nXJ7vWqm92Ytiplq7KqvZXNU1LQFhLZ9fajVGrPPFMMCLE441
	 rDGh/F9pPMvkyDRPLsJ3XXNcofKXujcmHvNDoxf6+5rkw7IsT2CEEEH3PKu1/SAT2q
	 ZnSJGXQMtKyR+a4T/3z78Fp1Q5N9htXZFSX8t+L/dejaHiMqjAEI1fVpzDTcBPg15Q
	 nhtXyvjFHR+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E1C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879903357.9048.17563236136925790734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b455daf657c9d5d45e37ea280a526aad93183e892efbd30ed5960f2c5b8a2b48
Date: Mon, 19 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768799033
