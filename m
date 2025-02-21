Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED81E9B01
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740138534; cv=none; b=W1a2Pi6V7C9d5pF7Gx/8nSxFIQjQoYEUhNh4EaE9LflizB6fv/UMVQ66nBLxwQ3AQ1k6EbXtSbeNl1tOaVJ17dU/cg+AoYVgo9X9BjQNOfyiDdm0G3WAq04gISTNw0xWz05OpN1dpDUILE9W0wsPIMdyw0thSSRTsDkWpmB9sFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740138534; c=relaxed/simple;
	bh=sbIw7DBJ5ntgZdqwCc3ZBhw2HOkuQr0OHHke3MrIghk=;
	h=To:Subject:From:Message-Id:Date; b=lABnpruX2Ft5nMUzHJ0dGUyrfVDcQmRYWGIM4qpXmwi4Or8vggE7EGb+QVANMZQb7ax2/EEQLTN7w+qKL0IsWv1+yODtSxbmdjiuzKxqfPutVOr4m8zmS+KO5g+em3nEUGPCdaN7b9Mdmfw24VUS4DSYEfxI6NeOQ2QdlA3YNbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbGjw0BL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbGjw0BL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B96C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740138533;
	bh=sbIw7DBJ5ntgZdqwCc3ZBhw2HOkuQr0OHHke3MrIghk=;
	h=To:Subject:From:Date:From;
	b=lbGjw0BL2n9oiz8krqJE4AfekXt6HmeS/umEzZFfbXU7i0yinpyz8lbsGpVFJlKA8
	 Q7NvJmVX7giwDiRzncJQL01Vv8a41u8LbuHuHDxYkEJfvDYgSRtKKu3UqytbNtj7oD
	 hhs1ZLU2UyIoTd+OLN1UHGD9uakmWd3ZdPAUxNgBOWHHjxbh63KsUAMuwB7+LgYX1l
	 ReVO14CQvrF67Br59dEg6L4J3PUt1gba7cNrWcR7o1f69vxEWXSshKbSuSwwtUNxMc
	 wAaLxvBj/qeNlS+EHbQy1ilEN6nVXQ6EWYosNyiLXRZE9VEDtdDaU2PDdKbYatAkkN
	 +a99dgNhBla+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92693C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013853359.31273.8436464188431780057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f901a95476a0f220ae7ef0fff6baefda30732bb59aae69772649adc3b8036e
Date: Fri, 21 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740138533
