Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4021E17736
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727552154; cv=none; b=TgIc0TKPXp7oEpeQ2RtypAVkFKTSGbjB81kUZ2dtxLvlroxEzWjc7Kc2ogr8hKPEayNnQn9kZHfM542oQRzEfccMw6fQLZrXSx9cGu2NGRwjKDseQCXD58al6SoJt+uIM4LLKa2zRBELTt2e8yHWKaIH2IXj+ReFWZviJuyMCtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727552154; c=relaxed/simple;
	bh=xICvB3Hla97XVd63WWkGfnkaFezmlcomXQABOpVxFow=;
	h=To:Subject:From:Message-Id:Date; b=XyZqlj0GhX813YjAYtRX2ubHfZoVkdeoeALAxIcK5c+UClcZFtVjNAYxAgUnzBKQvJJpXlJQtf/SEuA7nrJS01HAiyUlj4al+nfLdur7tKQg94Swlex1wk85++iuzRMCqOiA9CGkIPretd+zfx5WG8j8EqHNvpBhuOB7l7DUp2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow1nEQD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow1nEQD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADECEC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727552153;
	bh=xICvB3Hla97XVd63WWkGfnkaFezmlcomXQABOpVxFow=;
	h=To:Subject:From:Date:From;
	b=Ow1nEQD99iSVc5FwDAr3ghXQwfIglToSl4ItR10/bZZmZ+/GCYB1NhPdW0vyUlBR3
	 MesrYCXfZpihlwvs8wukx0OKGxyK8BJ5xedv0RXnoXlE/dnHjM91pQgDfaqlrXn+l9
	 +91AQD7vbcPzpUn/cXNzoHKkE7YSXJqEuG+msB1rFof+EGAG9LR4MvtlQgqVrZ75r/
	 GhIrOrEQD8AadBrOkzkHrDq7vHteo2APWkjb3BIGlTkkksxXZ62hhW5U+3K4rX86up
	 etDkYjHcMmSnGBVjhDScmwJCB7/eoUgIwnzJK4TJAd1x+76fQ6LTXoOcEkLnYMuYeR
	 eBLb4yE2NC+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B276CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755215359.26314.16378597109243871582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6fcc227358858ca817e847cd9079b0ddd651d612d61f6b7b337b2f16e6285c
Date: Sat, 28 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727552153
