Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F15D2FB
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727062554; cv=none; b=O8r8mItiyhdNKBciG82KjF99R8pDSWDAQ9myrwDZ7cJ2YjKHl5HlYi41cW8w0qWswWg2ecvcdW/DLpvF5cWaTjt2ZJLZN21LTDRemYAtiORUBzAogS8Ue1bKkOc6WAuSmQ/jWhucJzT4T8OuvOLEAEKImg2j4ZYUIQOPZS9aYxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727062554; c=relaxed/simple;
	bh=EmoIq0i332MrVmUwmUAHhyN5OcSRVaKErMFNcDOjEFs=;
	h=To:Subject:From:Message-Id:Date; b=ay4SEOzBGShCPdMCf86BgQwFvYLMjtHWNPcC9dbR92cYFUg0arE7wo2hnqzCALmaTrYoJC/D+8rkAY9TaHwGiAztQvzMMkZWwU+aAUgoFm5+Dl3fgTbKYiQYguKwWGbhtvwYFP0cVvM4Dd+EKD1HWUNK2HFYuwjrmFrhqdnk87o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBb8g+oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBb8g+oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD628C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727062553;
	bh=EmoIq0i332MrVmUwmUAHhyN5OcSRVaKErMFNcDOjEFs=;
	h=To:Subject:From:Date:From;
	b=iBb8g+oZdGmttWWL2gvecg1DUSd5MXw+wHih3pBz7+Mzs9Wfan3qlIq8nAodBXV0T
	 eGRSPAs5SAGSnCNql3Tgt12oPmhw0gBbAJqniyuvMyfHjwuWjyEEkJwZc0jITFMagR
	 zEOP8GOU0sS06XP9SlL2T9KSkzW194wc2JfqMkXuXEq9pluG88uTEB93sAdb4BSQTR
	 x6bmyx7HqR4/x5p6azo5asmZw3WHJ6X/50+c35wBVFKj+M5T2zlwgEoQjNPD8QR0vW
	 JJsZ0COhkeO+5mmltoxsVU/9nZIPQEoctFgeQCLKSVm/eZx0vqYg2RLWXbH8Ry8ZSc
	 EG6Y4p4MScldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E9CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706255359.15965.9599492859857034228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6374f811679f3a82c83eabd2229892219e8f04dcadbcf05afbc6a0886cf0ce
Date: Mon, 23 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727062553
