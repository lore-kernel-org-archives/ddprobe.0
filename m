Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E4323BE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727672754; cv=none; b=Qoo5qf27Bxs1ZB9R2KFb7l1Q+PCrsv0vcCgvVosfP5GdNy6itdVMpectv2BFGnd2dOenerVeP2z1vBks4/jGDr7Ie5bqPQ/M3eqlc75Huost+XBftMjEDlHUQNK7Yo9NjCX7sVBV+r04hETDG1lBEvKyQzC5KCjb/asyh/yZqvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727672754; c=relaxed/simple;
	bh=Da1mkuHJyQ6DOk2Hn9Ps3XFECCvjAaKreisa5ck7tsM=;
	h=To:Subject:From:Message-Id:Date; b=m9PDzlsWytv4/xmUOnGI5aDZBKkwctKx/snfO/LVx1rR5vz6Viu9tEA+efdTA7aUTWXN3+yAqsTHsQPBmLLEgYaIXUM8SxtEzTnITjAUuM1rMump02ApgZfAL3/VGtM1s15p86sjRLgtn2AhVx96Gcq2+Z6pElLdSrPqlPIducM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKAmyJ09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKAmyJ09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F6C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727672753;
	bh=Da1mkuHJyQ6DOk2Hn9Ps3XFECCvjAaKreisa5ck7tsM=;
	h=To:Subject:From:Date:From;
	b=FKAmyJ09vsGJR3wEPOdsYKuyn+p5m+tkDVn5iczGp/pMhAvOhnPbJJ5fhZgWZNfvm
	 6VodRi3G9Jp3+PeU1N8vBQIeg77UW2x7rpL1P4ZX/5BVaRNtdxyNN97FAt6rTx8rV9
	 bi4fdp9lQFonmhQZUnsn9QmLKSdcBaBhLuYqWb2g0/s1OvbWtUG7Tbd/5Kq90VW33/
	 F1dkPt5dV306AoE1Ypejn8pl+7MT4HaFzQSa0W/+sZE0Bh0u/xc1V9ORemh94ww6zA
	 4iE0C/CavA1+P5mOnwJVQIlck0WyO8ImpohA19SxZTRWhHmgqQN8gQo8IVxd7pTPFJ
	 mzh2Ew0N9r8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93985CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767275359.11174.13742569458258933654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5393c040bac097ace1589811151084dad8cce765ac0d6a434a799e92a1035e8a
Date: Mon, 30 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727672753
