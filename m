Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6D52D0605
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763096994; cv=none; b=aN+awHs+E1IG7HzaTf76YLUXjxyeo6v8TgfdnVWOT2kbrlBQrZBQ2ivLl5AD4w3q6iQ8oOpWpEbkCHCA8r5s7qUXE40MgK3qrsezQyLVG3inB1qp8a2cnqyG7VDx2iSN4GjIEWIibE6XaEt1MNHB2Q37TzA6+j6mz5iOrWp9GNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763096994; c=relaxed/simple;
	bh=J1vRk0JVA9CWsRwATjG8oEXm/rAQWiaHBw5PSJaHryo=;
	h=To:Subject:From:Message-Id:Date; b=iAR3kSfGQfacJk5HEK1//rh3S/gNAflCk+Ijh+HgAXanY93FBzhN0dc4ebsnXI3agnkHQmYhN7v3Qj5/8J7wsfFJiMMCnnjYTeLew9seXLzw5VrLCvu1uTdnoN/TELh1qow8ho5wcB/OXVIpxVYchzSRVtn5BzxzaRV08I2bxu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE2OeFhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE2OeFhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDDC116B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763096993;
	bh=J1vRk0JVA9CWsRwATjG8oEXm/rAQWiaHBw5PSJaHryo=;
	h=To:Subject:From:Date:From;
	b=ZE2OeFhE77tCsNgFbRjQ4VKq07T0WLXebqZh2RgIQFGvxraehXwM0cjoGqscwbEIL
	 Bh5HnXHtuLbkOd72EXVuSjiSfIGj/uVGnb9+k/uTduCQ0kaKE40eJX9y7bi/PUVuz5
	 2qkcLHiWHeapX74qIgSHopZCu3i1MIELE7RKqg/eDp49V9qaKc8Z+GkmRxELhEs0g0
	 IvOIOwbV1K54/hyOcRYP6Fy+KfQvon5c2VaCTth0gqaIUNMR13xmp8/Ao8KIvLYPIy
	 P9eNVC79ld2UD/F599FUobIH1uag2V335971FpXJw7nyfXuUIesd7GGlRZ4tHwSSr2
	 pwA/Ui825Olwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E2CDE004
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309699360.13894.3510739179504868663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a713751db3dcb5d9e5c30aabe9a39966dc574e5c21a73f2e029b23398bf7c89
Date: Fri, 14 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763096993
