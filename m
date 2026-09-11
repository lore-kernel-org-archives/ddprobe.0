Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418A44F578
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789113034; cv=none; b=artSUTHEmvxXDO39kpIXLfwBcMuUpo5WHPfT8E6XAHl9OG7Re3GZH0oJmCkKnot26/KbJn6vKo+M4QcJn7Vl2v3ZdVnWrmVn2vX7o3NbnuY7mgD6tIFfbH58Cor3OnHwv4/nw4T0A5GdtRHHZrkEIwGqKpy1hGfbM6nN0iB+sHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789113034; c=relaxed/simple;
	bh=XcD25fhpKRA+CYXt1ycP8cZftQq4+sAktsjl5VjMVCQ=;
	h=To:Subject:From:Message-Id:Date; b=fBDfaXX0DmvEhXZcG3t1LUPLBiokZ7W/9uvYLQAIJS1T340kIJNUC6NwuPR4ZBctPeDD14B/GmjD++gTwa9lrdOJCdHrRIR/obnDiuZxI6cF//cuw/se+QVy5QPZV8VlM4O2Y/M6IZK/qeYX4H4FwE3D1RL42sr5+rnXRTJMXyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euFvCUfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euFvCUfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CCDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789113033;
	bh=XcD25fhpKRA+CYXt1ycP8cZftQq4+sAktsjl5VjMVCQ=;
	h=To:Subject:From:Date:From;
	b=euFvCUfkXt+B4y8BOtvoZLRxyoo6P/pJbFRfo6AuDaik7VlGszBt62UrLsNpqf6ev
	 36AB++oqI+QdEEBe1GneMQ8IfVf2T6agjTEqqQbdojQF7qQsIRjEm+DW2dpZ2hXS1F
	 A1TAe9uvjg0RHQ8LepOB3mMS+eFsCowwERGFSpa9hZIbSFO1PS8imz1180mbNDX+6O
	 tap8XikRmQwAgJxB+PzGiO2xv+8DDk003yz68ObLIMxzumPSZtuai24oKsgjm/Gkzj
	 wrjvrxut3VH4Q0fpjhiKIVyr4aU2AmkC7lKoRkqJN9pmoFdo2EWRyXAMNBc98KFoJW
	 kSdnPW5l90iEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0520C88E54
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911303371.29335.9044516981124625196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb88c8c54d1485bd241be24aa6e48c8cac59efca1a918f482e6c04d2825f832
Date: Fri, 11 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789113033
