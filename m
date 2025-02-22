Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C8113A3F7
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740202135; cv=none; b=mtkuR/qnMTfKMz1HqEcEehnS2OsULPMsRGN6w9cfITVXon/ADLznzTAtG2qdzcrIU/1hxe5djVKChr2QMQ8Z1wdPRg6IW5ofCEh2pmTfaV5TZ2Y9PApK2NA5eVq1v699WR+g05YvJlFPOPH2JgJeqvLMhr6gSkYNGKmXWrQqtLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740202135; c=relaxed/simple;
	bh=4s6gy1AzBqRMSZ2ZsWtPG/QWnXPiyv0uF3IgHPLlL3c=;
	h=To:Subject:From:Message-Id:Date; b=OC+Sf8cyVS7dKqXo5T5obkDmu7t5i94lF54iEfqGGDMRLkB7nn7esDnYXThHPnIQB+3JS0DDilmC6tThxUySF+Mhe+DIAV0s9TLa8+HO2tdUNhBBzdQ+09eTPGklttKV1Y3v5Doac7yUi0oAqxHGLF/8bfYm414fFoqcJLAmxfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAl0VaVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAl0VaVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2449C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740202133;
	bh=4s6gy1AzBqRMSZ2ZsWtPG/QWnXPiyv0uF3IgHPLlL3c=;
	h=To:Subject:From:Date:From;
	b=PAl0VaVXkGaVufnUnrTHqAxSdHv8qjqsR1235sr8XEfE02gG6bejlEeOvNbyAXgUG
	 WEoJCL6jc1mnjPAqfjzJmQDrxAjrutM4gZXilL0Ah98egLgKN8Q7oLNQluOQt/QsOm
	 Pd/a6XhuKCp2LKv0Ji1ENkvnSoXuSy3adyLbOQ0X018GxAi5PoNPol3B5g/oASwxKf
	 fDKbfRiUwTLF5MaIPdgkbRGQYxwCeSZQrrc5X1fjPHqHEgi1c9cdLbETwnGq8KqE6X
	 uAEUCmGbtMQOi0jnB1QPCDVCWAGFd2AjfuIWdtYbtR20FMkEmAimiuK2E2zalFa47C
	 2lo0xLZtuRAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B1C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174020213359.7739.8023483668349048905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8948ec779db0d56725031e688bd2a5562498d70c4d8b1eb969870a50f93dfa5
Date: Sat, 22 Feb 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740202133
