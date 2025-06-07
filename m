Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCF1F151C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749297595; cv=none; b=Xrqq6Dlh93giFlMUf988oaJjf/QeIHMpqwpvQvhPcepzWcqXRiCxcORxsbu61ahh9hpJrzL650eAEZEPmnp3UQ2qrD6UdkA4w6442KSVLKLgS9asePdlLM0nRYEIKbyI3eASZnpZfgPKErENzOBAU/XRECV210b8KF16GUHAB7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749297595; c=relaxed/simple;
	bh=TYGYor9mJRMbbuncK4qIgV3/ony9dYQ/THwGOwkJPXo=;
	h=To:Subject:From:Message-Id:Date; b=txPsBCYajRV1SHH3I8HnRvEgNA/EOcGtpAScn1ve0rnr1u9c26l4TAWX3TXEVi5eTd+fiyR2Yy1FSxmw6iA7YMqhtf5wrPlpRoubN9dDqTXIJcEMoYHonzNIAAPj9eyRvFMuleCvlGv1cmaVvZ6F/8TO3vX3sUzo3PodIpD4EFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnXkvRGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnXkvRGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F6C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749297593;
	bh=TYGYor9mJRMbbuncK4qIgV3/ony9dYQ/THwGOwkJPXo=;
	h=To:Subject:From:Date:From;
	b=YnXkvRGaj8YO10FUOamXbWTSAXGDjxhixZKbuh/9k7rezGN309/1sQVjlpr5zefmW
	 LdL/x5Tm9Aa0nXUTAYE4Ut2LnZJNtqH9fMHhWph+cpfH+NqvnSPx4dhJwWLhHgd0NH
	 lz1eAnA/z9QOqBtzAUvkT7GIKQCaarc4UD5l4lJv8H+tqmJcQMiXaz2uJl3FZLKYT6
	 gRxD3wNXXmw4DbtI+5NQDawKv3RUjo+loGauzJ0zKrjhQqQKLUJ9nYKBKkOADaV1+V
	 VA8KYC3K2BUG0xVegdIPP/sCczhBwLwna0H5Sx99475gPoHNgQMEN0HfpayMbUbPWL
	 Rv8s/4diLr9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163CC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929759357.22416.12408566957567045308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a17e20e41ae3f6778b99a2d093bbb910a24af1fab4f8744b01ca7ffec494d58
Date: Sat, 07 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749297593
