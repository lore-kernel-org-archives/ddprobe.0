Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BE124469E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765221173; cv=none; b=NNzTsK/w3l/GIcF80eDyLvaToByR7mYBXh7/QRm6+TJlyfQedy5m44tFCGzKxsp4sUQxZECAmoaOIto60arCcxcHihUId3WXHLEfw4U7mdrmtgv2/600cIZo89kWcf7pVO+r6GRbL2ip3K1mZOZ8phcX7Ybz+vd0wUQ8kBo+Dg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765221173; c=relaxed/simple;
	bh=KnSRYqI5HihJXrz0XsKVAzJSVA/qctvipCqdKZcpu7k=;
	h=To:Subject:From:Message-Id:Date; b=k3GqXQlqhKC4qXagkYwztDT+YG2Ewszbf2Od+0VNG89BN3THsK4BFdzx1HqeNEUVBm9B+0rIbSNS2m7vwFapvskNasWbfjNaJ+hwCM5icQyObJgbWpAlUQbOLKjD+8B/s6TW0LpuDVxp4kuz4T+50/oJLw6dXoceURhR/LWc/IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgJulEZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgJulEZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765221173;
	bh=KnSRYqI5HihJXrz0XsKVAzJSVA/qctvipCqdKZcpu7k=;
	h=To:Subject:From:Date:From;
	b=rgJulEZCcoCfZeqtx/eJS7qI5ZUCphxO6db7Vnd0dfSAUJip7V/l++fYBrJkwVQ1c
	 d0yPtsKD3Gh4ZJtDRU//gbcNrtxWmMHpgwGBrENO6ZcI5yyBt66Cu3isYELw59J1/Y
	 5Vl2f0A4+DjTzqycB07E4xc39zQdxGyuLdNBPRwF4MxpMTFFgCJdf1evUirsdBIhuM
	 nbp0s+H42hk9L9XLLnPHTpa+RlH7g5EMT5WCcug/y3IgCZU7fBElIUOvurKcrPiG2a
	 Xna9HNj8XinYJN5QkoEnvDeIe4nfjLI+oZUv5s9aE0GFBZaXhlAqWZ/6rFZrdLMC0T
	 vnpiXWlZE9nuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F3D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522117358.8783.16913631229535344797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be69f4da1d1becefcc910f39f3e5df966ce6ce9b890778a0d1b17bcd9e80210
Date: Mon, 08 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765221173
