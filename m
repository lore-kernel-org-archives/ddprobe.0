Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C321C5F06
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753798794; cv=none; b=STZIAIY5SeWy4WK1e37oLrUQV5McXPEY2JI8Q6qarZuuJ/PvaXYrwgDiTTyH1DGW6gZKp05zx/shsQ4YdJNiWsSYY0PhVV2PP+p65BSxE+to/B9NRITzamlqV4N3pY399VA3wzP+pNWtsM2ngIMD+gFv07x51F1vr+iyEd7/Fno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753798794; c=relaxed/simple;
	bh=/X+Yw/UR4wsi/kBXvx7kMxuhs00ladzjGVtLY5gN+wY=;
	h=To:Subject:From:Message-Id:Date; b=Ao6s15pVGyGtWl4lDDPUzoGB1DMba/maTkrOrF53nutYu1MN9EVeE6rRPA74EYZFxvHIJQRahKF4PL3wIXw5yC7s/WXueAKH3wqekRxO+Q9r68Lku6+s7RxeEtM01aStnxtC7SiR3MtOih2WOXXx1cMaLng6eati+MnkXHmo0l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTb0D/vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTb0D/vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5333C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753798793;
	bh=/X+Yw/UR4wsi/kBXvx7kMxuhs00ladzjGVtLY5gN+wY=;
	h=To:Subject:From:Date:From;
	b=bTb0D/vJ9MBuCncrWfrduesCKYCdHvK4iZuDRkXlsu8H8bZN/lE8eR+RZwM9jFeBQ
	 S0FKj23i6cbMDFsIhOOOzEefQQ56Ug4UQWtGxu6TS9b3rR27epv4BpLcxynC4WzQqA
	 5xeBuzPVFFMZZX/TEpFVVLW8KbYtK4u0uPHhhhOBH2p46oiWT1PRepKgJtXiPN2UoK
	 buRAmXUk+5VchgfPKu7HiJh3383IamLo8frC417w2kaWw75vVY9Y1+nBc1INNvtz7M
	 3LSEA6K4x13nPHuQISXgE6B20QfKKtjihxQnYmx2iu95E/23KCqQqsyJ20nFEFaUgs
	 0hJFyZxSt6xZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90901C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379879358.27139.255369791993224307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db1d243b4319c83dcdd88a2a0f4b5da365aa7b728ffbc5cae6294f444359793
Date: Tue, 29 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753798793
