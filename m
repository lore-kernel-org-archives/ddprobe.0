Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D5419C540
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260534; cv=none; b=JhHQ8lPAxjxlPPFVxhevAm+nrkfUOt0Ss1WOcqlBOhtBOkqxbRBdpH2A0vwNeilJZamMC1NJFWLiD83m4PxYOXA/EQ9P+W65L2jZhaZIcDQCvUDAs8JyNvoNqISEkb9ifYpZkE5afxUrK5Awel0dC6DvW/qa/UH7sW53sgYwTWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260534; c=relaxed/simple;
	bh=ibFyKJa0FGKT0X4mUFMsdRGJ7T5qSg126872JP1Ql2Y=;
	h=To:Subject:From:Message-Id:Date; b=J8RpN0yfL+vTwAzmc8CeFsS5lZe3Tw78UoHCYI55I011Xl1idq6EUYj1ExMaoQLItPufPkcxcOoVS5ScmevHUzh4mXQH9jEzco+1x6WzitfaliL4CX9wXpCc7Jnx6G64xQ2Dojd/Mc1Q2xh0q3M0+lVvYeENQgSif6arXiUZa+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7EDUW1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7EDUW1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA231C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741260533;
	bh=ibFyKJa0FGKT0X4mUFMsdRGJ7T5qSg126872JP1Ql2Y=;
	h=To:Subject:From:Date:From;
	b=X7EDUW1+R5J/xcoMCPdGOY5M20GeGBBvcHP0aaQsNrq/C8c4pJ4YWWK5Vr4tTDZqh
	 IF50UGGXbEAfQykVTEifHpPN/fVWi8MxqMogNPTW/NwyMqB/pn1sweeF0WMwO636sR
	 gtz9ptu3Y8YfCRCpP1elI35j/cY2+opjybntU0p/7ihCk1yLl8U/M2WrV59rdXs8Lb
	 nNy2n62g23w7g0hivumihIgUIJi5FmF21/JAo79pAbIES39Qr8dLjpMnhTnJCVAWfM
	 t98LXaEaZE2NgH1nWpjahTGpJ7mRrsM4jTzJXRFq0BWvvCJFQo7RiLzHgGNqhJLBEE
	 dr/BTL2D+nbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962ABC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126053360.14760.4814655847322749951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3388261f7efa36c4a119e6f7d0f1d4b854ba160338d59bfc6c285a446289375d
Date: Thu, 06 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741260533
