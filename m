Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314018821
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756443594; cv=none; b=FUnRdy67CCxzZZuC7o1GaQgkUsdktBe30RKVjMWFYVegmxiy7Q+FUWOQHj/eg6flIVRpglp28E/peJkDQM0XxQoQohd5jJvR6WHF040FSh0PfkvT++7rHlTLRYiNIyEINbLhX/+X8JItG7z58YX8JCKFY8YNcjiRB+FpOYmPnYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756443594; c=relaxed/simple;
	bh=7ZiacPmyW+2dxLU5F/4ULRPEYMp1C/rQcq2OmfUx9JI=;
	h=To:Subject:From:Message-Id:Date; b=ZvVmC1PW59qShMthsmn9DmFQm4vqx7iwzRNrrgDSl9kkGZY4dKsl7+fvaZCGyi7iqXazr0PXqduBRCElvqmHHCH98+0hjMZUdWbRRZ1CJbVsppHHekmhzN/ufAUtmgdFxyNSdyTrnjkwL740cS4dN/dTlFqu9+t+O2GGxffN7IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEZ7AzUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEZ7AzUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1088C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756443593;
	bh=7ZiacPmyW+2dxLU5F/4ULRPEYMp1C/rQcq2OmfUx9JI=;
	h=To:Subject:From:Date:From;
	b=SEZ7AzUEb9xA9bYOzAVHeTxa2Ba0BrFGfYxJCjFazT7y8eWHOua4zKwK6OMGWq+hB
	 JznmwxFyzOmLH9HDqpegZP9cabyzbBFbYKPXUP9ExeodVVoRQK27VyjcnWVHFA+PDw
	 zaYMzoGm3Hn5jIqqHmzwaiSsaQqPFKl/41AxLVELErY2dU+OdJmBdKBvhj80dmM94v
	 BtmLisJJ4g80IZvjKplenqxoCX4cQZp6qMGZwLfIvmzuneaTMIUdfcVDOQq01fPzVi
	 Pp7riYDcZk17Cb9DdAUrR53xvmOT78GnAbdCSxTNj1cF6zUXa2QvDSq91yccbHdy2J
	 VW6BUr4RpI48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E399C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644359357.27233.7768305675729755597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16db411b5e65ab42313aecee108e5c4e94afdb91dde65e62615924c17b1fe711
Date: Fri, 29 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756443593
