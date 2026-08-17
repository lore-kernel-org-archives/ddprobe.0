Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46018A6D4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786947634; cv=none; b=R6KcoWH9wdcvQjnLZ+qdMQPt1qs3hDvb8N56WM1jcLQN6MtT2v5S+LNalWSig+VzhYf4DlG2hH56mT/vWryzAnmy/+moR7kWP2jhMbyG4rZv3EzrwH8c983yAoZpSWxP/yfn9QE4wpMXKiE+9zhmv5r/+gpcUChwIS7V3hPx888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786947634; c=relaxed/simple;
	bh=2aeHLFCD1mlGKlzzOw44Y6aFVcL6AjUul57uT4mM+7A=;
	h=To:Subject:From:Message-Id:Date; b=fUuE4JVjr2SkdM0MB22w3DgQ7lxONA99cuMCHbukfeGiGJklVhh2vspvM0d9kDWOYYOIVmUZ91nntFf/daz2Ph4JSVcRccYJC9lUI58DON6e3igg/kBHtNt2ng6GUr0oEuw8G7OcGqfJmWUddoA9TSzA0i1ZJBLNZ5G9kf2z8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL+hyto6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL+hyto6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE50DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786947633;
	bh=2aeHLFCD1mlGKlzzOw44Y6aFVcL6AjUul57uT4mM+7A=;
	h=To:Subject:From:Date:From;
	b=vL+hyto6bhJbLMY0805QRJTuy/ohkACkd6KuCbZGoTBSS4D/ZmJeJN/Djz4MwYfwa
	 LjqpDeuSh4k8xHEZiYz/CbLzajomBtzPm2Wxg3h2acq+5M2VuBG+tbE/mmy83cC2of
	 tpV/xOyHwWSbOhh9PzaK4oK7k5CPkmV0Vw+kW0uIx9yq6prQta0KOkikuhm8zTCVpI
	 S42NtLbk6sSfvCqzCZZcBi4TU0DXwomp/VcTBZTytyEBdyI2ajYITVwJEbd9I025ru
	 IvUy1rKjsAQlp6+IGIEuunLSPagOK8tkJ+EVXLiyKyhPSoLiztNiPgBV7PPluey673
	 QqKuXcf7xIuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B43C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694763372.19234.2957457836617673540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fc1fd3f440deb12dd9bdccd4da516107b9de35b222c0bf1eb93ccdca2a548e
Date: Mon, 17 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786947633
