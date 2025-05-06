Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF05281369
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746539994; cv=none; b=mCSed0/gj5a1dW76nUsRa8l1Ut4EQ1LXqt5yF4XkIJQOOOJqvTQzzLxzgQF4T8iXh9zixgDgHObXLqz6+IQ2kiDChyCRoRRNLW7xpYUar+b1hz50gbyBkrbEQRCZMBp2QyG8qwbHL7RaC5adAirkLSPf8r3pH/pjoUsc9cc1jM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746539994; c=relaxed/simple;
	bh=u9Jvtfymrvq5CSLwnuOSokwMP+2W0g/W1Ge/qb1HuH8=;
	h=To:Subject:From:Message-Id:Date; b=JB1SKCgFocVOZ3Z88U4d05AJKCt0itYuDzc7xMbQhceIJDJujlwZe5b2h+JrH27Tnvq+hFAkY7WaTHD/aXjsM1uEczVQfsz1zlDVsBolQ8QqH1zxXK75ZTKXP9t3SfB0U4B6/RM+IbwLYtjLJUGNs8RuptxEEohD9Hg/UJJCPF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKYLhDAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKYLhDAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF6C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746539993;
	bh=u9Jvtfymrvq5CSLwnuOSokwMP+2W0g/W1Ge/qb1HuH8=;
	h=To:Subject:From:Date:From;
	b=MKYLhDAlZyYybgBwQ5aJdDh8IicfttCcRuFzaJA0TJ9jvydt2Vk42IUaHQ/zJHhCd
	 N7Vb92raVDvM+Tn9GTH/s0vhRDgZfguWJQJS/CHuVQ1YsaIFUvUuc6WYrV5D1HqT31
	 jW/F53elZKep77tBg42BnXyY6VjABTmKMghaYtbOxk8P6w2vAMY90rri4yLjMRHK5t
	 ABOpZY9MWgAdbyyIzDMwG1WeK3Fkzr9pUfDQLDSR97SIoxP5Gdg/KoxzO448mVJLlK
	 WbDd4YGcj1Mdzzc6IXiTNSRkOsM7QEDTa76fGq+itE9Bg4x+XR2oNANq0SyZbPOhLB
	 n2nsbxvXElvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228EC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653999359.29267.13244694608170826647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8614f8c4c73ec04a596f9784ff226e5d411b50079a542a8246ce3665846d64
Date: Tue, 06 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746539993
