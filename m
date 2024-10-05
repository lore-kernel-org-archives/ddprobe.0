Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6E328FC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728103554; cv=none; b=OzS/pmLfGesAuBhp+tUU4j6i5Uvf/Q9tLgM+OLDmtaDaRRVf24Y6Tz7cR1/V8v2tlzZAHrOrgPGfxhUgoc4McvibNy+EEltatplzxV6EcJRoUx78nyJTKACXsooZVYlGhyir0iVh70KYSm4gIH0vqSwKCZJEtuUChgLAZ5lrbNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728103554; c=relaxed/simple;
	bh=6qtEscunUJXAoJxG8o72lCyabczVMmmv+OXmsMQQBSI=;
	h=To:Subject:From:Message-Id:Date; b=ErTkXnO6sVp4FHAVIHVkXCDs6cVfeTmttBuDDlYTQxs5//cGwuuBMxeomZW62pO/QKYzG01pAldOPvKVZz7u0lnH+kl6JBDQ3Up6y5GF7gZ/z8WMNd7ZWvoLI95DE3HnSfl3M9kKU9IT9tPi3+RCD0cZe2j4sP8oT/koU4H8FRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP1tVcrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP1tVcrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE176C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728103553;
	bh=6qtEscunUJXAoJxG8o72lCyabczVMmmv+OXmsMQQBSI=;
	h=To:Subject:From:Date:From;
	b=lP1tVcrxKRB8C+igzNQB+Va6+pHIpuLGtCHfyNeAVWI8Iv57Fm6AfQL54zzqfmKHD
	 +rQKcVO/GnN7JM9r+lf+Ub9Mo2mUdzRSfoUhe4Y5OL1Qj8mvBgRpSdhLQTD9jz65zb
	 GABBA1untcbcLyVRGFVks41nvVOlG0av/aIEzAkkfCN5QivsEGG+y8UGExK1p1aENj
	 alZhpQYUiRINcK3vVqVtODkooq1bNm5BQ24mGvgLguvKPyyLTjfnmzYOBadk0Du0qL
	 vL7lv6Ee/6QJs8fhgl8htTjYSLkkU23xmzQwRm8VlXZ9AEi16sxdVr1eu0T3db4n3O
	 6I0yT0s9fVB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DCCF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810355360.9190.6300921601832598565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830744b60f3b8dae3ecea0428eb234a0f21bbb791ef7165beecb48118d7348c2
Date: Sat, 05 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728103553
