Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CE4F1E8
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707425297; cv=none; b=DJETi14jHX+kKIYjVdm9F/CUBC1eJ679bM2fed6ihXBMFToUGCB1ohOOadX3NzS/fV8DZxfnodn9faIPFDpUd5Vg6YDxENGGpgk2v1euIgHivpEZIXnoHdwqUQPLcxHPG9wZXJ4TWVUntUK3FcfOlraUeEVyKrmbeOOBGJ9MEKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707425297; c=relaxed/simple;
	bh=syqAD+CjYpxmSFf709zIJUG4VPQ0irbDrYssy7qc8t8=;
	h=To:Subject:From:Message-Id:Date; b=pY/4Kh9Ycc4ts5fNyHSJRSlfzjOq+2wPzK1dRS1Pd7D6NU+sJF5PsyE66axZ8SF6cbzv8QiUksVh+IiXxqAy5YzpJwxbWamGh7qccizLaEkZwlSweAA0GOBGABG5Kn5GK/R8PCkuXke7FTCtorclwa3qLKcHOJUMuKsMAdoYn90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atKRLBuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atKRLBuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8343FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707425296;
	bh=syqAD+CjYpxmSFf709zIJUG4VPQ0irbDrYssy7qc8t8=;
	h=To:Subject:From:Date:From;
	b=atKRLBuobOrA/hQinP3fJHm8ocmdFwj//ibDBcto7Ne8Bje34Iby4cmKyZPKQifWb
	 Co/1CdSwA7ZN6Fu8NCekAN9JrrjU47stFDHQItm2eDjBtmBAV6vIZE0iMwhEQiXhS6
	 SzOQcv9pgyQGUHc5i+4DFaK3hO/b1WVZzWFX5WE15MwfybsUBa+e8NnUJpkX+ml9Al
	 hqaVuAkivmeCHhfyC8qUlDB3wBWmT4rG/CjB3t0W2Zg4k/6A699vUSxeszbjnb7y91
	 99isyZaXtlOch2siAGUO0uFB2lZbDrs8enRpsbQnv1vsJIiFSoKZjjwGLAHOMvzIOk
	 yxZSuaLRnRfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67302C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170742529641.17039.1339400354698595273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d6034241ca9c4117f4961c7e1ee6ffb4ed08a365cdcf0d16a06aa96a3c6729
Date: Thu, 08 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707425296
