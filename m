Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0621319D07E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775205334; cv=none; b=hNDRV+RMbQ9VvKcqBr3hqTuYhvNIgsTGQGXH8zIHHG/bkeuW43gPeMv0jKy/tMvwg0yKzUh/hdv+hPGCkIrrVqg2ockxxigxTxkNGHV9AU/ufUWuYH+hUMMY8V87wlnlMEQFL6wd24bzFNs1OUNA7Sny67HvKRq8pOQ2WnkgstE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775205334; c=relaxed/simple;
	bh=DkkUq098QZnhvY+XiuZ7glRkASWQQlhNZCrUuo4grG8=;
	h=To:Subject:From:Message-Id:Date; b=EnZEPDeoIuKDckq8y4jyfJKSj8soAWqp0MEB7YB9Njk2jb2VzAfDYWY+Rhjf9CaUnttjcjkl/A+ms3vc+V0kCvTKlB5ogCtr5A1p2LYkhW2eUOsy0tz0SkPbOXJ7HlqtFqGnuGGo8Jdz2ksEvVXDUyR7z0XME4g2X/FqFGBJiXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiQ2NFow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiQ2NFow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD04FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775205333;
	bh=DkkUq098QZnhvY+XiuZ7glRkASWQQlhNZCrUuo4grG8=;
	h=To:Subject:From:Date:From;
	b=CiQ2NFowjgnrRBlGai+rfIPixEML+rIijmSEkBc7oBewddJOcecIAnqHAiynHPlM/
	 ZHtqE4oVtg4jDuYvn4bIIHWSWrDewZKET4H3Wj3jFkReXcuo0g+LuTflIxywQmeufq
	 7hw/PO/x/7vOaVzF1oFaqSBtsSNjd25Osh08qo4sF0yaC/bG0StegmBwdefSYy7OzV
	 SNq4+1dNYXEz9nYcji8A3NWjr3MOqYnFFpcfpTDPFFc4wQCRZS+huDap7eQuFOEQmO
	 muXb+isAsVj6K/AiV0RM64afbZAcRimtdojQ0uEVwmXXADYx5bur+bFzZ6aOLe+Pdw
	 iv+JbX2segwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5B4E7E343
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520533369.30291.10190198167707441239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d2e20bb3b6ac371534d2a6de32fb96acd3de8aa9d3c9c4f95361a9c5f7cd03
Date: Fri, 03 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775205333
