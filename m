Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4412979FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744337994; cv=none; b=peQzJMmByLFWWY4ysJMFleZzA5QW6UfVDrlEVDWO4QkYm4O2cNnhmowcLvD2676B8oeVkdbCy1u0jQUAFIRkrXezKuqYNY0Sm1VokgeEFEq2S0h9j3nSc34kAgg9u6+YY5kMdPrHvb200/QGxodfCFuaF8IG/n+JW+Go8SgSJYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744337994; c=relaxed/simple;
	bh=9731JqjBNq0BZspe8+psgfWWpyiU+DGntEnTetQtqF4=;
	h=To:Subject:From:Message-Id:Date; b=NhYQrpMb8MVmrg27uchQn6+97KXHT6TLqYMfdJSc2Qe8TxTgldXotqrf7QSfc+qQscdGC4nurYxKc9/56/thcn0/M8bsvJHHfIxZSk8lBG9Dx7pllc9wZcvh0/VOmrvFYawf743bSBtzO4U6xXtQiM2BWg1QFY6ngluV1HblPg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5HGhRF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5HGhRF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744337993;
	bh=9731JqjBNq0BZspe8+psgfWWpyiU+DGntEnTetQtqF4=;
	h=To:Subject:From:Date:From;
	b=S5HGhRF2atSUdDR1Iep05NGN+08sJoCeGW4RNaloKNSyH9FcIeYybHiS3CkDiyPF3
	 8Ru+J3kmyFR/WmNzC17JOgJTCtCbOA3OqYCewtqhhqubHHPpelLoakoHFkdwdrGH7I
	 fuALm5ZTe20rq/BdAQqyqHjIb1WwXi+Hw2EXO5A2+fg0drfhnhiJeFcLDr7jvGMOgo
	 exEpLEzYmUq9oB+DQrt5egwRkwvInhy2qIemgGhLY1z/e+wkqve5fufFmk424xklgX
	 fA0Nm2qKWYMD9/0qO7QCUjPYJ4CN88+qNTCjvaVhA6dLMKM6SURMe0gRy1JxifLOhx
	 NfVgY2Q7UBt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572DC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433799360.21709.4102952892150828137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386b208d375a93c79d30b005e2edbb8099976b21183bcae55f7e368033466e5c
Date: Fri, 11 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744337993
