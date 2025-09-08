Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AA11F7569
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757357994; cv=none; b=Jo6D4TvYAoQwiFy/J8Z7j2PAAT9zidg7LK8hKZqI5gsDc6CV2Z2lFsZ+ee84dBTCeCiC2MjDdIaqKZvlYnU+tvveZsnARsizIfSc1ZuWDRBsFnbsDJjCVF1KGLzW61STanl1ess25NLh/u5HX/XynJUSpowzlHEn88lvw4uMqqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757357994; c=relaxed/simple;
	bh=fWO+Tw/JVOCnSRXhnIqn+4IA5cv3XSMH5pkRXJaOtFs=;
	h=To:Subject:From:Message-Id:Date; b=eJEb3oH/XyklGVjmwJT+Zm6m9l312joEV7PDmwqlJWioRG+iqeQtpMJUXgnIcNd7JRSWJa+XFlu0CZ1mp2Tb5G3qMJo3nHEkWh2PrCKKt+q4z0Z+LW7ddFUYb9bjJVPJWGz22pRMIuyJYZvI9YkJ+lnkCetPiRwtYh9cmPSROII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ale9vJHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ale9vJHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757357993;
	bh=fWO+Tw/JVOCnSRXhnIqn+4IA5cv3XSMH5pkRXJaOtFs=;
	h=To:Subject:From:Date:From;
	b=ale9vJHicms6KtCeA+VjgolwM8IjKdE8sz5A8DwK83mmFEZq/GvNy5kaimKPCVzEq
	 ENiryfuh6CbUKsavgwkEwEh7RcP4ps71tiOQmiqDu0O3K8uAra2cC9+dl4VeLTAPli
	 Dsja9oTxf7rqMrg0o9xZY/Q371slrXPCcbeBc7QHrLPKFl4qYuvXhA8a/JLoF1lrBJ
	 JLUxienetO6uE59P4BQKe7ERpfgohoQMuEK0qhvr+LlWdHnA9J1glUgQB2Q71V15ev
	 3c6gqD3TrmYEJcpnad1sZy9croFyiHQIeZXtzHMKtGdetj0Fd4FkiH9jhr/NytkOUH
	 GwRu3y0ZIybjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B32CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735799358.21997.7807676657362148433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f5cc4894557a92e3a799315377c81194269db75dc3c8d959226a1243ac9c77
Date: Mon, 08 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757357993
