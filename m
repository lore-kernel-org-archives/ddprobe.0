Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508D8494
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729975554; cv=none; b=EP+y88m9rpkEvQ6KKztqZ/o6+TmWaENmAY+DdcUmdJhTlmR+l+xgI4jcTojrQIrgZmgEDN+okp+xpeI6K7GK1y9T/aa8VSx8yqsJ3/rqSZZDI/tdtOn5IWTudVcDR/WGzaJIpJvywZm7epTzQzFvQpGU2jBeHiNXcUz0sffeRUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729975554; c=relaxed/simple;
	bh=GgneK5M/ZOkelvIq8a6bzSfWRh12q0DlztInF214GwU=;
	h=To:Subject:From:Message-Id:Date; b=qp9K8r8meoMFwSvhbQQog/5rEzepyzBnSNx1avpVH3ixqw7ARK7RntR//C3kmtxNUW/4xFyUI/l55OgwhSa1I5lQ4464Du46ox8uY3QbQsiil4bL0GTzrh63TWYA5md5B/dqDoAmCJ/ZxspWiypY0AYczSmZQe2PIltTwjbTSj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guTkbDFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guTkbDFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D69C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729975553;
	bh=GgneK5M/ZOkelvIq8a6bzSfWRh12q0DlztInF214GwU=;
	h=To:Subject:From:Date:From;
	b=guTkbDFE01+kM8Wzprbn1hCLYIrN77eO7R6gFdLYQ9o7tyXFo/lxmejaMDLJckWBj
	 fsmsxea08C5iel0ewesne7FimS8JfVGtM9bjM6CZZyUISXJav2zsLMGxAPSyaMePWD
	 qv/BiSWMHaJhx4ph6wH/YWzFDb8nGL60GoIriF+/vesYvJnJrrofXNscwsutaIA7OE
	 kj6w2XeMbXahBkXv45DOS8B9QPBjaxkNjNUYLM+zA5NQ/H+xjyjs1UH8sXIGjD2og+
	 HQBGjqM7TuBv9XM374oGW3unmO6eYI2dMP6PCZQX66AOYKaLWtlQsl8qP0xOuLrhrx
	 eX5R5tINc6Hjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A1D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997555358.3856.4844291302224041368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49747d6acfad89457b58600e3089871d1be0be318da28ce305df284b64a82a23
Date: Sat, 26 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729975553
