Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4C63033CF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769049234; cv=none; b=NT6ugEQZujp+a+sjFo70KQDp3DNKe2AsIOQ9CqHPOpX+v7dwqVnM0n5ZcNgrlx6XBGp0MjqMpuCAizWxDKkcvlaMzjo09LeBJOj9mysWl/zhP63XhfxogTr4PWLwbKrzGNf+BlYzGjz6cVT3iKZTQl+EYu3Xkqc5WySB400xiJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769049234; c=relaxed/simple;
	bh=xXeCU2JIacWk+mTTzWpWInePhHAMuYrKDI8Voprr8AE=;
	h=To:Subject:From:Message-Id:Date; b=iJZRj/Mq9NsikdxoGXrJbEtMrB12K6aqoVQpfNpLcXHYYCZ4qfVUIKrmsoGf4AfjGyvyHR9xoC32+69+l2spOEels09giT+Yt5gvzLPiuP/M4WTL7oYZz4z11ine2seNOl9S2R82dsvSN3iIWSfU3Vwi5UJI87V23hIzOaYPj3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B21eTChZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B21eTChZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4763C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769049233;
	bh=xXeCU2JIacWk+mTTzWpWInePhHAMuYrKDI8Voprr8AE=;
	h=To:Subject:From:Date:From;
	b=B21eTChZp+hf9NaukO10jiQp7PMyphMuVoyKeZ1+T4NH28DcWo33ZKdp9q8hbwAVB
	 DyFaYBTk3VCE+NKcI92buaxQdmZl9Nv7MgN0MFI71tUKa8gn/lYZ2/5aRkytBQz8tt
	 A/Qd/xfFGjIMgyj5oEy4LZil0FcfwckH8v6sfS/VMm6kxyqTbVTRe9k0ozdiz2nEZf
	 kFnttoTaVGWeA7uL57NkG2FYt/SCdBuTa9vzwnUc49XSHKMrXId/nEjKScnekHXR8Y
	 uVfZkAfJNg6Uj/GuRGLpe3X/923NFQDmpBU3QuuFgep3QeIXhCYnDsOaqL3/KwkW97
	 fLQgaabiscPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194DC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904923358.8157.6591890314838358634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcaf3a81c18eff7ffe6fee597edb910d702715bd8b99bfac4af4b577a3364a2
Date: Thu, 22 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769049233
