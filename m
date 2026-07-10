Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2973E4499A3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783656514; cv=none; b=pzk4C8dfYHEr46GKD1JqVzuRQob8ce4xZSIS2X2uLF9/5Bj1p8ybjZy/hoaQ/Q6kwY43cdXzamqI2/v5wW1ddvo08yHtAlKf2nFGd/JKtALjWbISpNw+YJF17IlLrPltapKi2OG4IZfkUvGfr3E8VpGX5ZMJdkqthXyS8oBfMwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783656514; c=relaxed/simple;
	bh=8sYqZeEAcnhpDEABc0Gh8QCKjZ9gXowfFMyhvzLG280=;
	h=To:Subject:From:Message-Id:Date; b=RnxblQ8kP0O0dDcIh7JYtYtpD2bx+Exjd6jgkUaBGcIVs8jiUFQTwYpPqpG8THuD4CTP+hPWQsflCaQ+Kp4L7SYPb12RW/z0in6HApb8YODlwNPvQP71QOB/bi4H37iUvCLXj2/3XJqi7IMhtFprDWzkqzQVPZJ7a6ljGPWlQv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOfhATJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOfhATJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CD7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783656513;
	bh=8sYqZeEAcnhpDEABc0Gh8QCKjZ9gXowfFMyhvzLG280=;
	h=To:Subject:From:Date:From;
	b=pOfhATJCjl3KR2XBcRBmWSpLkvv4dTnL1PNeZyKiLIEbksrzDQS7EhWyLd29/BKz7
	 4e4E7P1bH96GVXCk82tEvjtKsobFRcwpAfXM8qC29Cb9wFt4fZtVMIsFqpmFEhRBmA
	 ongY+Iz1KMqTYj0rBVWOmyaHtmbbShCCkwAciycJUIAPFP+hC1taNWQW/yU8xzKFh2
	 FTJ8h5D0vpm02B4Mmch/htobxGSDApwKIYfR5iez2ViDYeIgEel8TzXmwQ+t1836e6
	 d8IsuXcwuM13RVluFikykyraLp/4oRlHfXd3Rn3kfVsXsLWffSR3h2Yu2b45MD2sg7
	 +eAjw++NyTzSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A800BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365651368.9643.17401217905794916244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dda5b2ab063c252a93c54cb11469e4ab0187862b9d2ca7464430163ee98d0f
Date: Fri, 10 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783656513
