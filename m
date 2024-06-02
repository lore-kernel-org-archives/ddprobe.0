Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5124817573
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717301123; cv=none; b=E5yTmhNZTZydHusc3XJ0DYU9nXVs2/WgapJIpfcfI0E4DuvOykXl9aztPrcoxLlmSbo04f9kxy1dT73f2yw6qRaivy2PEaHlcsqI6teOYE5AmvtT0Y2+KcBQkKyRLTN5DpFOw9YUy7l5LU4JvAzt+V+Wpc8BK5e3e3RGts1h7ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717301123; c=relaxed/simple;
	bh=8/XU1/rtiwMJSRgHwHTXbyTvMWMuLrPTflw6M8ailjs=;
	h=To:Subject:From:Message-Id:Date; b=i1PWcI/3FwaCQlQyVKHJFFXtnmPUtc4mA90gujDcVMmOoX3tp+XqA3EvtRne6XWMLqqzz/zsW/tENg7XINpGkUWkmrqeqStnkFDp6KtMJkj/pKLPTHsFoNtgzHmI6Fe0+ioIA1+l8y/78Zs/UVg8Tcau7noWu3uBqb4aG5LXOLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkiSpgK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkiSpgK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB692C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717301122;
	bh=8/XU1/rtiwMJSRgHwHTXbyTvMWMuLrPTflw6M8ailjs=;
	h=To:Subject:From:Date:From;
	b=OkiSpgK/ip4WFY7ClQPngIZByeU5kbE9gePQtSa55elTh+c5ma0rHAF4jd1XPxUf1
	 GxsnpDpYee8JYiTYz7SJ+6j1n/Aswrf75Qt3ilx0T4CuPWT8zFa0Vqw/lebH+5frz+
	 frZntMUN+tCZJrApHtmsbcjakt/D/tdGIexnOOZ5XvIEgrf1vGwTt6dJzNDnqa2nrM
	 aa+auqAkFiKu/uooBuYT3nNEd13re/9oE6FD7rns6cFudvC5u3lrfVqcOrQ1VCNblz
	 hRkF1+tcQ5uCJvIQFWE0ObRMaVYaa1ILEoNekG11CQrgIo+H6CbGLECaIBqKKIVnvp
	 LbRjdeG0m6m/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57F7C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730112277.29789.15116864228238710773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795fec96a81cc672149180f45b3efcbb961322133aa8769a855b9a49d8df154e
Date: Sun, 02 Jun 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717301122
