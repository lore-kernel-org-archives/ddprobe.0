Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECEE140E3C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737314154; cv=none; b=pK8qaMeljFSrIoIh2fPlDEok2lVH9B17ujRe6l+ynNMjj4dccPvJ6c8sndkRzJjmY5mYGL8OEgzVfcHv4v2EY9dgKYNOOD8OqoFBSLxeVyZw9gBrPui+9zR/lnCjUV5veVem9k605DTfYRkdsJLHTm/B/50QF2LGkoux4aIGjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737314154; c=relaxed/simple;
	bh=2vFMXJAYpucXSCE6k7TeqZ5fs+uZbcd9mqyyyyKA5dg=;
	h=To:Subject:From:Message-Id:Date; b=V3zMoUrrL26xwZn7i4gdNOfsBWjFfc/vCg23PeeeJWccKPoDimKBtv8tGtJxnT5IA8Rv6p2PX9HagdxBScsNnq1uGtgcL/sRpyBQmhcRlRZjvZXZeEIYTNPOFs6Q4x6CbR0WQdX3uPnSGN0+UqkAVRlpD5AMS/Of0BgfGewJYWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul8j8HYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul8j8HYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA93C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737314153;
	bh=2vFMXJAYpucXSCE6k7TeqZ5fs+uZbcd9mqyyyyKA5dg=;
	h=To:Subject:From:Date:From;
	b=Ul8j8HYsfEPUY8ce+Mx1BsQQFFheV4psnfmQWvQbm3TEsSZlpUuFQenfPfUaEH1Df
	 cKLk7rXcrnd6FLd4AypY4hFQtNi5vSt4EtgsaZEaqmB2FQ7zeMSD2oZEQWno28btWN
	 3wKxu8Uay2hEBxH3Hq0sr7H4XmijiOo0PFCDvfUV9hoVn1OE1xmznTBKecR/DzW7S1
	 2qGtGd4EtfRyObqeRVhNYbteJCK7sm6e9spHVjOn/WExgyO+L/fq9bIJ93Vwl8XWwI
	 Ez145VxdEVuMLtU9w3jioMGpnDpaAvmo+uiRQXcln+3E4B4LEsq3ieSMlSl33STE4L
	 ecmV05WDTSAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91923C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731415358.8156.3564247167932302630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd75c4c6a8836c79c7045016a0ec1f278fb4043aac7b62095f0ed535b3dcf154
Date: Sun, 19 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737314153
