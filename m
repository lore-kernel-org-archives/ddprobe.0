Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DF435963
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735278954; cv=none; b=RqNesDWipOhJNUJqcnCzwPaHHLXS+1tn5l6aKFhKPuvlSPolCxDADAhHhuzSFn1gSH3/wdPoOz0nuoyeg7cJsxrZH7pHBAYnsUAwZboZjKgxd+QEU43adyWcgNOHWBELeicyiuIiNxbzYlywGSAhP9qBzhL1xM7xu/JC61tYC8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735278954; c=relaxed/simple;
	bh=kPrurMGtbAqsVxCIAoSM5lw93hQ8WCUrmLger92ePJM=;
	h=To:Subject:From:Message-Id:Date; b=nN8S4VsWi4JPabI6IDRA8HNIkWjb/Q+qhXpZGt9NPL+eSaNwfLd5zJV6iv/4wlV2xNpP1jOLL3/GnlNnYfrCI1D4h3WfFv0xjRu6ded/+SzRP760qadB1rQNdDvHvvAW94H8MMqKdWR+QbYF3wE2F9wQCwHcFg68U2WueYeOZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkJW/zt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkJW/zt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6358C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735278953;
	bh=kPrurMGtbAqsVxCIAoSM5lw93hQ8WCUrmLger92ePJM=;
	h=To:Subject:From:Date:From;
	b=YkJW/zt8DFt8v5A9HXmAAfvLgZvK2sRBBuEQcHBgVhNWcGt8DmoLfJ+pKs86YTRIC
	 gYgnE7UcRq0rBUZ+dNO1rNI2HvXudH/Q1FNrxeCieA/Gq74EWiiCVmSpHAXPcamRFN
	 tmACMr/+AeCTXvY085+xfA4dTqbvO3RUTWT/Shv4XzVB8QZuOpzWZkB9yHqNBWzwne
	 A2YyULW+ywXzC3PNfQ3W4df7nzboFhEvBa1FC6arENxPPhvDQw3wV85K76JMQy0kZN
	 FytcbRUGPZ+ZbEB3XXLbj1XY8k8oeMfWvqpv1J43NXxCFxNCIivX/tiF4KlSX+/5J+
	 zxjY/Tk/PjCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE6E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527895358.21118.12297653040867210619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b55b6b429e9b05eae04d767dd2094db36a2b7e8921de80efa2e0cfb6a6aca9b
Date: Fri, 27 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735278953
