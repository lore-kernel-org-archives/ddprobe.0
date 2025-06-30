Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F0219924D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751300394; cv=none; b=jtA4sbGG05SL+ZUmwqqKcCuErGiMSpuJI156UzE+m/bqYlOj5FqGzJ7a76OkZFCsqDKQZV4rFTOW/mTsbF0cnTTUtg4I+CfmTqoazbXJJYWl74YGRY661LQ228MlG0BCKjSIs26ohrHCgSkmR872DALCeoGUtMJuPj725U2Qqpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751300394; c=relaxed/simple;
	bh=4kfHF6TMQZNDdDu1vxuGHZ1M4gzmvQ4C+1whp3sOwJA=;
	h=To:Subject:From:Message-Id:Date; b=Nbwm2CKtIaCCnwrlXlcyuXN4FgGQlHaXaJRhIm5Rv/Onts2RafuGPq3ifnWjH9QiO7cBbPCnVhWJPPfFzYgnoNKGRQnwaiVAEXPPaBDD3PfQ77GYHa/8pb8f58z+8pK/IJtr3AdrbvbHWqwiasQPXIqngAXdOuNwVYa+vRN63qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iU0PYjr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iU0PYjr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C01C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751300393;
	bh=4kfHF6TMQZNDdDu1vxuGHZ1M4gzmvQ4C+1whp3sOwJA=;
	h=To:Subject:From:Date:From;
	b=iU0PYjr15G8n3+1IJjAHBp4I/qOagGeSkXYvXZ0jonJOKNMxicl2qUuMiw8WquPtc
	 kVzjvAA8OfS4sb0FAz4ObNoEb37GJT0Qkvf5Qo3VwQ8/Om61SLLhE9mD1z2BLOxhZZ
	 /tFFfU+21BYHSMzYKztJK8T8ohrK0GmCuaj0zUqaQQ3/zL98HdDnB/amxJF+diJYLt
	 wo5+YHNI88Y93G3txMdD77sVq9g8DeFsWXkhs0HWVbOM7/HbMfpLT3OvsUzS7DFL+T
	 T7UbeOU7mqLjj432owpWZx39vUTgYpC9kw7iWLXt243FK5Deg3QtcRURBL2i73IenY
	 Sa4U7t7APctFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DBC83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130039361.9733.7890002869345835111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a41632cc25bc586754a00f0ded710c8e58c58788e6e96a4c6ec10cade2769dc
Date: Mon, 30 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751300393
