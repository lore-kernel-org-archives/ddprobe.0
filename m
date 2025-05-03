Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329AC85270
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746304795; cv=none; b=lZZ+k/ixygUzdeB+DElBOhLGQKPRZWun3osiyenq9DeL8fPhhY3hVyw8BsN1nPGtSZrWh/RqXdcsIT3gevqouc9IeJURVYC0wm47h1hAgNAEEvTLdWpa+1ZJua3sDmSdCxjNJhlChOkf2eRrplfXQ41WhFmLsEyanf9uZIKihVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746304795; c=relaxed/simple;
	bh=Kw6jv4nIwfkvuX6uyNkxP/N0ZVJFtZr2eAw0RxjQ+5A=;
	h=To:Subject:From:Message-Id:Date; b=LDt4w1qlsuhlKpBtc/57wRMIZtOcimwnFj1n0QO+J3gyEBroe7r2bwks5uRZZoDw+JogFTBtsC8IQ/Ku2rcRJlPQX1hWTyA9NcgJ9C6cQqvmnNEpClfMVdwmy7kP2Pj6TMcIPxcMMo1CJSzzAisZiARBXkpXySKvZOKGm9Igk5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWwei+r8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWwei+r8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746304793;
	bh=Kw6jv4nIwfkvuX6uyNkxP/N0ZVJFtZr2eAw0RxjQ+5A=;
	h=To:Subject:From:Date:From;
	b=iWwei+r8cmDC7VEuWKqw/R00jvDZ4Dp2mIGnfDTwuoQU4o3wZsTPjdIjYnJkQuZAx
	 +k5NjfukzGN2z9QJKVdua4a7cDbQm+eX/k5weqM9c5eMG/K8C3glq9RpZ5iXIz3mez
	 i3/WkGrC7VeuIQStKdCtskW4DGs+I0uwyXw4dhsqizDqc7GZ+oxrXT30wz5aWIMp2d
	 xCkwrWP7Ni5oxR0Gd8pmt33pHHvuXkFgfpGY/kgDRul89G6hGwkvFgJ0BBw/e0gnTp
	 IS0c+QKCD3mhGt1EnIcztd35m6SX9/zxjJWPifCAgsPv7tDknEohgpjZyRRq4ujp+2
	 eDRn/7NCifJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E200C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630479357.1560.9534941632365285238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbc3c7aeb6e785858f2e45aa633643f81cd0473becdd55edd257783a54da173
Date: Sat, 03 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746304793
