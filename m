Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641703B14CD
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789023034; cv=none; b=gCv7IeV2ofZrfQKszofPV17gSQkyGHaIXhs6vhRpnIuiHOwLjfxtNiZIGwZCK4VhH2/BI+ZwSbYp8tERGtm5GJEcXa8akabEU/ltStduH+NqeP7TolNVXyCLa4Oj/bzXZePB3TPuQfrTdhjNcVDCI38aMmv9/fN4e60v6AHTxEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789023034; c=relaxed/simple;
	bh=Tg2UsBpW1pE7tyqPrCUwo7JahRr7yunxuhXaOi1TvEM=;
	h=To:Subject:From:Message-Id:Date; b=kzx2Fvm/R6QyutrjuIjbG6TdmUg7UjsRGjJdxo8SHIE/g1cJt/fTnfysOGBUN//S8u8NkYyO31zGmDOKhDzLPuDNGZLDa3p4IM7BvuPL03YPsvJXNsGtRLg5fWGdrlFGzPfZLQqHsJFkky6Wg6fpJOwQv2C8s5P7iHqIUwIubBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST2HdpqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST2HdpqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDDAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789023033;
	bh=Tg2UsBpW1pE7tyqPrCUwo7JahRr7yunxuhXaOi1TvEM=;
	h=To:Subject:From:Date:From;
	b=ST2HdpqJJPdDbdajQD9+YrHZ0LXj7DI+Vfuohw+y0tYddyo89OYrGc8tfuU0wS7XY
	 B1/Zheg22xVAHx7/oSFZw+s2H/wYAyWJLBBWvW2IQiayiAUUA5CK0dle8kzvWEjNfB
	 7eHbrR3qdN/ZE6OOMN1lXGcdycn7Qs0tdeGajaeDH0alKWMzBpSIAahsAb/mAp5Wy3
	 kD4wOF1Ex/mef+Qmr308yVJ1hMwgpkZkj13RLSYDeIj/aSoDKlG3HL56WV8dCoFqeK
	 lajfFHCIjGs1oQ1r5m7VT5JPuobdgS6eMczFZAorsJLBmKE//V0mh0N/FNNsk31/5N
	 whndHoLDdKuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA42C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902303375.20747.16341518551187804138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb99fff0c2e9a3647717200c623a2de8e86de186f40e6416eacf32dfb125e56c
Date: Thu, 10 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789023033
