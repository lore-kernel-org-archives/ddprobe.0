Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E60735976
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735271754; cv=none; b=jkgp75WsPdfnhR94U2LSZCdeNJQrHgZgISuUC+qcCThcdck6tU/6V1QFfR4/UWm4LqGes6knhdQaEEW/t4OgF0dwb+kIqdUWjt5vTMSpti+5mk3vZI64YC2/oLYXqAWaUbBEL5qJagd0rvFMZ8eAH/F+fEQeMcI/AlhrVUZyEV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735271754; c=relaxed/simple;
	bh=hJWvdCWXpLPwQplWINP5kpGYFVznzfn892CMIvT4E/Y=;
	h=To:Subject:From:Message-Id:Date; b=FFOBrBC08zB+3JUIgvVT2/Mk8yVIUFsva1fY4lebLBbbi8ULC5O26vzYPGk6vrpFBhzQAO7+Uib3G5jdBRVp2zzVjeJUPgGV1RieWMkL+bFIMACGS5rnYzVSZkyW08C0kR0oEgNHOM4wM1NITPsAX5Hc4eGPY9O87n9U7H9ot0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIuUI+Uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIuUI+Uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36CEC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735271753;
	bh=hJWvdCWXpLPwQplWINP5kpGYFVznzfn892CMIvT4E/Y=;
	h=To:Subject:From:Date:From;
	b=sIuUI+UjYiKz18wfKpTPc74nWWhPfF+Z9Qw9xqFWruZXuxh9LceZGUNiTdZ10uOzT
	 3f3GaiJhLoVPINLA1CnGklX0eqfCjT4rIcGuNO/quPUvGTtN6S4vU+MQ71sPggzxVj
	 UmEGhHh+UHAhyDxnk1U7gr4G0MMqgTHIOAV6eILtI9K+Zb5kqwzY7Oq0Os5L5607qC
	 QjgRQqzM9WiB4qBHgs06JvRvoCGcW4HY0IOiYqIRvi2NER4gqTgaowpkYfEHJ0w23S
	 smM/fBei6tJ4JJlDZ9MjkLTHsvqiXb0Y8YJdhaEnfaYmdPdFPNezKo8cPvqXI2svog
	 jQkMv+oZgQ5QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DACE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527175359.25361.4158077398097592856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735777b21e3bac8d464dbcb89332bf762fdddf85a9c11f70d8ecb0d8349092ac
Date: Fri, 27 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735271753
