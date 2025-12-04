Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B6D280018
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832974; cv=none; b=Zuak9yo7Gg8Q2h2mo+5xOVqDQ/oWCHsYXjsRvhWq9XS17ZmLRpuCe8BR2BwMK4nxZsNiPZ4+MG4cfHVYwE3z1wjPxD2KGaDxKk84TVenr/sBIRknai4V49TaV2wZbWpVzEFd6qBoRpwBBRDd1TLZIAfS4QnUnW1WwUBFEBbrMjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832974; c=relaxed/simple;
	bh=ZRxNXpC5XbXQI9X1k9ZT5CSKfHv/tBSYT4gDkZKdC0A=;
	h=To:Subject:From:Message-Id:Date; b=So1NZqc7ofUKENylcZEg1bINCVOqXDTQbrYRzKqdbxPzMtc0v4tnEx3kXQ1SpO1wAq2RG/yurU+YNf+Y0wXVCLq5jL0iLnMql1+HTOGnYA1OrTiOkaZ/LJHeSjO2o68jtO2dXed0vAFMV7xQwZ1DFqrhxigAWQ6v5LoerYaP1Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy/JiJ8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy/JiJ8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB0AC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764832973;
	bh=ZRxNXpC5XbXQI9X1k9ZT5CSKfHv/tBSYT4gDkZKdC0A=;
	h=To:Subject:From:Date:From;
	b=Hy/JiJ8cJHXEpkN3ZqoNacS/1xq1l5uZffHjx9sKvP+BboM5n4fK3y1lkmD2+iEj+
	 0EMHICrB90xI/LKQYHjzduUZN4+TxsFYFmdX088c2xCFQbAixPWSgpAa05ogU+SbSI
	 dUYb7m+krzsxzxCvVUnM9Wcbx6qiWPzHJG9TLmvsbiKj+rY7NL1aQHG+BKIRAvme9C
	 87m5P+zX1ncfzH7cpTZ9Eu7kTZnpyjpLqvDNAMOptTjx2J2vfjjW30jjTCzqEK2Xq3
	 an+4TYENfSgqPrPN01psFQ41iHOvnBA9rPQhCUUpN30UmIvn5fhWD115t0l+JGE7fc
	 R4vSE8EtkWfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A362D1D878
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483297362.7520.3546547938926829345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be297ca58e333b81f1169633315784c0c219d6da7d06dc145d72e3a104a967e
Date: Thu, 04 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764832973
