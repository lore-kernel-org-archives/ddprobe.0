Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8A713A870
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708710496; cv=none; b=EVn5NLbtmYVVP3t3rLDvF1ret3nXL3wKUhXMTLl3XH+RbC+OPPi8fdUvuw7Z+iaeiv3RyM8YQOfE7+3SaTpUudNWwBPFiEpER+fweh4MO4bt9FSsOE6vvdK/8j4GyYFk7xzvPfifV5zJcEyGl+RlmsqhKFlVIEUNxVRKLCCoSes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708710496; c=relaxed/simple;
	bh=YxJrgdgoNNXhdbJ81CYje8FG+pxLACEmJGhfn3kwf9A=;
	h=To:Subject:From:Message-Id:Date; b=eaJB8eELL4tDn0t5YiUrJdK8EeRgOtOomSgm2dQJX1uALGu7WaRpgW6TVnnuPVKcy7H2KjhvPT8ynHuRviVsH9aBnrU9am3YTlXscLXRof/Oldt1VJ84LW7ZjSzTimhrdvLbe9gkTSlHb0lyioGsBHgaZ6JpAe7edEX8aPcSIrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu/r4XT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu/r4XT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAF4C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708710496;
	bh=YxJrgdgoNNXhdbJ81CYje8FG+pxLACEmJGhfn3kwf9A=;
	h=To:Subject:From:Date:From;
	b=Gu/r4XT0UPqDlEeUUTfr1ebEUgfd36nt4jE4euEC44TF05qIKQsISXDCL3AqVNVdG
	 iE5X8EEvIjeerpwBAZeLFykZCEGeuZBp8gQo75B90tbMegush89G5izPHfjQQkPlh9
	 b4BK1JsRJfqouCxRmGZyHqBcnJihdGL8XJqQGYN0dHcPffktLLeMQQQBzjG1lC8oZ9
	 gdXRqKS1pKkAuEaI0Rkugf0NbYlp5uUnAOQprxUeVNmXH4lzAQBpTIyDv6bNZZM3EF
	 u9aGwadChELxs1zhn60/S1Z3839F2xmTRNZ7LeTd0Ft5nDxHfonGnsEHJ3sd7XEUk3
	 qOlfvxlP6Z9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63762C5478C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170871049639.5069.16195913684806992222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d57ab357d7f758cfb150e84d1589488a92bf6f8fbb74910d6fa46afb29a166
Date: Fri, 23 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708710496
