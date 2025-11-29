Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9815278E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764407574; cv=none; b=VM+WqHfsd7MaCopgl/bfb046ZK2+zt1zYczu/AkP6ulFCvxkNOVc9LuHYyIcF3Rz+C3N5BCqhH2rtaek2F/Ks3w8FhN7e5xh9cv5f7I5lU7xCiE/4kwXC7DherF8SN7deGf2emmYDNOjgLKXCxVNG6+YUxChEA2G7IkKiEoXTEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764407574; c=relaxed/simple;
	bh=ps5OC5YY9b+DlcLC2peEs4qfRa9GbYBLByNb0ID88AA=;
	h=To:Subject:From:Message-Id:Date; b=mFq+/VIXS2XeQjvSdheoZEZQw+sl0Jk/VR+OjKTHdRXbXlzi8xKroiVT4i+KkeCwprMwwszOHEnP6LLm78vGupMYHMGJPBj9RcHRgOp5Stg/6wVrRj7omaoht6ppPk5vXMRZ0TZBCCuBjyb6Greaw57RaYoLiEtoZ/HY4AmL44I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIBqC77o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIBqC77o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB863C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764407573;
	bh=ps5OC5YY9b+DlcLC2peEs4qfRa9GbYBLByNb0ID88AA=;
	h=To:Subject:From:Date:From;
	b=tIBqC77o0MxOI/ysVXAzGBKBtUrhSLNOmYs2985OgveBC1u+tKXbcQzbSJrlfSNnP
	 5o1Y0u0xgvxknoTIeDZyk9vPz/hLef5zD8yAOngBR7pNWYYOvanEtlszs1vd1OblTR
	 OjZNJP0JKbAY3KmSMu0338bWvVl6XEZWcm/j3CymbsRcbXO4wBCGdoykZISu8IpNqp
	 Q4/+ze/BggNFfqsTVcocOIifp5ycuUiFPoGY15vrWFPv93SN1UU9Gh+srF1ybCsDoN
	 Tdv1MF8NDiDM6S46aiUr0zK+QDEibCHuAlJShZU2p3d+0xYh7zC+bkYghqZ4Y7UOpY
	 jmrDOJ2iHtHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D8CD116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440757358.25218.11413854755524556503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dc2e8b4bfac1f1106cacf921e856db6111b34eb10b63e93ffdd9b10f53ed04
Date: Sat, 29 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764407573
