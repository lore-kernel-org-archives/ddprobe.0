Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A871B4223
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756191594; cv=none; b=EUozfDc64ONSVomH4gsMvqo56Yp5xF2clZ6O7qn+7gkTLY4tGxxSmXKvt4ZbSt/LBpCiyXaFX7ipxP/3BWquwo5nlkm5m0qnK4AWselKvY63i+P64+rD7JPM5xJkuvOgLE9oYA5WxtbHIqzu8ccVihwGfNQlqP/7ah9bxBkO4xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756191594; c=relaxed/simple;
	bh=Sw3PJ8aXV7o0ONRVLRTZYGZfW5jnIqq917IINaaD07o=;
	h=To:Subject:From:Message-Id:Date; b=RNN9w5OKT4Qq6Pa+i82s3YZkwYtQIPFUzq7WjbmBBK+fuuVIMn0h20tAYQNxn+ZCvMqE7us2KcJNXEbEolXPEQoyUkn3/0wF475+FyYpYRZ363v3CzhzBPN4NrRi1MMpg0FU+2/Tp1+ADi+1V3PpKDg+8IEVaC2ACNlOIsIZKDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhV/dmec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhV/dmec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D291C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756191593;
	bh=Sw3PJ8aXV7o0ONRVLRTZYGZfW5jnIqq917IINaaD07o=;
	h=To:Subject:From:Date:From;
	b=mhV/dmecu5lA/r5PQ6HQXpQx7yPbDHJMD+Nnsyh/EZ6AR9+jpOb+Ue8JurPQyGuT8
	 S2phNWn3kBmGEk4nV0iVE8jpoKWuPJHokOMRD7jPa5MfrT9PG3EwH3Wy2MZImKaMbs
	 XhogmZ1Etlb/oVkDmL00/oTvJfyDiXcApiOClJjwBqzyFhreLOc8KMmXPCBPU5Gush
	 ngfSA85LGvto20DRLNSCuAs7GQLE7z6GJuU0VR95owQ0Y/U2xtSnmvqlq54zNF9MgX
	 VfoV5lfTeuz2OzTsziv2Nrnmhsb+jOttITzNHCEuRbKxcC77nd9g0KjVssB3pfaBNj
	 CR+a6le1put3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E538CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619159357.13215.11810937113881850390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588ad590039d8ff4928b362579e78ebb307d5c3841c9b33b8887d2167280000c
Date: Tue, 26 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756191593
