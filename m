Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AC23741
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734668154; cv=none; b=C+TeC9lJRKFGoB3yY41iWavDCl1UgtK2I6V7Jq+xN+PI439CEjilszWAlq0/HSaAtcX2IWDJ5UJANgo3j5vBdWbT32MTYY63faDdlVmy2ITxkLmlKqMomup4OV0VhM2I7nkcNttAz29R0tWnME4v5ELHHuetQGkc6wZctik25h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734668154; c=relaxed/simple;
	bh=n4gZhHZdlD5/VHPMUtRsB6iBe1R467LezPK2SNUIHkw=;
	h=To:Subject:From:Message-Id:Date; b=leOh9jRc2R058sCYBLXm9dpJ+B53qNdbdqURceJ6i9rKr6FbB8IyJWfzd/TwmRGjGv7fCXsvOu4+p/huv6wPFI7BhhL1Llsz+ZG7KFvJg+Ha9lD2RvIpBtmUUHoChEivGJaxKPzeqyyFU3yWEIzrMOffv2FcoXuucaYXF+bH9no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQi0eAIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQi0eAIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC8C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734668153;
	bh=n4gZhHZdlD5/VHPMUtRsB6iBe1R467LezPK2SNUIHkw=;
	h=To:Subject:From:Date:From;
	b=BQi0eAIS3wHqcc14zkQpeue39HFRIYMDz1+t0+PPY3qokPTrwGAVMhw8pxgnaY0eA
	 IZeXulOl6EctBcHDizYOVMOtZdp0tqIzfO/BYsjgMJcfEmT8VRAErqxto5XO/dPCx4
	 Y9I0TDZxGkpng2+ySxe1Qq8gt2weiiR1RkcchG8/fr9zsppxNeLXmqY6ZivUmgMSGz
	 jB9PbpIfLnsXraX8VwhgoKvqTOQUC8Ls4VsQErAzeimLNAe+bZmyB/N+mSjRpWmWtN
	 rJoorf7Bq6tjatpKg4XSQmr+rNTBjkchD1kHT9b9TfbSlim6uNlZF/eqpKFBOJfrvL
	 9g9fLzf8gtWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A536E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466815362.6063.18297194448985560407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27f3b6ba857a148eba8376980f9a72d9ea549af4a94d0694edc27ae81baa82c
Date: Fri, 20 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734668153
