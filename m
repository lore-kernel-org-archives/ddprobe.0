Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43449244665
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784344114; cv=none; b=Pn1sKJJt3SuAyJNfV93LMpzBcZHFldl44v2GhgvjsHPcf4H+Y8OvhcLjZwty2JmDsNbdJ8W/6jhmEpX85/lfPcwh7nNuYio76VeXJ/Ur/rbVAnIVQfPkhMv0TD0bT+WSJ3m+nqeZvoV3+LKNd2zEfUJiGt4ei9PSu0aF3dkfVvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784344114; c=relaxed/simple;
	bh=uxVQW1LjzpsLa9o/3nXKem4yCpfRfmq4YdBTUznlwpk=;
	h=To:Subject:From:Message-Id:Date; b=b9KV5RiWwBGScLSimTknGLE8Fjixqlt64+O46uaHytmki/KHQFz2rbjPGJpmLb+ql3mNLf8rfayafjZrYiOqyNptaeXb9l3GqIQYTwoDLM6daTZiGVSePgnht8Tktkxuv8P40embV6G2t2EDyIQL0Ck737yinVQ/SudHsjZbQro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDDDJOvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDDDJOvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784344113;
	bh=uxVQW1LjzpsLa9o/3nXKem4yCpfRfmq4YdBTUznlwpk=;
	h=To:Subject:From:Date:From;
	b=mDDDJOvCKVEes3qsZUqhHCSmG5jhkwk4e0207zb+hnFAy2thRHZQgYJ8kXiqMO6Us
	 Aim29/5+LZpFkqOy/Squz7s1ng5aNRS+KDFLLs6f9jok6R1r+xkwR6Ax9WHrVsaGOJ
	 ZyF5kCl/9DCIdXCFrGAfEEhp3+BBEgjhJeoBd5Ofa2FPibPX0yTWlvP2mQePJLRb03
	 G/fKwaM4/HX4yUCF5Ol73JNjqRND7nGVCx9kGLTYQrKBSUgKi77fZa1Tev9r2UQGaH
	 /npgvaK+lCHmUEZrQ7rAf7ft/ijpSt/lMOQOHGlX33Fn0phT76qC4iI+1+AgTI6dyk
	 kJNz/dVKQa6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD1C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434411368.29917.15058720810063655502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0aed39c99e1736d9473b15a0ec2c2ca6528a4bc1b6bd270a04b8c5e5edce313
Date: Sat, 18 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784344113
