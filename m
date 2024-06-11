Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ED4219E7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119703; cv=none; b=IUNEW2ASOZZaOZniY3vEuO0703WTCNY8TljwXu2c/LRGd3WnY/MmM/iuCAjh47x46Efb5GO/kIxuffk9V2E62qtMwVdS3Jq1m2dU9wW8MaLNmnwukCm/TP6fwtaP5p1i2adeioRTRlvdDL9GvSonGTP1o0Kcj8ocPWTO9FoTMU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119703; c=relaxed/simple;
	bh=YAYROXOqPJUIvaJI+O03C3HB14tUcSTmgJnnx449/NE=;
	h=To:Subject:From:Message-Id:Date; b=TEdHxBqKypyo9GAyeTPaXmiR3p74mqDj8/ByaCGCIZWKOB9SByAvo+TON5lOJ150oQtkW7STb/uD2wyJ94/jR1ytVN2mIWDTyPKUO0MnThTTFV/eL5DAIs1FeJ20tLlI4in5WGrTXHHx77ECQzCFOBKmQaySTxQ40vtwkzp2cPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMPqsqW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMPqsqW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC54C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718119702;
	bh=YAYROXOqPJUIvaJI+O03C3HB14tUcSTmgJnnx449/NE=;
	h=To:Subject:From:Date:From;
	b=WMPqsqW9TZwTx36h0bZwIGwNG1d/qxTHrGHXFT3W8nlbZHMa6qYu0eUcs33PMMIty
	 QPABe9jrykvU6GgbWQmhACRC6OYqhjT44JwT8Se2sD/3euveaatXfsAhB2Q/KBAwxD
	 gRKGWyzX0uHQNO8fjGrUsaMuurPIml8pGTGkBIn2QUbE8tg1YP1by+Dtl27Pp0CroS
	 CPu6I4mik6Q979WfHQRgbShaWrmBVldxbLxdrZUP+NQsQQaNhjPI26AsKl2YrsxIiv
	 Jb2zSx9AHoy4qB36b7av5nZsHY0lrqwYFQXtD83VO3EIXganL8ni25HXaScd72vL6a
	 0D+jhOyEOZgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4620C27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811970276.8497.4028391298477675287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc6a2eea9ccd52c973eff3f558f0bd322499e49a24c78e8f2a96ac4648d4988
Date: Tue, 11 Jun 2024 15:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718119702
