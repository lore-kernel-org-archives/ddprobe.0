Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C909D54654
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762652393; cv=none; b=RejgiDNET0NfOErt1cH0xuI/QkiVIQZllnW7aT0dub8NczLXPF7H7tCMnEk60e/F3PHyKRsnjGxHj2+NpVgdvYQ5/Or/Sn+UFy2/XqINCIr9uCrBfs3e53DG8rdHbE+ZQ/fJLMvwXxDtObGhYa7KAQM+GHXnidvYNP9IM27P/yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762652393; c=relaxed/simple;
	bh=ADCn4Z37ZupAosC1sMyyDxKC+E9FjGWtGGkPwvOCXRU=;
	h=To:Subject:From:Message-Id:Date; b=s6iUTdocoQdO23qkRGvDTq17r9eprFCv+uLAfoqviBQvN7UFrgxpQoT+zB93MnYqjewbHGvnmqR05O/04lY61xymfV5A5/ptkptDkxWBUhqx5SsetslN4vWZepgLEkptxX6z/YKqsjFoosA0sKDfgmxtwSdoL7qdGMONOCOHBXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/bCcYvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/bCcYvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B01CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762652393;
	bh=ADCn4Z37ZupAosC1sMyyDxKC+E9FjGWtGGkPwvOCXRU=;
	h=To:Subject:From:Date:From;
	b=X/bCcYvG/ugq7ebZWYaZ4pdra9bZ0nex4gy8jht3Eic2KIdNtPpg0bXXtpBxN85Gh
	 m01jFiU2TlChe4M1+OvgAs1wDStTkg6OfTx5nMTVpjtRh9MHQwkJZ4q06jkGuT8GAt
	 gzFY5euOwG1/EFDMkXZGPmg0WzHkuq0RhhcDMjbnd7SbhjwkOwoRWadtSOebJAi4cu
	 AQokVh0202qUAiacw1hiT2z1C0IutxtuAOvtbIKvzKhIh9c2/kC3UI6CG2POdP8HUT
	 8os5nzMrXqvmbZ94LhLrXW3sw5t2yNdD8IE0x573p504EmceAPfZ20ovXySidP4/T6
	 COTFMwrY2fSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E7CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265239357.3072.4209377748925422766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa914fdd738614b2403b3f909a67ca95e4146fbfa934765032b8d8a6fbf26d8
Date: Sun, 09 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762652393
