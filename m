Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97820E318
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635154; cv=none; b=Qj0zg3dfrR4LDNP628fVnzpSAGrXZdD+1Ih/lzRkZgMtyvlZcCZTaJFngxt0FYd/blUGO59q64ySWNj9nNqPc7Z9vF1xLMb+8UYEBoJksL4ARwRztZtWVWtWNdEmUdAdfGJtpjrhJTgrDXkHdi5FJdDtkxvM9BnSID/8RCLpMRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635154; c=relaxed/simple;
	bh=oK6/rO8xyaI3+802AL4pUvtIssbmuukKPEPeoDU2mck=;
	h=To:Subject:From:Message-Id:Date; b=SWWfcV+5Q+uiEDCfX3accvXyRJAR/QY79tsVWta2vOVkmh8BqZ0wIzJrrRo+KOQctRZXlc6L0TgbBeLlHKrm5TaEdGbZhpOZ2ONOHeHXkxmuQjRZ4V9iFx/63A08MkhnSm3EM2n75TpOj8OpImzzCl4AfIQVR/f8xrm5qt4ep/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd302UIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd302UIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B22C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737635153;
	bh=oK6/rO8xyaI3+802AL4pUvtIssbmuukKPEPeoDU2mck=;
	h=To:Subject:From:Date:From;
	b=Pd302UIx+hThQAh8vGsaJsi0wXUj3nAWmkXoirrIbbl+wPSmIwsKcYg704sXIzclK
	 E5NUFNh1uZIBRFBp+TXTF6GlLHzBPCg+UWOCy3EWH6tr59YlrGxOZegWdjN9i75+vE
	 MyENFB6IcDLe0Q/5mBx2zFmnzjeI8E6x3BR6YDyLjOZ1gRlh8uz5HQkxcWys+lEqcF
	 zaFYdh3hTZYeESjIWBKxB6k/HJ4Vcc8vdn3LuCpd0Yc2R141oSxP1DUZwpm+MWjyvf
	 hts7K6KZSeO9TavicQrN1qKBiukmiR+JygzHGU2w0a/DYSziolRJDBfzTBAoue7skg
	 3LIq7fOqVFCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281CC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763515359.13010.10708669761243740690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505e8b944593ab9e61581e55baf17760c6b98e976c8af330890ab404eb7be4d6
Date: Thu, 23 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737635153
