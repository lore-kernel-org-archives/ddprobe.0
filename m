Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9241B947
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716996863; cv=none; b=M+ux5IsBYc8vRlTTIYgpRTslHCb9TUTPjqm90rLuEd1A34ZIbv0u6twb6sDyrdXw0jGe6s+7kitAvhUtq5KnFFIySc5dWhhXMy47gRXPSZ2N/RQaC3TK+Qzs9jScQb+5Fu7uGivipsa5xCXp9k0PtyEOfLd/jSgysCv9K5b6aWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716996863; c=relaxed/simple;
	bh=7Mt6ZaUbJ3niqaIedzR3uBVLmncxgZsoZA/2xJO3+YE=;
	h=To:Subject:From:Message-Id:Date; b=TrihcR7qbTESBW1k6K124ptW4F2PlT+QY9Tp2yQZSbwVcumRTtEyppbCrDt04htaEZeYuqElACmC4g/3F9hplX4RDCEC/EILJu2nhkJtym6tKEHa4GHvkdINg+mhpVLVdvZTppR1Uf5AzyOjv2r4AS50u2LHZS+8MQnI3+AL0ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIidBUTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIidBUTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A28C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716996862;
	bh=7Mt6ZaUbJ3niqaIedzR3uBVLmncxgZsoZA/2xJO3+YE=;
	h=To:Subject:From:Date:From;
	b=HIidBUTj0JY2arclM8dHSpyF1d/Lkoy33SRTgvJbiEggt7WUsYrzQZuGkZRhXtaMb
	 QTB7uri7LXH4VntRxo2UySWPiecVBXxI+/cHmQEdfdRDbqSlt5Gf2SVvBxmfpDTIxp
	 tMgs7ODn3GdXad4YkgxeXmsSwEIIq2klJVvSFiFd0v+h794ZCEixVwato9GhfN/NWM
	 BwtGjgb/5SYFahcImBUTIWm/d/OHqHc66ZG+MEj35+UfhLOHlQjCOtl1TycDOtsSAY
	 bc2bp6YSilbr+YFkXp5YaYUjPBsjdCUNPMFXrMB+UdRp+Uv4ZVc2m2JaM2GoeHbI7y
	 mLQOqrjSjtboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C297BC25B7E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699686278.5290.12999140165034053049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d762b2c0dc6f93df8cb1fbd2ed6036c756fd90a366e0503ba3f3c63472aa2f7
Date: Wed, 29 May 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716996862
