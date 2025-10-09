Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15BB26CE39
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760041193; cv=none; b=ZE3Mrz+RvDemvbeGXy0lXVzxskRlhgEVJWwruGB1P46RB5hRAbikz3tzKKKbyLLlWbigSAoPuv2BuQtrctETf/U1JAceh+Pwm8YzClJXjQQRWz0sc+XYyg+kMZ12CeU//RvJp87jNkhK6qqguLrdBkOBt5ITzwO+XjtmCqJidUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760041193; c=relaxed/simple;
	bh=jC4V/bCSZ+Y6J+L7TXj+c+sPEVdO8TItRAHdmgVhicg=;
	h=To:Subject:From:Message-Id:Date; b=g08N63e67qiGY7JBBDNFD88F1I36Qgr6EHBG8XX53umFSdZlZtJqi3oVLNk6KFDT/KznMXWEZ8LJzIN8TOEvaQL6LH3D4qKfdfbXF7DpPUcr6s3KN3ueJs6igMLpLpwMiX7WkygeAJ1sC2ohuMGWtwxxzCjbwrjS4PxuUGUQvG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ0S+Nwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ0S+Nwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C1BC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041193;
	bh=jC4V/bCSZ+Y6J+L7TXj+c+sPEVdO8TItRAHdmgVhicg=;
	h=To:Subject:From:Date:From;
	b=EZ0S+Nwj4PYn5nUxJ2rLGJpjQ6uPoK2udv/0wwcALOhUYol29+c/msxTf/xOjNAn1
	 nzumvBDpjjw64sWllNybO3inbyx+ZOmnDjqZjz9lWal58hDZ/2SGEXhnifoHA6YSBt
	 yX/pQUcAWiPVcISPe+kY4QCaBkUXaiQ3fb3ypGrhQX8d1BEpbR+cyDUil6XJ1kpOgE
	 6mM+zioqZofc/QdnSz4r/dTaYjshGTRXRhhw0SvLQBs+uYFPPyddh55gmEPBhvy//G
	 qjPnqClGzH6BYjiH28EfAddCopYNyWyxmKLNyECq3qev90GVJDAMOq/ZROI4wUUf/a
	 tLiWxh0O0LMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986C0CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004119361.2847.677641750011653374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156d0990d69ac42f055637190f50c2545476914732b197dfa09ae0b1aeefaf71
Date: Thu, 09 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760041193
