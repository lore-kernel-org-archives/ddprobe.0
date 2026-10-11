Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495E213E02A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791705034; cv=none; b=kFPvdzRKX+nJy5pmyXn+757kS/ElwxEotnhc/1dGgVgujA/SiVnRHHQxyoPJvgsdoPIzIIvNCBlmv1XwXZju7Do9j2rXstRO9VoTMrEk7yLMkDQDjFGsnouTm+spQk0aaSfJLEfrgtHzkS0I5VNF6t0Zggtx/ett+27B4/onq3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791705034; c=relaxed/simple;
	bh=N98oNf/AcvoTG9fbR9UmoNoqgIGFRUscaWVf73A9BkM=;
	h=To:Subject:From:Message-Id:Date; b=Ghe3K3ujazlaeKeIhVpExG1ZhJ8IiOhZ3xoft74yEwGMp9hSGdOyF59uY5yg10hVHhciLhXQDwkB+r7eWG0oDwpv3lFSwzxdk9lAYF4ty+0oV44q9iCxCNROJzNS3Kn31hiShGoBqoJUihYllGLMqax8zMwv23eF1wIYvyzg6T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8fhhcFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8fhhcFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DD3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791705033;
	bh=N98oNf/AcvoTG9fbR9UmoNoqgIGFRUscaWVf73A9BkM=;
	h=To:Subject:From:Date:From;
	b=H8fhhcFI0ko7qkqD/q81mKF5GkuDyCIZ/FVGGFcpGqXLVtFre6xotWx9q7IFrSZPz
	 yUkEfFIyvAeM48vY7IoZBxPIru950+0CXuY5tjE+QPqfb6J4zpgeK0qnlw9xFnhT+i
	 I1va8jAHu+Yi8GLPsCJHKrekRkYwJ+PguZrFL+vxIHx624iJCL4sUHHasy6QdzbcbM
	 A91cEffrrg7YXLm9fNplsR9qpDqdIE2u3Kqq8FFSqA/De9GtbNph+WZhbZB2fyrchB
	 1zrtMyertDFdtdykaSOS4fxC+G6ovAhW51ehpzRH/KvuI5acXo6JePtl2TZGVKJV+2
	 2+PfzvKQG5uIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF94FCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170503368.11365.18300401360044943067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7058ff1f85db06a0eca76912495545e95d150e8da15381a0075492d4a5cba455
Date: Sun, 11 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791705033
