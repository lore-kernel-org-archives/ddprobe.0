Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2211A1805E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793794; cv=none; b=ASlRRaRzWHmqNCBRp2nIpzqoAKDODFGJ5I4lREkBl4c/Wu6HBvVT5hW5IWUf5AnSndP9RAkfzYMnbOzVvLxLrHHDiYCcbNYCr7HvI72ufbq99wrZClDIzWhwX4HfZjos8JT6MLNOtkC2dOBcp25gm7VxsiQFJCbpjkj61WbrH2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793794; c=relaxed/simple;
	bh=B6vFHmVFars/k8g92+RskJxmc7pu35Kk7sis1+Hs6M4=;
	h=To:Subject:From:Message-Id:Date; b=WnsMLRer0irfu46BD28acD3WBiFHl+K3QUiTt6f8HVGPqaRRmcpECPU2fe8MENiu9LiW4/NoeaPpgXmOmcpxcf7hQxREvergM6qcRTiqOvux0tUIp0M7s5V0Z8iyzI3ns0WAHgkXGh2elQ2wGisZlKBcWUDuNXvuGe080ycVMFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc4f/8ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc4f/8ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B140BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758793793;
	bh=B6vFHmVFars/k8g92+RskJxmc7pu35Kk7sis1+Hs6M4=;
	h=To:Subject:From:Date:From;
	b=Dc4f/8katzRAM8pAJ/x6GjlpQmV4xD/5Q1K6ZGBRlvfxM0vm7Mu3zjuX2u1TQm/xp
	 fyb6OUEBe4sY9Y4M48r2opcASmGTEZQ5/f2KMzCyTTR7fQv8Ln4a3/E2iakJbM3nSr
	 0XjjYoxsi2kPJkQfOsxjMECJLS8Awk4T/W83crHvYUniWowZNScT00uS+vjgP/wExq
	 GezfDZZUGEeUD+ckP92SomCpPmRDSZEwDon1zzgPJ2zIy7fgEjyCK6EyVvH06gEhzf
	 DSiyj6mAAqS3y7nle9p3azi9ABM0dDNo5yj9RSGYth8HzW2YwWdA7kmHWavl0wbXWo
	 G3kN8yyYED8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E34CCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879379363.20947.8828525802850362056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b94851ee99b49985ca20d60b9e46ccc761040d350ea073ee45e5093a791edf7
Date: Thu, 25 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758793793
