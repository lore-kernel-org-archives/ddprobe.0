Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADCF2C11CA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781043334; cv=none; b=ZcT9LcPcYqCW+8TvcswMBbhhMGeXvxEVB9DG7i6ZgdJ1oPNb5uXFoV5rcxWwEGd4bYtA6xFPgw3DtV+CqiePdr/vm/+zmMAfdT7EwiLRGyRjM0zCr1qm5DxU9l8Y73APZRvBcWZh3ifmwiZqShP4ndL7Vz9fUJCugUdDjAY73wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781043334; c=relaxed/simple;
	bh=8nEDmHJX7IELTehsmpwuGKvR5SkOtrK8MPmiTMZpE1o=;
	h=To:Subject:From:Message-Id:Date; b=EwR9P4mTsv8oyWAn2HhwWH9pWRMC8ZHTtrJd++9Q4vaB8yehdlO/AbZ/VHvJ0tlG129esTvfPQWHpGIp1ZIVv43+RsErcD1xhQ3N50serEIFdy7PkArghhqqWZCqHaX7zi9Kd01YFrREubTHHGpDTiAMsumBYp4sRjoPARMb30o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utDMNHlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utDMNHlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C15C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781043333;
	bh=8nEDmHJX7IELTehsmpwuGKvR5SkOtrK8MPmiTMZpE1o=;
	h=To:Subject:From:Date:From;
	b=utDMNHlcxuYJt9onVi/b0KH/B2YJtkEOL/EpY+HerjFnRhop5dVv494Z78yKrxsm6
	 f3buvUj4OuSctxvNVzS/pkcdCwThqJ0ZVypRCHLR9B4hcVcRbsm9CNCEwrSzQjOP/k
	 jMVRIIiCQLYDmkK/MrPedYSj+PRjFdU1bko8DSYE/2q5EymY6e3IXEFGqnQgp4gMuL
	 08ygio7HAd52QFi3FlHVjVOiyLdkCRZPQOr+yujfreVGb5Jb1FLDSvS/I6lhDrtvDl
	 7hQzzB67prW7fkh7DKv9Y1AD3CvrEN3eiK3+aZw5Zqzu+Rs4pJhdvp/ubq2rHUYMAd
	 K1i8k2v19+CqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9509CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104333368.18569.9136880850117212857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95de30de80398f585a21695688b19c8fd0af12f29f6c63c45f29d1704901f479
Date: Tue, 09 Jun 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781043333
