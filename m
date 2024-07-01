Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AE180BF8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719822863; cv=none; b=YVJYd1bA5lv1NJ4r7BJ4MgVAjvPXtAVnADjpM3yCMpaOQxjB+K3xMaU5zTEnme0KFDDUCNhGCZeiqIpUaEMeGTyVhcQulD+AYZUquplPsogMVYtqWNBEnxyTpSZZYLBiY34SYqwq+LgVsTaFhEe/3vSzPpb+X7qqOlqkwJH6Aes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719822863; c=relaxed/simple;
	bh=jFlTR1G5ZiGGqMo57CZWdtbx6ht9gKjtfYSnQ272jLE=;
	h=To:Subject:From:Message-Id:Date; b=eb5HqOw49JiRq2rQ3l2nffXW9z+PaszxX8hZL43YKH8OvgwoI0oj6ozrxUr7vZvEsRzsDIw+lOlsVH0ySwJ/Qy7cfszdHmQv2uIBAolRVQxi/G0aiUQIKpiWZX6VFT54PF3EQlCz80gqpBmUwwMaDfbWObPW34xKvWnywYKGVss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVIUFMNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVIUFMNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12F5DC32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719822863;
	bh=jFlTR1G5ZiGGqMo57CZWdtbx6ht9gKjtfYSnQ272jLE=;
	h=To:Subject:From:Date:From;
	b=XVIUFMNbQTL7HfNGIGTHnhuZa4bE45wBp3Qd7FXS19zwDi9Ty/8jZhLgmLIsoQcOQ
	 n7KMwe5ZRzJYecZgMWEngKTpQCg5ckXpUce4jwpIWZsiwQwr2URddZICTal85fp4fb
	 K4iLGPR84u0Dtw4A9tqc7MJmmQZAkAAFkELZUPgSCnWsCawcml9Kk84qTYQofz5zmd
	 IKDTzlVAIQJYc6QRs4Bx/C/s+hU/p3shghekhwvcPA/qPoU+9O1U1Wfeim/057aOxP
	 P4jFBN8CeL7CAlxqc58nldccwAzZDsqh0EvtCLzrQZLyKTSeqsJUdOAxiyG6yj/pGw
	 IVCNSJzC9yolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D874FC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982286286.24592.10553599058667376517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67a8bd765f2fef0497b40c84567b7052d6ff586d0e9364b96d2690fdaf33466
Date: Mon, 01 Jul 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719822862
