Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B761A7043
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727975154; cv=none; b=cSgHw/r0kzOG+nD9Pf3gZjhUJI+iJWZJFw/irO3TkIykNiATK2C3R85Q3PdxpqoIEPdAdoYTXwa1/VadCeYIMYjTPLEZ9P6MMxQ0BfM3gFdSsv55wq8d71faaGrgJUfcLpCPTJCUc9mhQTzHdFilDxQhiWdOSQ8OLH5jIPleGUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727975154; c=relaxed/simple;
	bh=Gu2ymEU/VgQjLDtny5cG9sRnwVDcSmA1p32x9s0gbSM=;
	h=To:Subject:From:Message-Id:Date; b=VV85+OTPZRW12lddjWq2q0b6GqS6cileJNd46p6cpsnhZ+jlsDAb0Dsa7TdixLFVK+tB48cH9I0jjNizhpwgRhIqu9yPRIE9vBxHtr/5Eb4kTXFrXgcNUn3o2oKqbH7s+iEWkUYlm1NQAmAfk9SevrlPYcZtFdBY00pwNi6qkTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra6LRaF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra6LRaF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A72C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727975153;
	bh=Gu2ymEU/VgQjLDtny5cG9sRnwVDcSmA1p32x9s0gbSM=;
	h=To:Subject:From:Date:From;
	b=Ra6LRaF9AKbN+rGeEfUH+CtR8BuLckwdT1rP0x3hpzgSA2/bCx1ukymI9At+3ke+h
	 gTWpoOYvUYl9V/GRJuVy9yAM8HfGiJWIBJjLRL4L9nyKnQSa9IcmGKfpTmslDIJhAi
	 e99QtePeKW0S0If/XRMtlElmJBm5s8QaCFM1fkRiEYHuHBQfBuMRXOhLxrPly1Otrc
	 6GvK62u8MCHTkmPrieRC+MQM94OY9qGiLMps5vFD64qZ21P7rBY3wsToSOTYBvKmW+
	 r5CMhRkCvvMIjyzg7J/4aEZiLSczUdErXSv5W+ZX/E8tV+buxobLYun/HkzFikyyG9
	 f/zghdb9cqrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F18CF34BC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797515359.26027.11187546628020010344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0f6b331487fda012dbff2b2034c28b16ccf44047c4457cfdb4485ca05ca876
Date: Thu, 03 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727975153
