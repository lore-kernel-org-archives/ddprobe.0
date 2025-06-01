Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B3C1E379B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748794193; cv=none; b=I/05f/nC2Q1BsptuEBezU5mfaETDd1pa2OKjsRrm+VyDJ1kJG5+qkZFVMvkuwZkbzzrXZPp4xTC3HeZv9iDuyBMTaZl7N9/nwkbWFO/tys5fn9B4DxMXJoO490O/EIQR8VhvtMHVyGCxoSOVeFE+fr62J7/bxsGQDPZEC570Bhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748794193; c=relaxed/simple;
	bh=zsR9fU/1Sm/jY99j84l+QM16ZK+t4AdqmmOMMLnxwLU=;
	h=To:Subject:From:Message-Id:Date; b=HVVg3j1J9wY4wtWZh9agBorvi3plX0ckUJcETpY01oQMpHwq4aXJlJyHBR0Y35nfuo/Bq6iUOIEoskZF8mM/0Vj0EAvc9uUlMOSAbnvOtZnkh3RknyPZKSgp+rxf/OPuTCoVS28YV7ZuhJeolkgyY5mmYyRxR+7vGHV49TYfSng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uooNx4Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uooNx4Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA9BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748794193;
	bh=zsR9fU/1Sm/jY99j84l+QM16ZK+t4AdqmmOMMLnxwLU=;
	h=To:Subject:From:Date:From;
	b=uooNx4Z8/nyI7KS3svSBcYZgyR2qku5cb4MzLffHJwG1slXKSCOMsZT9w2OX1jbCU
	 19YMbIeT7taTPJxnF9BocfLwFI1nez2JHNqsi0i8NkV52c14qQoNEwV5CbRM/kHs7Y
	 y0nmWE+pnMto3eLcO/mvhaO/0jdciVbNMZe2NV7jmLdSg6YIobVfePOIsIUdLQhDW2
	 Ei7aPtwjb/ZR9dUhntv5mmcG323hA01S1aONLBwifNWegwbYn6/xAVCvmqDnext0to
	 ZuLex5b91PFb/kdcu6bP6KFleno+AkQVPIIcWM73PSqzBzScV5i1Nfep39li+A354p
	 xKDbpeVTs1IDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F838C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879419358.26339.5166677149627413351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc53d188cb3fa2775420673f17d90a95c62c5e26edcc6088f920e8cbe87601ee
Date: Sun, 01 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748794193
