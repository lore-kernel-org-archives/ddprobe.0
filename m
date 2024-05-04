Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E7E4689
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714801343; cv=none; b=WDLZw7mt16dYOPyIy1Fx2RvRASadmt08S167A5UutsFWXjLA3B+uqKKKteBoLsvRwDpQWY+nQI+dLO4ldX27I0ER4jXdcQouHgjwSFWkLU4bdW5KI2z0QgpUVhHARXwC9FjDIbuADIWjmnbZ61R59vMIoZWqGO0C2RRfiddWT2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714801343; c=relaxed/simple;
	bh=2Nm8XOCdEbGVerSt6zX1vvCr0bB9E56lf3On5ea9Sew=;
	h=To:Subject:From:Message-Id:Date; b=VambKkU1H8I8UD0N2EWCllCA2Gp4QbcJK4rcDX+nGWxFAxNTJwoZUbmovp8lXvUvWqbQv+4PV3mn0In8mdD5MZUhSurmXwVz/WxNVpxK07B2XUyDtM6CbFuyedGi8BpZaanJkr9YNIwrJoinndZMKp3qRqZu3ZK4lvpCzFIlei4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAJ9O182; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAJ9O182"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F4FC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714801342;
	bh=2Nm8XOCdEbGVerSt6zX1vvCr0bB9E56lf3On5ea9Sew=;
	h=To:Subject:From:Date:From;
	b=HAJ9O1823l7ZWSLLnmT/XQdA21sxw557+V42Dmq5HrlMI2sjcgu6O4MsPcX8qJ+n8
	 p8hHKxiQEDXSctXz5IBp5UUYobl5jl49IPE50Rt/aTtse8xIU1cqrOpB7ctU6Ucq+g
	 daJiPixHA63M8koNlKgJx4jSzwIEXmL/esbzTMTV9PasmbYpOqZZmvp26RX4/PaPtN
	 Gfc+EVbIRo8LrvZF7+vxV7RWKST0qED1g50z6+F9zmchPc2Et3yntSKWxTR8p1zsZq
	 TzJ+kFcZOh+lFY8Xj1/NicCubzwsxzEeEIaHEhRJY9ykEus9owtGhyk8Ox6LLjmZ5U
	 rnY+3nafRFy7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C242AC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480134276.4864.13239582912687998485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168c31f76faa5a75c5854efb2a72ea761ffaa96700db37ed2f21931c7329eef5
Date: Sat, 04 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714801342
