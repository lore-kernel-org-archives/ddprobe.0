Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC982E6CC7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771543494; cv=none; b=McUxRB326q5tU//znGmWaMTCi4zIrZP3pn2D2pvWOlGNuDmNBpHMiYT6E1YJK1NTY2VVCKo/kozvSkpvLkm9s2kR9QHqjGMeU/lAq7zV2QqwHx3ag5Cy2g3KoTnPzR3zeSDwnDy5iWlCyQfYNeFclHKSvsLQdw64gQC1tfglY1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771543494; c=relaxed/simple;
	bh=dBfFTmrkJku3H40mhaKFpq6fJmFjey8cGpQ1PEVeGck=;
	h=To:Subject:From:Message-Id:Date; b=jN6RTjuCSes1J9HwR7wpHrEHKMR+3Ywo+aRePkpWDpzbx6quAyHWUsdM2X++MsKDemrmc0nNvHk8Z9m5GGG3jPXzbSBAx4SCUKuTowSdlcdGxePdxoHEP+g9oA3yG84NrQ418fQNoBDl+03wcXqDziqhNoL1lfvTgbUE159YoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4DjZNQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4DjZNQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D3EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771543493;
	bh=dBfFTmrkJku3H40mhaKFpq6fJmFjey8cGpQ1PEVeGck=;
	h=To:Subject:From:Date:From;
	b=S4DjZNQnPHYV57KH+3X0iDN3Sq1U2fkgSkd532tkZYLCiVubdQiOW9EBWWoXaULBQ
	 J1Nnj1y1vs6bH0Uk6bgo+ohcxecsVRI0rDEeNndJkDrfyllY2Mv0Mg3P+GquJiFJ2E
	 IpxQI6JRvhdzB3hh9ZrCgxbix1GzoR6kIySHRMHG/6fenMYE0boAueFvBJJXptD0Hg
	 7KMZPTUmJ515FOqCLeW5q+UiWInqImSqvYeKEawQvgraiNOjvcQTjLmyk1N4p1Mon0
	 oe/rvZlFnH6VL+iC194qqHPuPxge5yO/qD1TGOHFz+YLcGwmLTVLBwVhIVVcab9aZz
	 17XBNpIGV5c+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94491C531E9
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154349359.24988.797833868530806570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740dd3f96e9482d8d25c345b20268197d2d6485bbb3db081beb78488ce8971cc
Date: Thu, 19 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771543493
