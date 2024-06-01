Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F1B14E2DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717233863; cv=none; b=p+F6L0MqLGaWkAWnpE2LjrsJRjgvYgQEG70TTira3hNd3aZGgtmNEbm5KcjyHc6oPzER9VOaJjhdVtrPD5e+lTJpVWLLFwNH5LayDWJSK2AhPW/x4Bs79+oeowgwPezv7usUDL+945+I3kR0j8aWFEEkOg0TuBuMNALbt0/N/5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717233863; c=relaxed/simple;
	bh=3IChIqFs6yHuKyVCeQMDx5mI7ZlqvVE2rAZa02Sls3k=;
	h=To:Subject:From:Message-Id:Date; b=nHQWPjoxlU+EGiibsQ/MjbCZtFaAilXkdLBB4ANgF2IRsZT9xSbfUeuRBpI508GkFfPkTwbNDQkQZlT8s61hIpfqCw163/JTdlstzcswp0JR7KkKdzyhwJWwRqZP0j1e1Xy69gD/sBPOdk4BHtG60Tp3lkM/BGOLBGp6APUvqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqfhlG/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqfhlG/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09D88C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717233863;
	bh=3IChIqFs6yHuKyVCeQMDx5mI7ZlqvVE2rAZa02Sls3k=;
	h=To:Subject:From:Date:From;
	b=RqfhlG/HO7cz1qul2okrqhSXtWoSyRTESX+aOcmcVBreAmutszXofwed5OQM1Vy6h
	 1ebplN2foahCDfDu7pHlThJFYiBtRzDCrFzx5809fbttjTvP/tE9Ois0L6RcQ6Q8ZK
	 DOuDFKKfHONVTJOEGSduuR2tcjEQwc8JSRRxdwbPGjQDEqVLSCSpuUi7iL6z4pr90S
	 aYZhHnBW8blzVdEQjpFG0/x9KD9+J4GmJnHYsVyAT8+tNgJTDVvW/KG8ZOzUGMRFA/
	 FwU2PhLj8JCXjjXQwonADQjfrVr3Gqyg4z4EeeCRDHJSfNBe4AwX5u2eLB9VPYwxBn
	 ZJT50Sa9o0gug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0253C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723386283.20545.15965380393373167342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6974ead36085d677e4ea2c31c37c60c51db5d7fd313ba487bb4c5b47811b10f9
Date: Sat, 01 Jun 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717233862
