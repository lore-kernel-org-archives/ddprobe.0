Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681E1212B18
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742364594; cv=none; b=Bw8wYK6xs82x4mz0rD1ZeCh8DEs58Po6p5PLozS1/FKDcXSt4BDTNGToVf6vN1XuulD9fyY7kp24y7WnHDLt8Wyb0Cw94916tIoKtSIF6qYMSLrzZ9KPXJHswQ59CML6RZljRWSD7U3M+6pDNBIKxMyv6QQIskr3+idBg5BvC64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742364594; c=relaxed/simple;
	bh=Rj0rlc9Msov1ifU9z6hL+EEkBvfPb4G5r0L3/VxAIgA=;
	h=To:Subject:From:Message-Id:Date; b=JScu/s244vdODmgj08qnP+TvRzuNq55ZS4zZiKPvZRJwKW/enXuQpC4X9OFS7iGUJjX8dMHHsA2Nl0hTrDaXJyrDUxL3GI0uy7X03mL+80N9yDKb5J4fHhWc+uXsEEk2C4/Btuj0emR0kGW4SbL3yqDY7C+LT4RHs1tWUnGuOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icf2b9xd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icf2b9xd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5850C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742364593;
	bh=Rj0rlc9Msov1ifU9z6hL+EEkBvfPb4G5r0L3/VxAIgA=;
	h=To:Subject:From:Date:From;
	b=icf2b9xd5VJ0i0+uzLQO6a98OmTbRkeaOH5p3vh/t1ynUg3HPGp/TDdAtuhjBaG4W
	 id9bgQdVkdGV1wjzB13505lBGAh5AV8RqtagMcxty1K6Rl+JI5aRxr8R7Xzf5lldly
	 ZydQm/DVvQ9v2J/Z1uaHBzctEhVgCH01NKzlTEWZtFKQzO0GP4eya6deB4lgVIRQwb
	 ie3hTcexggyA3VdH/qCLuGpLLrdwhZ5IcfCflKjRM7IgkirtZYy7ZnSjNSkhfvltIm
	 xoShoW9gHxXLQefaGI3LbbzAgbdSXaFsuN2gsUAVO2K8gBIhPL/OdoduB8PT4P9etY
	 undn15X3G9mrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A148AC35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236459361.381.8571710699608099930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8249097360cbbabab1605ad2b895559548b13ea377258f6bdde172d92ae770
Date: Wed, 19 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742364593
