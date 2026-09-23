Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CA14D17A1
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790166034; cv=none; b=m/3am59IoHYaugZGAUf4ayWC8wyaS13W0TLRLRbVJRZ1QTdcX2bPiIrTPmkhrfJHiTYglQZQJSS15K1iSFVsb1SSV165Kx+qqXtxIn2vZxv4lpqS4r/jZQr0Fpaib6seGiry6ftgD+amIoEq9IMV9XBfIUr5P3AxlmBcGhDLm4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790166034; c=relaxed/simple;
	bh=GA4ds3m36ijUNhKAeRNni/wgSZ0/6WAsn3G5l59EIss=;
	h=To:Subject:From:Message-Id:Date; b=nJX/2ulGyNNYYnYolzcMzfGyudQW6Ir7nRyaPhD3EisXAjbGv26VSmEbx2AQiiiZe/M/NVzpOxFAOKLAeY9vzzKxUO9/6vk3zEo2dwqla7pjhPuWl8+viBYiTd9kMQ5g2BV6CWwVYmB+UPebKXWssRuqFndYY/FGD0K/0xUiF0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOQGId8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOQGId8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7579C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790166033;
	bh=GA4ds3m36ijUNhKAeRNni/wgSZ0/6WAsn3G5l59EIss=;
	h=To:Subject:From:Date:From;
	b=nOQGId8sKQ7QLtitfGFckJLL2ju3s68Y7OxLZjwcimFtssrxk6F8dkFY/mk9MEdxJ
	 Xyt0OGQ6ODS+do01gguRkFD1LVBOSCe8rraVxaDHMduTUebrs4Q8H8sV4bwXqgdwsi
	 Sy3Ilyl6JqD/b5MYWcpLvNGQENZFPcEXd3cvwSmzJ7mxaV9et4/ldBi9nZvxZnkLcH
	 Q9JE4Mfb1APokjQIiytHtRgUKSDwRXd7zSjCS/MAjzAQOixmn5BGpAH07OxiszsjsU
	 xW5S0BQql/WRC8NutmNiSkewpOieZ3wduaq8v/9FmabQhYLiFyZgmbVbJkbRy6n7uG
	 oSGMO8RdCLjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A45C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016603372.29370.2402235888216470830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895d7a458b04eb459e79409376adf0bde074314aa368dcc023c05c0c7d12017d
Date: Wed, 23 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790166033
