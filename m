Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715F25783C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762984794; cv=none; b=SVmEyFrcio3KE73lq1J48MWmkxif/SDDxKV02oGVIYop5oybt+FujNBHZ/x+zNkgtz6APm8JweIw56lU0F4Wh5cY0UTsCk9ujanK3MOYVqdP2nC94vh8/vIf2/6TkgK1Kr/6iHzXNpKpsVO/iIv1JsIkQ1JILlzPnsdgyh2+yT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762984794; c=relaxed/simple;
	bh=9sOsqIHbhxCp9VKBpcZ9wGPssj2xuaiXIIvwrOwdcWI=;
	h=To:Subject:From:Message-Id:Date; b=RBjF9BAHEwSlzXdu2HhFaXDuRF0TOqQOQAGvUwsY0X66I6H0IyYjuy8ojKtrticyQhmKOhxfyEzF5He4ycN+MlcdCfz3mhmzcyfRXOWd2Bg1ysF0lL/4bos/BxdgH4RzsJZxX9VZfhvJ/SQSFgnkIJs0uaveKCDEMYA5DdmfUCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEYhPeVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEYhPeVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA1C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762984793;
	bh=9sOsqIHbhxCp9VKBpcZ9wGPssj2xuaiXIIvwrOwdcWI=;
	h=To:Subject:From:Date:From;
	b=aEYhPeVH6cLpHCD5AEDq+A1fxSuhgEHaCMmnBoUbX00Zs9FvvE4V5pl3ZHi8Je8VZ
	 DnDaPXnx4gqPeb0WPEG4M4IAdbLy3ELPh4F8/x24YcGkSEBgTtq0BAcECAGWDiBQx7
	 2Coo6LFacz/v8sKrZOdMUnVUJDtuG8CExMt6p0PBRZ+VGXdKyfNmxTm/U8mG+x7Kx9
	 eBqXcglZanN+N8kcKGbCHVwuxYxqS7Qr+AYqFS+3v5diGqp/McppzInL3FOloHtbG9
	 jFgbMX1JqwAaZ0F2SB+ahUjdU0lbj/ut6sFJYHZg3eX5G2YL7n8zZy1J6Um5+WoFyY
	 GnHFQ8BWK2DFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBCD484C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298479358.30808.14885687497820000707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc4f6b709603eb85a0a7717bcf6381827dc2169b095d80c5043f0588d6a406e
Date: Wed, 12 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762984793
