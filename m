Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A225E463
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744616394; cv=none; b=D++8Qzmwfzfb5byM8EbaLOrmQLLqfRC/OUjgNILSwCQyeNbVMpGp/VNjTWxX51oi6Wd6ZrxSTbLmiEIlJ31+Yryef0bQHjTYTz2TCKZZLEiPoBUkeH2DiOAY2WeRA5Ex+mVV5NQkC9P0FvXuHauy8s6Bm2HEY+/EGHPgwz2SIu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744616394; c=relaxed/simple;
	bh=VkVkkzzJIp10z8wGNluqJs/y/nkhDO7jvBZ4SAgdJiU=;
	h=To:Subject:From:Message-Id:Date; b=ps5XxLSMVoa7h6folH+kOdq44X2nC8cjY6AUIxjg5QyNQYbcFPa9FKzp3azmdEBoKI+EKKSxqPsLzi91kzUl/JlQ8Rz9ZQHYrszTB/rm32gIFBNQ7XU77rn5MUmEbiun9WWJEuiE8KFpfTETzhiXv1ylqqPqoBgc9I/R0V7yZKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbOOCbUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbOOCbUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FC3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744616393;
	bh=VkVkkzzJIp10z8wGNluqJs/y/nkhDO7jvBZ4SAgdJiU=;
	h=To:Subject:From:Date:From;
	b=jbOOCbUkyNoCbuq8FSYAPkkBNs948kg8TXL9p+kv2ZM6xWto9U3itUkER4nc/KYlp
	 XlVRVWg5ooScSUwZNSmSDrQwf1oAKsC7mdcB5PNW6AtaZc95BFwSrKIzqY6skUamqN
	 MQ/VvwEehSN67agDqtC6SH/uabufmc9A9D/Vf24m2Bzj+HALjtRn+QNGXKl9a4bXfn
	 uWFMLmZtb9ztjSldBAB8Xs7cPw6owafGl1VIHBN1V84lUcgQdRfrCLFchgRVRebhUK
	 G3CIose1TVrC07jG+4I86X0PNoXYBBpnOdKkBiLOR68D6HS87yanPVL7GNIXeU3DBE
	 TE7/qamE5ZXfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C22C369B4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461639358.3865.17121790940499407441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0d1ce8d6a272a470118e8899d4cc9c756d11921ba0099535c2cc838819e4fe
Date: Mon, 14 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744616393
