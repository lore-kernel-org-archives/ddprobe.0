Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECD9165F13
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726599354; cv=none; b=LoNIvHlu6FP/bpcSqMRREYuIGrbEFYWMRXgRx/Gsmo+TOGSlz9993A/uEXAhkliRjNSYOk8YPu91PxzlVDWZN5w68dM+wsFU7k1CHck8osX13pMZF+R8BFEJZucaYX2uDHlEh2vFuqNZav3w7VIACX3zgOnWuySF2YAUFMxUSv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726599354; c=relaxed/simple;
	bh=tBTOPJpEVe+0qUbCBArQ5WGXu2dl/8U4wbqjjdqCBv0=;
	h=To:Subject:From:Message-Id:Date; b=r83dVaht88ctW0FhTRYo2Lhws2dD9HgxB5mdwAH6s6hfjhd4/pJBxqnH4IAhryBJmZEw3fM0j0UZEGAbDexF1+Xxxjj5OO7WoKXSCyRswueKGliER37oT3u1G5a9ML6TWrd8yNthw0lq+u/xvaXBRz12Ai1iSXDZylP0btx5C/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkU8HlwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkU8HlwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726599353;
	bh=tBTOPJpEVe+0qUbCBArQ5WGXu2dl/8U4wbqjjdqCBv0=;
	h=To:Subject:From:Date:From;
	b=SkU8HlwEsBWoo1cCUdCP37+o/fAQlXbyYUBXS+HM7GwssD3FTjF+/Fn0PQ5Afx0N6
	 7G3cHLZei6llC9/E9n9mIl5hyKmTKp38I5moYMIF7MqALv4x64PMdtqw3e6CekX5Rs
	 /NmvbppeiYYnYlvZnEIdOxELvvcJRiMi9MLSwj1Mem6dQlToA7yCZZa3Vaa+rlubWp
	 6RulRTNb6YHmHPp+7FRH+UAKTajHaOkhvfAtyUTa6/5RBaaJ1SXTv7NsdotereKR/J
	 wqJ65lUK19KPMPJsAddLIP2Juzx+h64421bP9/C0gj/4fqQA0MF9XiPjCLbLICNd8A
	 CzELP1VA5Q0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E8CAC596
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659935361.1141.6905608583163536464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fe50551a54da30a755c4814dc3b51f8b56bff5f521b72b2e737465327dbe84
Date: Tue, 17 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726599353
