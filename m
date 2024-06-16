Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6242F33C0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718575703; cv=none; b=cYViDlG6FmqWzyahdB5BzFuFCJhLvFANGSRxQbcm38kYoW2mfoa2VtjMu4PbK8bPUjaBhSBbrNDVWWYXBJcLJlgERjkmR+eiCGv3n3pIT9NbeeqiCzFBtxLoKJDbj20qHfRFRbOJxB+kTAKUZ9GjYtmWfo2KX9DHtMdIgP+qPVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718575703; c=relaxed/simple;
	bh=JBCm9RLrwEBsuSMzF0u2HxsqxCnui4Ujp/H++7p4DG8=;
	h=To:Subject:From:Message-Id:Date; b=HQRxX1A+qstSHs30km/O2+ZitGpCIXUsHEljLwlKJh/EZylL3k3ZaPo93cA2ntGfS7qFviHqfL2yuCpKgM4FfELAsXjL+843FB/X34kngE6RX60Igdb1wL9bQz3UqRB3Oc1k0xJpPzBj+1qiw6A5CJeDuYRutlqz86tX4UOMEjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTU1J9LY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTU1J9LY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D343DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718575702;
	bh=JBCm9RLrwEBsuSMzF0u2HxsqxCnui4Ujp/H++7p4DG8=;
	h=To:Subject:From:Date:From;
	b=RTU1J9LYWt7MwevNcf2VTrXI51Q9iDnEP05VdalAkyKubCV5P53TNLkPQirSQITno
	 /IV8Qz5Ikr1JTBoKhx3Sl4U8eVblfOVUstDyL05tthKEbKVmntNCKxAkoB10IrFApP
	 dn06kK9y7FMsTXFSTwPg3H47ZRuxjAX/6Of2Sw7x2QcHy4Mns26EAcn3XHYzi560Sd
	 C4DG5s13cvIBO3ZMd6NT9MHXVt5OW7dUDFo0oId4MQfbKJCXLuSu2zwRQvbkgS84j6
	 oyzSIdspsz3fYYcEdGk1Kt3hS3flZLNXnTGV9KkLJd6u8fjfzj8SRQ70oVnfU4ocln
	 M9deKJq/TehIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C5C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857570275.7489.10781545074348350939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ca68cb19ffc9734e19619005947ce4cacaf9599bc529960d17560ec0468148
Date: Sun, 16 Jun 2024 22:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718575702
