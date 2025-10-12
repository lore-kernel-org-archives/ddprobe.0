Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD33D76
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760241594; cv=none; b=DJ3L9cHg0L9dVXLfXDJQbZ6thMrQ2ADjXeb3OTy9MafpJdOIBmrXPOK3nyE42ua6rFzcfPiRNTrMDymXT6vdKsJqsItEJ67PaAb4Fok5FalNnW2t1/v6p5w+DV6hudfiaJ2+NtkeaQG8TC0rE+79VzjalzeD19vlJ8PxuO2x9CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760241594; c=relaxed/simple;
	bh=6rCBB1oQUK8/PAAlOhfAIP9MJpu4ABIoWBJ5XycpfeM=;
	h=To:Subject:From:Message-Id:Date; b=JSF4/iAWX847Ro7SFqtqysM8f2phm1X+pwHFE3/kVzSD8H1DY125eIYaibf6a58oB9+Rhvxu7tgd0cktxycwlVw7qxFpwk2pZqZpWCnWjQbY+Oz+zRnpldQt1KmxX168hkJqy/irpGzTljw1KHz/xOYa1QLIGupm0T0AWgchVuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDyt6FDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDyt6FDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760241593;
	bh=6rCBB1oQUK8/PAAlOhfAIP9MJpu4ABIoWBJ5XycpfeM=;
	h=To:Subject:From:Date:From;
	b=bDyt6FDogMpElChHEuHcI2hg9HjGw7JxIgPmovOtQzUIO8bGD9DnY6XxQ+qyDou7e
	 wEHpEuZ1RVAWZG/uoCpZYMPhGlNngGm5KF8WldhWGsZYpHkGMZu1377i7c8OCbHfke
	 IwzfnOIIo5BwxLup6OAV0HRpOqlJc5WjKLSy1Uf8r59fevcXltnLW6QXSIeOc62GJI
	 Qc730MRW5ZKJNwzAPIyMnakTM49rtQCt46Xxj/FSi9CClhDc3MhNqjVmSIZfn56S9L
	 C3A6CKWi/3D5He+TZDRdJc5K85af1N7cRGcDOwhAfdU7TEyj4H0gsScC2mhwyuK28E
	 OawDcGJzH01Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA7CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024159357.19647.2384113112444370966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c28ff1b9e2046b69d77bf5269b810087c06fefd2976173c136f0f616cee177c
Date: Sun, 12 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760241593
