Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3790223BF88
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741043934; cv=none; b=AGmkLQjEEyxayK8UEwyYxEPBm28uIE9q5N6Lk1cAbb9IFe0rd+OI42xOQTtVY0oB3WqqjXO96D5Yq/TrNzYunJ3MF+yhq4aH+vArCI18CcHGO8Kuw5TemMh7b9AktaLdlmhDfBRsgXmz1qLGEmaq53oFyV0WP9pJqJCCcCz2l3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741043934; c=relaxed/simple;
	bh=upsDtiR1ZKAv3bwU/fI6DuN7lidY7bwbNIx2ZLr0F1o=;
	h=To:Subject:From:Message-Id:Date; b=Ae2uwVf823p/9ek0Oz2jlIx3uXjv2SRvAq7kGvzTMewif6uiggNGB9kSXJaPOuk9xuqEPTeGIcW4crT8rnwpOrUNvj/5PYUIAdc6OHvLfA9sLFDkBAjc0CtQh3ESLvUktQexEdgMQulzBA+9Rox2Kz+xl4qHoXJ9J2Wl2zyxWW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFNQNs1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFNQNs1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F2C4CEEA
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741043933;
	bh=upsDtiR1ZKAv3bwU/fI6DuN7lidY7bwbNIx2ZLr0F1o=;
	h=To:Subject:From:Date:From;
	b=WFNQNs1XOy7if1XvAZp2zYu9TgaCflOOKPkusdoEOPW2NKPfCaG4BCefQTc/eCI7q
	 NDVLPNQAx6nMebrkmuclnVpu07RQ6qlOphOYXoQMBeRgFjesslwlxf48OY760GzTpq
	 zJrW/DaCWjyDqXhFEFU4Mu2CSdlGZ6JyQ0Bi8Zx7akaQk4nd78cbwB8Tb4HuhK62ru
	 k4xTlW11Cwq3FiMNd/qEjnVQrXna3i6ZEY7NKK3AA738Bm7XesfDlKBDIpbL9HG/id
	 CJC8p+ASP5QP9VEzOvTSdiZNRWdfqRaTMihMw3hpn9vxIDUYCVpluGXJkQnfLYhX4f
	 0AzlvsOjr3W7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A6C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104393360.6896.7381270758863794743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da31607bdd2dcd6ed691a2c45fb21b6ccda577adc4702541549e5b7d9d14bef0
Date: Mon, 03 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741043933
