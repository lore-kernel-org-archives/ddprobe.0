Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1A617741
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732974954; cv=none; b=aB61cY7SQQEao9SeQv1q0y8z31FhK16qpghvZEkC6Lx4zB6bi4dA6xKgKFDgPXAd3EAB6Bv+D+IFKKXtoKZS6EOHFx1Vm2mlmzanh4eswnpveYNUB20JeJcgyDk6dXYgPSZZRxrJ4r3iBx+hx1sEFxyp4SaQYs5xR0Qbb8wW4vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732974954; c=relaxed/simple;
	bh=LnJEDy7bZsETYTrYa163Flvw/jVs0oZ4dIOoeAWsWII=;
	h=To:Subject:From:Message-Id:Date; b=syJyeAjk8gNsW8RrBj2WNvia42nGQ+vdogwOovSXHWRFyYfJlJnmpt6UTG8UAar/3LrEmYpqsw3YQrMRPqY2B911G1ubDU0eF7ilDl7gLX31COaFkY1SmwAV2ssmURSpBiL1oi/z1f/VONrXvR37KZF3ym0RqapDvAccuPNr5QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZctV0nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZctV0nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32A4C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732974953;
	bh=LnJEDy7bZsETYTrYa163Flvw/jVs0oZ4dIOoeAWsWII=;
	h=To:Subject:From:Date:From;
	b=bZctV0nLrvWrI+PEo+9J28YVdSxUnGq4HbGKB6aX1C6yjvjps12idq8liG9yhJH1S
	 XDH1oJA98UQNxgSzRT99/AxmUXgirweMEkH0TgTaKqN92NsYHSwcmxO+E9r8e7SjCw
	 jAWOHnBrMiymjpe9Mdh7Y4wwsxUti0AVsA45O0/8nFFZNlAXIC71X/dMFp5+xukQ3N
	 zNz+VuFnC8qiXlfIozwE6vyTw+2z3FiEJKb4QUlIMoDgBtrEoMi3AGRPhWFRwTP+0c
	 dwLyHRMnTzZO2Clgt4MC7K0TTZsBJq/BOqhbXMMrt7qydOdmw4QPknQUBYAaB35xLL
	 I8VjSmMIZCZ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99009D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297495360.23529.10230426116919823723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a2c4dcdfde30f4a982ee36dccaf1185e5f20693a90669bebe97b9da0ac372a
Date: Sat, 30 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732974953
