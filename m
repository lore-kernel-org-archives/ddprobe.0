Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435CF2749D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762793394; cv=none; b=ryn7M9hxvA2oX3S95QAI0C9eAmmWA4XVyAAzpc//Jf14YlIgRJLvULne//MTbKZ0H8H6wwy0zHNXOljDUQoA4wTOHo+d4xUzHI2gSmQQ5HM3KKh7dCht4jICvQIQKV/H69baTy5FJ5NLLH7Mhecg8OgvMbiNFX7CfTrlDN/3E+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762793394; c=relaxed/simple;
	bh=Hh/e3Ut5GuMniGMgOrd9ZAX1T/+4iP17yyYfZQJbnn8=;
	h=To:Subject:From:Message-Id:Date; b=N9Zn0vsmq0nFal+aDv2E6C0xSxNx080DVKLgrFW0UyVdo3EDFdkoWCKes5n3BVKgd37EGtVROjRb9nLEiU82HRGwPDrcww4MiTdXdBHLom9Hn799OAbf6qFkyyGEfWaorbjZl2PRwxJWYYBdX9Qvnk6BmojWpJVLkqSkDO/BSJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhANf3Ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhANf3Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A5AC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762793393;
	bh=Hh/e3Ut5GuMniGMgOrd9ZAX1T/+4iP17yyYfZQJbnn8=;
	h=To:Subject:From:Date:From;
	b=dhANf3KuRKVU+w7TFOP2uUpiYa+jxMxZZF5OMn/3wsB7uNt8/bkcemvegpYPYrwju
	 h2uJY1/XWVOW+WTt0hmcrUDMIteyLUx8X969bP3QR4esHpRSUmjbGz48cQsp1imMYF
	 T7G6Gw6kczGQvYlzFYIluHfnsoxiZ9Q8y53SyU+UervZXdocvbTIHJ26GrdkEAjrBo
	 lA1O632Fv2VrRRPNaX9ymx3ybQF4fdg6sAfSMkCR4NOGfdliU/p3c8FbG7wV8bhyMM
	 o8t4x+cZjRqADk3R/Fnv3JYcQm6YVO9EsYauIzUYrvDIQI8ocAeMjis9/Q/rjTRaeo
	 25OZo3GKyAkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4FBCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279339362.10897.11895880268078988444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ac7c109a796123c28e5f8f0cd808f36d96f14d62adad6daa1b847d9c45fd1f
Date: Mon, 10 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762793393
