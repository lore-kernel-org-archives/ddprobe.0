Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9538399B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780469674; cv=none; b=gnITTBdfcXG4zkD+zmdW4MVf3X73cX0aHLCPgI2dMh9NaB11A1kJE53BlIwY5/hNe7of3CFHwIjSJ+b2hUDgmhNSoWaMxNG84B40JiQYDhw1/F2DkuHV+Tb4aMzLz/UTnOpIoKVAe2b0ONgSg1lm5LMGraaW9prsJA7R5h0mDeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780469674; c=relaxed/simple;
	bh=LxoqQHb1rNpzRjU+jf9kT9ZZ79x6tHoDbNdVlzFtWN0=;
	h=To:Subject:From:Message-Id:Date; b=M4CZVxhvy8jgxkxvz/VMBr0p61ldjbp8epGhb0+9Sc1sIiWHVdDnsjEEmUkSAkf3krqWwW02pOUBz+cA1bHksBWH1YYT6i/LTM3ef3+lPNb0zqpRMIEYtmI+MYKHLuB0tzVvQ96wAP3QAvFbODHQVQcVqrqxMzIC1WtBvrTuD5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8i5iL3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8i5iL3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BD4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780469673;
	bh=LxoqQHb1rNpzRjU+jf9kT9ZZ79x6tHoDbNdVlzFtWN0=;
	h=To:Subject:From:Date:From;
	b=H8i5iL3I7muFjTvML65muVmgTm1kjYOQuKxexdEfNWg6ZtHRZmkPZ0HvbQEaRBsv2
	 yU+P3exRGg4EiHGvWGdsZaInc6/9dTW2aooz4PUSzYGtpsppHGV1/XIh66IxUXok/f
	 wF9rMflZGFE0lKWMEmn2uVCOOS4kWUq98sBO1R7dTBqu75URmPXetErX4hlZxupc9t
	 EGS7CVd3wEcrXtV8YMiTzYvjBVAKlgjnW42j4xrpeZSB5l0Tn4cby9dDjZSO5yoj+R
	 5oZ5hBTzVND6C7C+vcVVP4m9dzNHtMn3xYMppR+NdQNPj9mFZ8O8emAWbSEjc4rt7U
	 CMuIogjVWen+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D3ACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046967368.10158.8618898307789914746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74e664455e631798989e7c38a9c2d18282205a27ca7ad9f801251f8b2e1f356
Date: Wed, 03 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780469673
