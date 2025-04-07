Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0621B1AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743998994; cv=none; b=bXd5ngjyCvyYP9bX9EkgIt6xASPhBNSoi7gzaOU5PFFV/GlqPTWRplij2liCQko/zJ3oH7dLdgAxQe8oXIHLKJuEZc01ryvptGgRvUx8ieyLGDYTPUpyERKCelwx/i8QeBof+8Z5/KKw3PZo/+eyp9/WYUlAR7toQXcDmax8u20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743998994; c=relaxed/simple;
	bh=TzfnCxh20Lo9SaUQ9Fq/ALlAqeTbvV5T3zSFIa0Z9eg=;
	h=To:Subject:From:Message-Id:Date; b=WdbR9SsdHka0/hbgAHtB6i/bAGP16F52kKEcNlsRPwSoe4b5A0CJgikiWnVFJkHNaMFd8xePzlckT7GABAN3NhCVFXwlTx86XNR/MAeMPyxQPW77RCCmUOSFrejh1P4X0LzNLHcr/OTfUjXxKcg2kc1nLRYaRPmenjg1vCLIGB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YERvGKqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YERvGKqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADE6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743998993;
	bh=TzfnCxh20Lo9SaUQ9Fq/ALlAqeTbvV5T3zSFIa0Z9eg=;
	h=To:Subject:From:Date:From;
	b=YERvGKqLANMmu+ntEFMmnJ/5UM1r9ezAzalp6paN6/3hC9avN6gPsnVS11fu3tFSc
	 1qT7xZe4fRUt3DHNxbjCC3zTTecX62VUuLftXNxX2kULZnUKR1jwfqYAyFn21ns6O+
	 cx02BhkDchsxyK+0TxvA17mr0yFp4+kdJUjkTD3TrZwPC8GWM+bubMGkY4zuhTt0jx
	 W71ThwewNjrVeGZeUV+irnRzc5saK+PhHQgMuQJsh3S09yHsbCtqowQqJuiyAM0ftB
	 5Al1vHrAaiw+duycpAtYZI1r13FMp1l7zElFvI5BRV2pRe/6OeOWG6KLet5Nuko10G
	 mBXdHa0jMR/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F4C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399899361.27914.5389901009888057875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88ed42d45a4221f68479d4e2d725e49338fc81f4950831e144a85234a09cb7e
Date: Mon, 07 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743998993
