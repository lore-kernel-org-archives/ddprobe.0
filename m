Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5C479F2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745734794; cv=none; b=VCazYO98zFVSJ5OPGjc5qbgtktnnCv0u6uoAcVg4OHuL9QsmC3DgyiMVv0q1CTagVeY4l/jP4ZALHnwvLoKfFHgxpemM+bOUxWpX9gSSDqwSkt+jL/ubRvpT8TEYFXytFpmTZ7TuouFX1s0YRVCsxqs79HDZXHtrmLYuFMzNi5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745734794; c=relaxed/simple;
	bh=fGeqgHsn/P+CwdGQAx5lKWoNe8bedX/ta/TNdZlBCeM=;
	h=To:Subject:From:Message-Id:Date; b=IwmWUjNOUYEkRHG9QN6YvW3p/WDspkKvUUzOYU4IaJSoUSPBvUf7Uyibw/CUI+9HK9AyaiBFgYC7DJ4BBeZMbMhnyUMGPLO4PFy2kcCiNmYrQkik+EX9FwZ7x+Gq0fbAR0DU7wnIY18M+HUG87JYpX31yKoDLzYfvw2haMBCqe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTPKAm8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTPKAm8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745734793;
	bh=fGeqgHsn/P+CwdGQAx5lKWoNe8bedX/ta/TNdZlBCeM=;
	h=To:Subject:From:Date:From;
	b=fTPKAm8D6Kas2o/5kF/sHskQvJIcAHhwergVlzEAInCT2gIyhIRTyKKL6O/MPfpAs
	 Fi2sTJazfyQFTK7FFVtRXjFQbmLqp4W2+M6vKQbeyVkghxeyfUX84sihE7vihE0qsx
	 4yN8NY42eI1NhZ6N1M1KzQRV0+Xb0aXl02XU/UpqkQK0DF3wrk0q7yTdxbaDq5Llk8
	 Y98K/Jbc3v6HG7zzagKiSsnqfBmlmXL5QnHRTR28i9pVGhawgfyZWoCo2J4Rjb+2af
	 SL4m6M7CgEmeYZOeGBUnu6wTCxZAYmdR+VhHzys2k4sWCZxkVrzzYQJPq9r+0riyv0
	 UL9BXRcgNXu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B6C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573479358.895.9330135527654529143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60373e5178fa4911c160927a1b209d7b3d71f6e7b21d8795c0be9ccc5598a2bd
Date: Sun, 27 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745734793
