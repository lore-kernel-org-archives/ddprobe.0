Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5556F168C3F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718958743; cv=none; b=awV5hpCOiHVQv8520RZ6wyJZpOEORU414HL7fmXjEf+bUFZyparf0wmxIdc56Oil7B4Nt8f3xI1RGhCy/IXIZA/RozEC9uWxZIhUUT1ZqscGXBEQphF/EJkbkPXJ8cO8E/zube5axau8AlHepYH3ogOAGzvZ3T3H5EfTA25JZ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718958743; c=relaxed/simple;
	bh=2Rta/k8o83E/J/L2x8W2EBfI4kEttcxI0PnyrUuPNBo=;
	h=To:Subject:From:Message-Id:Date; b=XTtCPvN6r3iB1qxCF7X6Vhv7dLO+tt9UKDf+eLg4o5gAhHiTr9KxmBbufL7O+YbB8ojm49oz9Y6lh+dvkRtkbuurV/EZ7Uk1SepFLxyRltTy+PDs1DzurawKzgNrwep2JNkff4YV2kOeQJNCj5MZJNRQ5GH6LOpkjrtvdYd65so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbXYMwbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbXYMwbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50EEC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958742;
	bh=2Rta/k8o83E/J/L2x8W2EBfI4kEttcxI0PnyrUuPNBo=;
	h=To:Subject:From:Date:From;
	b=HbXYMwbTFFhhiYGvBpVXggxc3smFHvoBEFxGj9YUEgDjihmLHowwZPiV1K+mdcwUd
	 ixdvlNnSItysnFshVzaOPKxQCWcvdi3qfM0329p6FTN2D6OVDcFsKZOZIe4FZpu7Zp
	 FJhDR1XJld8RAlhU9JZFzzx74HXykQtQxqjqrvIhbi0Kz0LFqd6x60SCoF6McabvcT
	 yErnujn4Dpw7hX4DZI2B70jLgHmFZhF/PpYFL+uK1ihqtiyx1alFN1Zc+eiopq2Is/
	 lfEQmtYZR/15wDpAimC1fDs4ARqPisuAlMPV4wpMNkxWDUe/lKwalkf7gCZZ+DE6X0
	 znhAqPcH3D76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC89CC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895874276.311.9599061001408480143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ca58064b4c530851de28ce47c29d32e857a66a216719a6b984e2672110a9a0
Date: Fri, 21 Jun 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718958742
