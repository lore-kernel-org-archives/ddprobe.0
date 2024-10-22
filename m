Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC626F066
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729593354; cv=none; b=VPCLIc5ZRvt6Ilcaa0RtKZTWjK1IEUI8F56Ps/brub567L0E0YXRDlN5ZhyxvZeTe7iyn/uUbLOQStuZovoDwO//sMUADWJpu9HjioVEX7ohQwPf7brSm2rPoR/KgSGZIifAq1sqT5aozvc0GewLGqxgcV5q6iEx2pEpfXbrj3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729593354; c=relaxed/simple;
	bh=pBef2QGN21GCh29bObkD2AT36rKaUHQv7ynbx0ws1+A=;
	h=To:Subject:From:Message-Id:Date; b=kPW6BnFQRFCY4rwuRrBYJiGefbJrur8Dibzvx9BgOpJJmfifdhHEI0VSvHB9v7BabR/vYQMAEOFHMAbZqvZXdu93y5cHKJULqJSi5DnKBTYho4bKNW0ztrBChJzTmuHu9t9j6OpR7cObUXujl+j2i+aiR4J37LFv5rHKyhciBKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anlDdcoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anlDdcoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729593353;
	bh=pBef2QGN21GCh29bObkD2AT36rKaUHQv7ynbx0ws1+A=;
	h=To:Subject:From:Date:From;
	b=anlDdcojA06tNEbxqePaYHZGW9QmskBf92WNX8FXNlRLt79NZ5lwCtOtqMzAOcNgu
	 jHfuudYrGwUxWLXJCjq8fx8R1x92b8wR8p/pQH/qWzARjadiO0t26KH6O7pqr+z7zN
	 tE2pEMdm1Y1aQXa5sZl4WJt/XEZGw0HCSA5lo6iMc+jAiJb1KdsOVmm+ZZe68mgTGE
	 maB2RJWm9rCbny0E+WLqVRGcPR5s3EkjEkn8UFJDjHxcWAIho2HrE2sqhB4jxYJ2no
	 9D6Mzkpj2TONkd+PIXHgRkUmQ7leXoPJDGLJ53k/xth2k+azFdEG6MR800kEF47AWP
	 U2wmtOm8dXhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D2D1CDD5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959335360.13451.9744678387212290830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9b18c8e084c17aa7ab98b1a2960d190ece807453053ceb385d7a9087e6f18a
Date: Tue, 22 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729593353
