Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF7854739
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778216254; cv=none; b=H+MaWc/hm22yR13mmHQFxH0w7oWeFAuPaxYC75c1hfwNvXLglG9KWde/egw8Su29bsWR4gOdR3N7WTgRlWra4+QTU3bh7aU9KlVX4vFXAENQfm//vOAnIiL85rFrPv7nKCqWa2nU8cbVfLEeF2i9BN0OxkaqOZXmV3fhU6Rhcr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778216254; c=relaxed/simple;
	bh=IGU0rrxqQFWwkV7+k+Ehqiihoo4Q1PxgsWSZOrLelbM=;
	h=To:Subject:From:Message-Id:Date; b=noquPZamncOaLsCA9w2YnSrYq1Vtna44+QYHwXRHHhi8QWARiNnSc4/iYRBNVxNSjp3juzWOS/7/RvruVESu90eBlC2JZ3EuWtRBMwetSFfU/I6oRIrb65Mi7yZeEbeu/M4RM7vD6KHc6XlsvcOyiWD/CsMfg+NMKIGD2jIxizM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttjsYPSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttjsYPSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD859C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778216253;
	bh=IGU0rrxqQFWwkV7+k+Ehqiihoo4Q1PxgsWSZOrLelbM=;
	h=To:Subject:From:Date:From;
	b=ttjsYPSGZYn1/lEeoKsTFdbKDFpydY9eYkQjF5dL4QDSGz+EqA447v16EpyoRTjiS
	 PPTx67gstUPTPqlX+YJr3VM6Bh4Px+VsKwcY7AfKG5it/a2APHix1Y+numdijZYf/i
	 huagjMPGynhp3obfsK4ynjhfUUveXrNqL1ZFI8N5N2xaJdtZAjKQhk3KH9w2SWEpM5
	 RAtZjIkTcoyxDGnoegm/LZtrLwVSAuJrpL2NH6QFgN8mvKqnBUZeZlbpCQuL/WDYxL
	 lk2qc6K5hggyyE5eaI8cObEHffn018if4G738uHoiwHoXI0eW/LybN5+bgOIc7UesD
	 bei8e+SVwH74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8F3CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821625374.25809.1923558558625472549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90060634b85eb06fb2335611af44ff2f5b4055c89bc006a9dbb6a04895fb42ce
Date: Fri, 08 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778216253
