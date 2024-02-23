Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBAF146E66
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708720097; cv=none; b=X+QApyAABQJj3g2HwGiU5ZwTCI2bBQEXhd6JdAXifhd9OL5VFBsoYmyDOtCNyxlW2K2cpT8Fz0Zsmon7Wj9EeLovz9vLyGP9pvvZSEB3wQnG1QfZ7/rM3NZTYnD73TpYKIhNf82NpOdiRylSiFLzEh0kJNz7/w5iHrcGN2FrBTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708720097; c=relaxed/simple;
	bh=EJK5qT+HIq+qtOsV9y8AHeLdPemkDaAsflwoJpe4g2c=;
	h=To:Subject:From:Message-Id:Date; b=r9ASkqa0yGxNVPDdo5354CqgMAoLiGXSW4qyVlOuOZ7lvZtqrJmDWedLZm5bc1AJjPJEZcMtZQp9x/nPTNf2SuyXv1+tId/UbmWT5HB/4u/Z2gfaGkjtr89EpXeVf9HW79zEOnenDxgbIBTjeDXJEyaRjxKdISunk2NYpJ5xA7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiO5NX/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiO5NX/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D2BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708720096;
	bh=EJK5qT+HIq+qtOsV9y8AHeLdPemkDaAsflwoJpe4g2c=;
	h=To:Subject:From:Date:From;
	b=XiO5NX/5CqoJieeoAIvGcofEfLiUXZB8VTF1IgSd3g0jdeM5vC+lV40eLHznAFRbw
	 2IVK4cNIpgvLlLPkgly0oeJ/DvAb/fZAJjpLqEQtedZHwzVnvDGYNmoXasuTv69NQC
	 8Qd/VZZClOyMCPwZT7nd/jMORRcCg13YSF7CPGNU43/dC2K/gTOxKCptU8rszpjjgg
	 TrANiHyNDkEQO8M2UGge7q0eDjiwgVKfqQKxodaJxPJLboVcDZRb69/mMtuCoMMoVh
	 cmT9w388vqSmvfzMrYyvinUiELert6JI5sX0GUk1QY+f+ABdFmMmaU8FClmU/DTrI3
	 EidJ4iKN0RPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655AFC54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170872009640.8300.9198916667333813829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d283c0907d04fc9670f550c6083046d17ccef42c2c6775cec5047ea43d8a4b20
Date: Fri, 23 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708720096
