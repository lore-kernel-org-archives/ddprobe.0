Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4919DF40
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743073794; cv=none; b=MF+FPTb87eEHpxdqsmbWTFngT4HRzxya7u9MOW+2j/80EYCtOHfHnOFu8NNUAQzgDgI9RbhFRX7tR7tl5Emcw/jW/3Zj6sT85M/YUSa1D7o6Xl1OAzzlq/MumHI6bpFZtdD92MQZzlMs0/O2MXDPAyDvufPej7k0TjoyXL71m3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743073794; c=relaxed/simple;
	bh=TEOOwBcwH/ElF/vCO28JoXpjMNuLZdg/tNXFFzzIRqs=;
	h=To:Subject:From:Message-Id:Date; b=YY/w7WvDRR8PXwIc1fr5ZAXPGPl1Pksxbek6oysCytdVrRyl/ljzo1Qz5BHJJpB19zrmhag+j/VjeQxnKXG88NaNp2zOs/NgcN+jZoEbql4PEKe291eevXwMlqtHTRdZngtEqJrN+waIHvoiB5N86A3/hZyl7W9wyoyRJRpZmlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+JvXe5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+JvXe5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F37FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743073793;
	bh=TEOOwBcwH/ElF/vCO28JoXpjMNuLZdg/tNXFFzzIRqs=;
	h=To:Subject:From:Date:From;
	b=q+JvXe5EILqbdkJiv4Mssf/Zl9m3NSYy0FfyqkgvZtMj27qzbs7S2JqbUNTpEfjM9
	 ab5IGEFeO0k7b4KPyjPOcPAkJmQ8+6k1PR5TOoYS+B/TGcrFKs+mrjyS0iC5AeMqp3
	 zZZ0YvYqIzN/mZMa6Yf4eXeV8lji0XF5dZkNiRuT/4zTTXaUlXseQvvs/QEAdFvKfv
	 CeMTnGc9cLi28Nyk1MnSna7fZgTEXfYkwG82+5kkH2IREY3Dn7JsN2ORV3uGC9BcnO
	 AsCwMXU1+fUHT8EGHrHN3FlyMSllqslIJj3DXWIH3hyQ2VWVTWdW/5ZnXJ01u7QvHn
	 hUhwM3uCI8RRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B9C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307379358.17337.9383718925242707864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e16ca9d5bc4dcce31270622c06a9bc6c93588e24129b5bae992ff30959487d
Date: Thu, 27 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743073793
