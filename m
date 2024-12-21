Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457652905
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734756954; cv=none; b=IBMPYHTh0qpzReln//Iyvr4yAyKpxLV0diCHoYycKFXDuCmxvUofEdjEVNLI1gVHDMIhcRZ5NBGkA0N/iobtq2f+h4OdViwT2rVGjwAuJ9stBWKEtm4Pp/7yatUXYiDy7GByqC9vzN5zRPQTXX0ElyghoI0jRPbDix6mjlk6uCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734756954; c=relaxed/simple;
	bh=dlYYSOGJNz7vskQJ+73hvD0mq5vqLxDOg70VfHVh+xc=;
	h=To:Subject:From:Message-Id:Date; b=t0sPJ0Uz0l9ugzZDoN6czdir7rrvc7zIm6g6cm1kV54XoVi61GfTnBnuRyUJKFBFaVOuC7y7gTo0vWIgmxw41yqT9yz6fN6yLqmv162QENIZlQEHSCEcIFSi+GIGdajOtqBEbZ/UaPjmWharmA2+TaS6UJtfRx/fYjn6xOwvQ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig2hsEtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig2hsEtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7720C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734756953;
	bh=dlYYSOGJNz7vskQJ+73hvD0mq5vqLxDOg70VfHVh+xc=;
	h=To:Subject:From:Date:From;
	b=Ig2hsEtc0KEE7jhT90YfMo8TshARQZpu6sgipjziXGhECfonFNoUP/MZgnAV/g8Ye
	 TrGFw/pMi6rEIBVv06eaGl8grB1Nie8j+NIimmms2U5+7auj8LO8sBX1/c0faK8jNd
	 CVslIix/Al2HC2OyTgXctFRWBLF7i1h/IT2iJZyn5Aje0+RXL4zfIW2MCQyu4fIcOw
	 4wzfbb+y6d8ox8jlzN0kDQdpklga03jnuW3WpbAxB+z0LzGfqY9b8qEdq5Cwmw/AkA
	 zxyuvlqGqn98wsU0wJU9y8JOfz57c7t/BZXwGgIV0S8Jcss1rKxlcsgh5hfQ312XS3
	 6WxrBs0Bxgw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B049FE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475695369.8471.7901798143361506576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d16403500ee931cfd603d63c55003a97002ccba8a2b6aae6213b0d3ae81fdf
Date: Sat, 21 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734756953
