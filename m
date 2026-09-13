Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E044361DDC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789283434; cv=none; b=QwfD1+Mt+SGMP0WBlCjQdA09O4tkVCo/lBIsbPuZbr94aSQLobDfvF85Am+8lmfW6+wWukiBMwCBYd0+WHW3TBTPcUZKQoxTFi7XA3FWOqhWcrrw1+/AkWO3HiiB5kWNWsK8gq4GIWK6ABvf6aR+5m+z2jPwIt7i/m//zsSS08k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789283434; c=relaxed/simple;
	bh=R2XgNn77CqIcRJc+KPs1NRRzek0uXeCOaruuWXt1+/A=;
	h=To:Subject:From:Message-Id:Date; b=uBBBTWekis+Eizw/QBabWlCrZ3s3W3301i/+Uh0kCQQnGSMy0/+W0DQ070KxrZlThWekpAbe6Ma9knreXUx2sZ7lGc75YSjM9giiBguhqCjXIgms/307txQS0+O6WaZYBoZ9qP/Qxt3mVfFnw+dxpXfl9OB9NzhL4o9rnyqmcHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e97dQJPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e97dQJPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2A4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789283433;
	bh=R2XgNn77CqIcRJc+KPs1NRRzek0uXeCOaruuWXt1+/A=;
	h=To:Subject:From:Date:From;
	b=e97dQJPWzQ7oRsHtUpyFtT476ZUs59fmlU9KKwEdq5e0mxkSenxgjzViKWXOB3OLV
	 fNz9qUlJjT8Pa7ufjYUaX7xkt1mm9XkRGXpImRTo0ElAQw19Io27tAvP5aS1Q7OVlO
	 t5iUx5cqGDjrAudruVPI6aRvjDGk0wYdavTv06n6YXKO5ebInO0fL1TcyV9mqHWLoE
	 juj6C6kPf5LssajEoMYB6v20XWCvlL7SfDGsG8RhM/6CkG6azhvqmzble8yZx5BL6E
	 kjnvowpgkbY+c+d1DYpSwRgTberwdjrFuEBAP97O09Npp7r6HC35XSP+pPwL+H8E0o
	 aWKWNlcHm1aYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9AC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928343369.28043.5213501415443941773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab71e562dd75f4725ff02c91be827a2ddedf7270c1d7778944d5f4c7cb8ee8e6
Date: Sun, 13 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789283433
