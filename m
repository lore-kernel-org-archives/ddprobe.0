Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7E728B51E
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968994; cv=none; b=fyb206/0kt27acxKIt4OESdZ2ea1f1DPNyTVlscDKQR3k7cUYeKzkXtgBtEiNePBsngztm1IBvZcyv8cMxIw+nlAE2vVMXInCOEmRhzxSCcWs9RBI7VXlxxn7G49MqIMLIaAr62otcukNwMj58ZOPhArrALXKscB9g7Un5iMy0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968994; c=relaxed/simple;
	bh=bORLtxUa9OhAMQiSHf9Qk01MQSheIHYl5Uw0ldVQGHw=;
	h=To:Subject:From:Message-Id:Date; b=DTI9Wnq6ZewHFrhGQWmg1wSOl422+Ckhw8AiJxOQ2bnQXBCxg0k8yxRJpssKIO5tYgzPnEpQl7BkSNmbVzS+G20NKgr455DhsGTQGiQ4eu6J+D28S8eNvJoL5pJTi7kuaAek1+I3+g6qLxORo4Xo6zrIZfg3qPXm5sbfjTlUKGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWnIIdwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWnIIdwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7238C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758968993;
	bh=bORLtxUa9OhAMQiSHf9Qk01MQSheIHYl5Uw0ldVQGHw=;
	h=To:Subject:From:Date:From;
	b=qWnIIdwyVLO6lGCqkVz2z30eq24KPqz5Snpk8Te+RzjQgePXcWYa8L/XphzRXnJqG
	 93Lcv5gZuSR4c8ik3Y8vfG17rPqqe48FFvNfz3D/KiVMEaYv2otihWWwH94twzUPVK
	 uyn7jGV0ugpml2DQXndI3Xl3hv7vzTIwj/HV6H2TfN3im7NXdsVhKTQnAQlTojOxQQ
	 1Kiezpp47kYGYi7iGGpFelawQ+2bxJqRiy5JCVjYD98CWZc4ez0rwRR7VUhSqCL+rh
	 YgPv124JFSHj83l5Zab3atCP7FEDaI9Jr2v9h/PvzrQGMEg56YNc3UoWHJSN5MUgtG
	 L8UIi4k1dJ1WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39F8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896899361.21379.7619062272488436887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb51d9eb20867d9f7a133c1476bc06830657562df3674260f69dd4dc2d4d8ac3
Date: Sat, 27 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758968993
