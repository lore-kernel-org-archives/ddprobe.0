Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C6943E9D2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782835714; cv=none; b=NjCH74mWCo+iXMFZh5WqA1+hVFKC0LP4P6sHMsawHFHHSU7zV4Z6hVh7fn1vx4iVtChE3wBqzptBKqZFNj5EygUBKtkj+Xop0olercNkh5JI+8YqbhUjRbFvux0SrJ5HojfC3Ansb16GvQ4g4fqd4wCayr4W/1yp9bpXeayBqCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782835714; c=relaxed/simple;
	bh=Bhc8zIrBHdaGwPrR+v4jrCjcQwc+ZcFxF7RfCV7z8dw=;
	h=To:Subject:From:Message-Id:Date; b=OwSBUKrur58JKKrawbhJw2dvkq+ElJAeHT8nyH42ddMw7T3s3AQW5MAEN0LiG/Q6RTg3Tt1QcmgolCWCNTPnIKMTg4pf5vwHhqjFeFK98dp3MkEOQLP24iOmlJTchraznG/6j28LEorv36AAIOVTnaaWKNKRfyJhwrxjJf04TkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYRU7SMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYRU7SMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13C6C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782835713;
	bh=Bhc8zIrBHdaGwPrR+v4jrCjcQwc+ZcFxF7RfCV7z8dw=;
	h=To:Subject:From:Date:From;
	b=UYRU7SMHMa8WiqmAyAmU2muVZPIB7EtB9uOB+lDuLkGRbmwv9J/NRyg/NCTAvJYd9
	 1W0vZCNGMRS55k+xjTzVpTWOO7+LtxJ37vHX0VEWocF+APXodlcMtRyTKhbxybk2Io
	 EM1v5QSiqq9DqCLBJ5thi9vYoE0Mbto+SlqUU3h6nOTQsgjgdZpQl0x0TdbreqN0J6
	 mzFFCAddO9RuUJwsanrTKMfmNKny3dinSD1doItdok83WeN2v5yetvRFroQb9j8zyb
	 g2OtiKc74h/I8v0ETavvJWZzpJS1TgqMAsENDa2PodbvxPPQ1DEl9GON41GLrqA6DN
	 lqjJ0zDz8iEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E99C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283571368.25307.16594082522069269094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808713708b627656a397e1d26f40f14c399994e22e34e28bc2821c25d981d972
Date: Tue, 30 Jun 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782835713
