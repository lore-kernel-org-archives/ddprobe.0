Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D23286D7D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782042394; cv=none; b=r1FR4Une99lhlRpwc/Sv9xZbP5Hxd2CxEPqCOogwoFL3Wo9AWbazAbTp/mm3vjzl6Epl5HOn28igHk6J5ZWnlKkTtlBWAOJ10LSL5krqyUY6v/5cWJ+hQW2rm9T2Sqb+c4HBVpE7JvRcXmSoFwi6DYB6r4N3eg1/w4XbTyR81qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782042394; c=relaxed/simple;
	bh=62F1w0MCM0BCFF5QPHN6BcgJk5zDQriXZ8hzQvBIFMI=;
	h=To:Subject:From:Message-Id:Date; b=hitMGdu5rhsYGJ9svo/rO11J6si1xKTZD4bVPWIbYbArpUW5nFrxxJ+2BUS6rY6O3TEoxYqh868aWIR70RZuyHwySfvIKgoc7JNBen/JnY4GZw8VLdypM1pq1LWGJbtipmZjOhWAtIQgQYlpbZhx7xncNixCcJdYlCZTCkg9scQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3djos9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3djos9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7880C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782042393;
	bh=62F1w0MCM0BCFF5QPHN6BcgJk5zDQriXZ8hzQvBIFMI=;
	h=To:Subject:From:Date:From;
	b=E3djos9aPzcQ8c1z48jOz81eCq7fpEJc8zEmpg+cUWPgo68ujTgJ2CKhf3hReMtGR
	 EQ32uYyq4Nkh3c8Xb103gOiBx33hXW/9tzNORPAMHGphavMOWzM3lm8x4TEVSspRfX
	 2TGFwRsUQzCqjsBK5Ks1MRb7xKHFwluldsD9CkSZY6ryQ2Dh2L8fAjadiU9zhieIAQ
	 xzWoj5MrPkjCVaIPVj8p8+TXe+T57LJtdD6stNggzZXL9H1jeZYyf7AzHuyyX/dKPX
	 8ciJSoO4hNwMjdnwMiny2umDC4Y4f3+fNhZSlHAp6gQQxOHuRGB3bm7gcV6du6Me0y
	 7ukOEYF6Frchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A8BCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204239369.14563.2255706848305032427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1428a9f752c55afb8557e7d740a5dcd57d006ce312896c6da07dc2f835c2dbc7
Date: Sun, 21 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782042393
