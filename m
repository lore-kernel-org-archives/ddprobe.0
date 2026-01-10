Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C084A01
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768058634; cv=none; b=NYij9/oVmSsH7bfpluC/GgKKrsNiyybEiAfZyU1DzhN36LGJj/wPmAtulthoFxHXS8GpcwsviTOpU2ol6yhyCHAq/sIAhzUI9WgxsoWiBVRD+5NJzR3wwyIKbDezmzUz2apC6fY8POaVcQEGy7kLxRab7NlcLQxFmaCCxrFSZnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768058634; c=relaxed/simple;
	bh=4i8lpsSbuDPETCPOHR4YnngMI+wiMmY2G033HNj1SP4=;
	h=To:Subject:From:Message-Id:Date; b=hUBJ/SQS5ggxbhyBUmeizt60UE9nCbmMgI+vVTd0KjruQ6mHhhNwAmSCHF+BmUWP5jI1PGK/Gk4IZaDW1TKG/f5FMpVq16osdzM2QtIqaEajyQDYPHCpcw3CTMtHhm0Bm1HtnSecCoVeYEDkT5BLl9uYUY1n6mMOyxMfSXsxe8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJZrfyyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJZrfyyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AFFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768058633;
	bh=4i8lpsSbuDPETCPOHR4YnngMI+wiMmY2G033HNj1SP4=;
	h=To:Subject:From:Date:From;
	b=pJZrfyyBbXVAoYa2DiRFyzEoRGuLTw9F0UWzB5Pr96053gL8StYyY3hocF+FE73JS
	 qrHfgPULPs7mcwftK/HjERkLnHpZSiRJyQuBZ+M2+K77oA4+cXcdfCoFl+4sXrLXKn
	 SC8BemFfl3EH6rWq0y+iYKwlrfNz5UDFnWO1W2JeeZRgQVTLHerf5X1nA05PneD6lc
	 Q6rjgOH3c2FfRPA/CT/2mC7lZgAZde3RzN8M0kt4/1ZAsRmKEGpSSm5SstbpnEbKk+
	 4zqKA7sEsxBISY16lqwlk3K253ZBjb/AzLt+W4vIyOa6WubVFzjfBA5rN7nzEtZLBy
	 v/YgmaCxUuYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D6CD277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805863358.21502.12583465730776119115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da70f35aa8dbfd8c8600d783a5674a1c2e3462a9bc372d855a214b8e7aedbb3
Date: Sat, 10 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768058633
