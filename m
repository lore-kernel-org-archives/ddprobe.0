Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3022609DC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749582594; cv=none; b=kMai/MElCb2Kbt6n48NTMrfZ8oHQnJ7N1cY6xotks8VGHCuGW6Q/aaJBK/SO214q/0sI3s0yHwokjxuH/yeelsIl+wa0uvR/U1GOEJa4mDuaBqWqgqWPA1tYwtCj4x4DvdiI3RgYKVPKYy4/TkYHBSrF3+lkpfvF2z+lkg1AY+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749582594; c=relaxed/simple;
	bh=kNiWQk0oIhlt6bXNkadte66aTh7h+1YNh0E8mO3+dcU=;
	h=To:Subject:From:Message-Id:Date; b=iVlKWjOddf9/B0rmFP3cg8vqrYGefQSR67KCmLnWlNSd673BZPZELcrxbPbBsfW2HZNN3QTs4awU+F0WEp/1dkpmNaCcP8jzcDrUZdvXfLPILB/Ps/Nb4xz6hrv5Txpyc5dzuqHzmD3pfRLp7tbhdtNcaxsijBomOmVuRlsjj8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGzB+xpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGzB+xpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CCDC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749582593;
	bh=kNiWQk0oIhlt6bXNkadte66aTh7h+1YNh0E8mO3+dcU=;
	h=To:Subject:From:Date:From;
	b=hGzB+xpvxOMYYZYl7WkOG1+g6KTsmNZcWscIi9kyLFL/xQhxjFIIjytAIicPFGOCp
	 U1gERg4J2uxQEADtyJVyNhGtuR47E7NO7KtZAoR1BpWhpqZcH4KnSIQG9gOOQEgquL
	 UMC3xW09VbCUCFm/WQhdV2BqJ6AoAh3rsP3P3Hxtn/eFCCoZ1lX+Xx8uSLqRo7tuxN
	 I3qHLpfb4wpj0mU/VbhXNqo5B/1vDq00MdMjukxUsH5yPAymRkI4dPtZlYyPZjVO1/
	 yqtuo0lHRp3DqYZ4P2kcw7WrbA5ECIifclH0+6NLr7E3njWcE2UoY3RHI4iZT1vi6P
	 /SidH0AOvSBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1B4C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958259357.28828.2586692057660727069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7861af080c19622809c7f02b8232694cb6fb366f8cb54a1ba3d53bc5668932d
Date: Tue, 10 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749582593
