Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D04D323D
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726206354; cv=none; b=MvkvukFGYop/tEYP+Hg/MzzhI7JTreH8v/QdRGfe4i/xY9ty6z15PaTJOoic6VpxXC+Ud4beNf8fg6AyyJ90esg+17Gp93uPC4zPMEx6wOT4MxcFWuda8l5IZvKlK68XHkI06SF4SmS+qtbYh2lNc71RVTHJ5vZx+HYLTkVAu6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726206354; c=relaxed/simple;
	bh=CNF4PHKopEA+mlgtYXsm0Cz6pxyHckJkkj1q/RgmX2k=;
	h=To:Subject:From:Message-Id:Date; b=RE/jS+lF/4jo8Sl8PQLueDoy4V0xhuAd+FgSEb9RrKaDKZwkLLQ6M9JQUIaILIvbwQQj8YN5CDC6AMTR+CDtmFY8DlyzSe3Ltt/uptJaQU5hGkf2ilv75NGO8Nzgahg1kq1LdpVC0I9+YA7taMlFyhgkNdDAxJ62XeZqWHMTt54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ7eAf5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ7eAf5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F3C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726206353;
	bh=CNF4PHKopEA+mlgtYXsm0Cz6pxyHckJkkj1q/RgmX2k=;
	h=To:Subject:From:Date:From;
	b=JZ7eAf5s7wrIxd+p/iQ8878dLHI4RJTSF1z7uMoVPOru2pJE/OHBEK+nqrxneYesu
	 GWOlW/L08HUMJH32QS8b+uT4LV0azg6Gi8Mq50nB7z7aBKK8iq89lgitALJzwj3bbK
	 sWQAPbIVtmjKUAYVVwWjSmOZkQF07pgAn+5txbPwxtGjdCMjvO5PIM6I1NDKdrqLQI
	 liDbluW7lWaWfkoz/simdffaXgUAe8KRBc/j11sZC1dTjS3J1i7LEyPbaxzpBqSLHy
	 P+ovEe+ZirwLMS9HB2+DrGG+NP/qyW9c25t5j9S4dxVXFDLMQ4cPtBgE0431jzAgtL
	 G2slJDz0aP+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94986EEEC18
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620635359.4519.18229837451338823529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245989d9ad5cec0c63ca62a39d21a57c6efe274fbb9b78696897e79a4c07fc33
Date: Fri, 13 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726206353
