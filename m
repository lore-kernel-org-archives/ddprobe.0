Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9E2931EE
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788477034; cv=none; b=src9Olk/6jpddKEkEwB+a8R01URK3MkYhxjf48ArONIQVsK4HUWZIMvPU5OkdTPZkP77KPq9qw9aSb60gKSjARdiDxapmu4qrEJu8jw2G1T0Knlu5XrwWvWhE7xrM1ZyPdOJm8+TO0Znrhf8Oms0nk/+k80yokGkIqcB5j+dCEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788477034; c=relaxed/simple;
	bh=70CEhL4EVDnj1sP1hDdW9KCDPU+D+SB2LRhW8EdrgXQ=;
	h=To:Subject:From:Message-Id:Date; b=Sdm2dxQdqRpTUgB/8TbCBaydNhlEK3GdVCsJqiu9QMfe3NmRi+kbx6ED/YAm32bN6HZ/pvgjZPpBzOvRMzFgUpFFNcPr8MEqkQ5AR83fifqcNjieqpcRyeXo4ulCKFBtVfDCIO5YGNXfnNRWWfP8VbE5hEFnEj0QWYrGa7y0JTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK6TcLe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK6TcLe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D404EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788477033;
	bh=70CEhL4EVDnj1sP1hDdW9KCDPU+D+SB2LRhW8EdrgXQ=;
	h=To:Subject:From:Date:From;
	b=KK6TcLe6b2NG9r/icomnczCmiD9A7NEeb2t5T93mZ4f4qnvBxbyuGQU6+OjRTvDHH
	 VkoU8jrQYlaVtT5AZ8zRbqNVAWsOD1vwrWwe+lfsw/OLzhjE/O2uraKyc/2TfMzcuI
	 fpm42lAqbDizCjm2andZKXy8y9bIW4OgbsgmB0zOwvi1dN5doGQ4hvXpgbczVnOBXJ
	 5aNW12gge43kfHe5HOPhMJwsjBKyCTnZQhGtAH8HzFDMjAZMfQDV5D+BUM539qdX+u
	 BC8+xGcinCgyan03AnsngG0y66tfJJtRHW/G8l/gsTxgWoTJ+M4B87DjMHTD1Zli53
	 n/t+Iaz3cnIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6AEC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847703370.29918.16454996820559462475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7a651c19bebc8c785a7ebb8a013b25fdc5e40f1a32e375d668170390e3924f
Date: Thu, 03 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788477033
