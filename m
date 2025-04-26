Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409B32F56
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745650195; cv=none; b=VjKeiOJ8amyUHBHtdFjQ66MZRMBdAhnER5a5jNjHBPgxzq0igYS8cLRL7rJYZ9XAlQNywOTKzTWJ48NMyiad54TMbfPtheFNsYydUL9leouVIyvJZWO1luwsJCcS/yx05ciwG4HqfqKbkBzU4WctRD6Dd21o0j9s80lxwKVdF74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745650195; c=relaxed/simple;
	bh=kF939PWkBmiqKAQoiOfWVu9b1dLvEPuD/7adGt7m+G4=;
	h=To:Subject:From:Message-Id:Date; b=lEavb21pnNXAoBzTTuUxCutLNGmcXz36GQj3ftBMVQznltY73yd60Noy/CylyxtkN82iDdrx7uEtHPomxTSVt/Blq3d5d5PS04Hwh6FUtw99Zv3wiibMtrrrf1SWBLIbSE+FBk2i6SBLpOhYmtb3+OxMp6Pp33Dej0iwgB/39B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcGKLmTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcGKLmTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB09C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745650194;
	bh=kF939PWkBmiqKAQoiOfWVu9b1dLvEPuD/7adGt7m+G4=;
	h=To:Subject:From:Date:From;
	b=tcGKLmTktZeKAIgBwZZqecIHjVcncZxW8m28mRMl46zXBjzy0x6h42tJsLkLsmnhj
	 eonwLkVrNwTof3Cg2RVoRAh/ZqqDqCq0h/gCqa/qM6hQmwwV3WygPM+Rf37HEuBQab
	 itXVqGwl5jndfwvIMTuAnE0GxKALXTtqwmPKJb+uVg7PCiIRJAbmCEL02eRWcWf/RQ
	 UbuCqywOQBPi6qyRjyKcktOh1IjmZt1KGgnGSFOr/WUrcQlUJY/mZHJ8oed89J7gim
	 dc2Hg6i1nXmXRaW5r48YDq/7UuI/2Hl7a+1G9hHNgkfOplK1v+CqdXnngcHSJ8sKgH
	 RZoZ+UE2Xu0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4B5C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565019357.7824.17074300426564529467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc92b6bda2a1b3f8bd6f8ab32dc1c90ffaf80ae0b87b35cf189baf50007387ce
Date: Sat, 26 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745650193
