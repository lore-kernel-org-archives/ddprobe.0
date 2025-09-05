Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8FF2AF00
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757102994; cv=none; b=MGerpbvHcAyms3xI8qgTShnahDiZ/w84sLnuc/3FAuqG25ClclxvMFOwBwOeCLtiVKKgOeSjEjuCDp1M3WFu5k8Vqoyj1cOKuaYdZtySJ5La/WefRavigWkoUyU5J1R0/6b6FCSicrMdXDVzHUsKfEITzAw5xkURs6QekRP53xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757102994; c=relaxed/simple;
	bh=NK0OzFAK6/q/opP7hORQHauwDQR5pXFCM+tv01YYeTA=;
	h=To:Subject:From:Message-Id:Date; b=LteVLHXO0lZBKkBoPTnMch5g67enhjNviw0a7rJsC63Gcuwxl5Oo7Nl2eDME49xZlRgYz5FfNlL/JwZzFLcyd/29abOzwl4yWZIof6BYWIclBin7A+YpEA1DQ1ieZzH/EcZTRzYTz4qc/09Mvv0jIEF92T9UdX0ZjCbY3sCTcuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ejl+G7BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ejl+G7BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E4DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757102993;
	bh=NK0OzFAK6/q/opP7hORQHauwDQR5pXFCM+tv01YYeTA=;
	h=To:Subject:From:Date:From;
	b=Ejl+G7BGoeUvh/LyNvLNVC0AySpWdAFGJa1PMF5CS/2ouVgPvH+flqu+8GOuHdTbA
	 63uc0gsOvtOqIuTxXhmBIrr1NvH3Q4Nt2OKi70RssRZ5WKtYliUvvbcI9T9boLqUPP
	 xk/u2u7ggJ6el6+LjRdYQcZS9hPpvrsKRAQTO61oBHm6JL+yxzebZH1CI5ifu+4PDc
	 bpytofZs8qdMc0uXeFk5d/0Z0zpybkd3YBr1HUP3VvwZ0erTTQdVQq2gpgkN2nozFm
	 T9yTPIlFHPSsjwI96anxQZ5IvZUmkQxL1GOaBrRRgtirXwyoeGOn8DIdjJZaoGsxWG
	 /lCe+1KIvRSXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21D8CA101C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710299371.25364.1641831328598640479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ace1fd3b2778ca41c40de279a5f55fd0257ae31c061444d3a78e2083008225f
Date: Fri, 05 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757102993
