Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159254A02
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756081794; cv=none; b=NbqpHJKz+5wPkwOrfpWzx2pKXH+W27XGkiN5mZN9DE3xKT9X/+tCEsJulFZHQP5n1GOKvesHngUZaUuDhOaEMuUtOEvJQI2QKCkRDPf34u0QGAi1N/RO2I1cDSc6hWfRr0DsToCMfMvtpc2s2EUPmHJEYv75+M9Qh3bBUIVFQUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756081794; c=relaxed/simple;
	bh=zEi+tzgQKyQ2QLFMaX8I6AO2YppfqD1pGhwff/2lr8Q=;
	h=To:Subject:From:Message-Id:Date; b=VPPalznQFYRU++ih4880G2bSG6FxOVxFyI22ikIlFlhApziFXykHAJNl0b+pg8lQOiNum6bBqtUUzD2/Mta7OW/XUnbUq2Diu+mGaGrG/5Ui/ApEdlCmui07a4DXJbhPVKW2ItdrzhHDRyZVglQLSlmSyEKQsp+dMCI8edsE0Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH0Yac0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH0Yac0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756081793;
	bh=zEi+tzgQKyQ2QLFMaX8I6AO2YppfqD1pGhwff/2lr8Q=;
	h=To:Subject:From:Date:From;
	b=AH0Yac0l7BOnXj8BMj/+DPRD53rreb8oD20PmQUh0mqB4GebN3ggUGlE8LAYTe91H
	 n5oTE4euQ8ckc0NHcKSaNahno6IZk96rC355E4PPeiAMwqLr+Ma81UAW6f/aW/wfh9
	 hgYN916BWztXuVzX3AE599fx4y406et20RvT7s1PiSlnYLG8/lMg6/7EG5NOFqnjj3
	 T/nniRbWEk+aScFFJXQpsdZNS8njO+XYeaJS+aXk7NaFJ1nfDbANMmJqcZBC8c4Ak0
	 rIWatBUpLVkcZZqBIAf9LFV/5uFHJZ1WkGXiOC3t8VfmpntbMV0rGw65wY8AxZQF9n
	 z284DUfHra7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6CCA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608179357.14032.8866713872066211385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a255d42098439687cf69b0083fdaa014b9fcc70a3ca1c2d11916ab65b14eaf
Date: Mon, 25 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756081793
