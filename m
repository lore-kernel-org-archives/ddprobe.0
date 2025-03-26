Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CE225E473
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743023394; cv=none; b=IiRSdBsPgPdSultINWva4wvmlppwHUTAByiwa4RrYsYd14M06lRIUMi+/Dra4rbhH9bYXTK/iooBthnhUydSasvRUTML62jSPp67i568vZkn6l2KkieYM5wXEtU02Z7va6AENh8PNH932phMN96vggS0iW63RjbJwHIhXHcwsTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743023394; c=relaxed/simple;
	bh=4qwgpeQA/uyVTKm9pLhDB8A9pmaDW4RXkIUUZhqTGSI=;
	h=To:Subject:From:Message-Id:Date; b=gqYcobyzn4ZDvYVdVi579SwxIyGCCuFgjjUm8siN2weLGGzzcXrBn6Lm/N5W9037OQLO3nE8jOs5rEpvgmLtqC+b+fQmXcYGijcN79Cv418OdlPt4Uscyr9k/CY9LOzJbqagQqoY+iliX7YfRv1n5esk4UsfZt/kMHfB8ivcZ0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBQoY7x4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBQoY7x4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743023393;
	bh=4qwgpeQA/uyVTKm9pLhDB8A9pmaDW4RXkIUUZhqTGSI=;
	h=To:Subject:From:Date:From;
	b=qBQoY7x4jrL3frDSQRgTscldtoFzRtsh1F9yutGw0Kh2g3eBOdDq1SdcsFvzJslEF
	 f1VY/ik8WDFJB8n59wtHyZg07AAmjcZyyZRlJByCnkhc14NPqL0Wfyj+3AZfO0oZNq
	 Mj0/qR2TaKixh5H/ufVYjSLMc0fLvTAZfMNqWy3+U1N8AMqNYIXZ3RfSDDIr4FCW6I
	 MmFCKEuQpQyzD3oMZ/XKiEc8xRRQZGHvKlMCGwI0oqq7LRsNgW1PQUWM6QsMMOYwjz
	 Lh24pnmpOKWSnbu7elBgcFuxaAn/edOCn7Qwzxar/aEW0x28C5nrDFnWLJUfXmH2W4
	 NANWP9fjCxTNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C43FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302339362.2771.14037506057299439452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6652c2a1dd43ff2fbceda0f08f594c71b682414e03b05addf515348a6f33329
Date: Wed, 26 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743023393
