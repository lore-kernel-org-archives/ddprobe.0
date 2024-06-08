Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E40E25740
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717831043; cv=none; b=rkcp8ONgTWtPxf8N1yvLz2JIq5cAd9sX/V7i3UZxysFv/HZtK/5GoIckTLm77gDKL3e3rLBEalp/+4ZRkO5IR/Oh4reKmHB40mjxAlNiiAaRH3jdgvIpwsoU5TPAy9kVAdrG6FlmLtJqaXZCDnwasyIPiuf8DlmRbbsXHjORg5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717831043; c=relaxed/simple;
	bh=TDK4f8NmRLG4sjdre+a6/6irLRD/aX1LKirJc1idVZo=;
	h=To:Subject:From:Message-Id:Date; b=eFECAK7weJez2f/A19DD7Z0ouSkEXRrDSFUo+3FxDr9+Em4T+lSj1oFcH1dRhHAxIuZu9K8Qvq7Vd17efQSy3KAqtQBe8sFEDkEyLHj0pxge2QlciR4iNvvPKvP3jnX/vjUcXh/wcnQ95QOplQKdY393ND9zWIdwke+kIifrFzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGvC1dNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGvC1dNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D7AC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717831043;
	bh=TDK4f8NmRLG4sjdre+a6/6irLRD/aX1LKirJc1idVZo=;
	h=To:Subject:From:Date:From;
	b=eGvC1dNpuPzRgW2/IEMaUxrfluVKdoZn5sGZl6yq/LAiEA59s8YbtQaC0BiH2g28C
	 oW8UuOv3q4KNB8kQsQiawX4oCX/HV0QP7kB9KMzZhNd/uYS76Nvp5fLImQ/Ll1OrzW
	 9qMz+3bFahQnt5Mr8RSvKV47sjeoBqjrTxUgluq6n7K0pgx8URjKs8GSDOIwVBnLqD
	 okN9FIgXtQ7jtN0mdV47gNg4kZ0U0ksg9Ka+UQiSOvRVkwvKD09S6pSzYLMWqgU9zv
	 Ad0yf8KeNPv0/o1vJ7r7q1XcXBL85Kb9AZYJBDqrjyIhmc7RTGGyqVlCgQREJ50cMK
	 YMP9/g+Ng4rWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9848C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783104285.9798.11468453232793169219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d99fe49206d6ec2bce2a032891933d6cd3d9044407628b4220f2e251899dba
Date: Sat, 08 Jun 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717831042
