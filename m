Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAFF3D9DB0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774344294; cv=none; b=ULHGsq9tfYWEX86qwnh0mp+p5dwqPg5MweyVKP+xPCV0Z7FcEQcBQoZb+00Ewjy49slKrx3PbW6oOkOCDwpSeANq2BA7ORM/qE7y1XGrM7XegzRhg2e7CNIT8wiHUFc2T4qEMSwehIcmplLvDxzkVhOf/6N0O4emqQRfAJ0E7qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774344294; c=relaxed/simple;
	bh=vcOlfWNlr8y/rLLolnoXB8AW1YbEBhtVgYsNGor5rhA=;
	h=To:Subject:From:Message-Id:Date; b=SWnOjp0sUgF22E+an5KIaU8kjTcWvIo5eX5nGfkXO3KqZNcQJgZYoYAn0QvwufFihbG6MMoP49xApyiYT3E56j2BLE1wzCixCW3jeYnZrEbyKYeNEk71lfo3pV5ihNvQB0kbaSmrWww6C8vStSuztHbWTSapvi3VvT3CpGBK58A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgcM0RCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgcM0RCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6067C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774344293;
	bh=vcOlfWNlr8y/rLLolnoXB8AW1YbEBhtVgYsNGor5rhA=;
	h=To:Subject:From:Date:From;
	b=dgcM0RChh53De5YsK4eKCr0NeGJRl4EsOyemkBWMPxWzAFni0QEPGUAFepafRc0d/
	 1oIq07uW8E2clAhYAEfURoHt8X79GO4ueyWR/Yr2KSY7iNBns+nb9OU1Uq3GgeYmWX
	 R1uCvF2l3ymhWwkJVCZSA1F1GoUVhdIO2l3Hoth+sYuc6pbVRFEfx59QtzDbUwFuww
	 PnHEBvL2tVX1KMX10daLfukKP6UEiFAvh6Pgvf2DCoU9WhBTDkjXoNLHa8w7onLvO3
	 SXjgKGUkZLHGjhTy85f2A8uQUpxJl3sq5Fb8OZGYs8iICLr69Bsuk6581gdiVkN+mH
	 Ap/hWsPN08BRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A10E9A747
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434429358.29812.17572819855011668915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6974d5bc75045d0135f9100b8190ee14a8c295db0c7b9c065cd76e7248ababb6
Date: Tue, 24 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774344293
