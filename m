Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7A018BC3D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749702594; cv=none; b=d9hfhLND5rCcBMrARJMwMui0ndkYjZF+xPXalwceeya/mQ8acfTshciCyuHyA7WZbQ+ZLzDgOp//TOkBA4zAfSGeG+7AsxrbNlQbJ+osvZuyjv6gI2RBNuf/Y6qKalSZFOrnFLhiyVPv3gLw+wgPzuKxl2VAFqiRL9vgDLaoiSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749702594; c=relaxed/simple;
	bh=CfIQPsIhesNk3eelnkGOwSivxJi7nEAN5xVTG4UeJZU=;
	h=To:Subject:From:Message-Id:Date; b=nyskf8VuCfq7CCdZPWSi8q4raCjl8IJM1wcUlrOFvSaZNe11nbzgaQO5M8aF1nKywhNzyTxDXN3ntAMnXrJGihYbx0Jy8d+kCj0TF/VREj1jTFIQfLkqvAmead6oBKzEB3aZmVWm3jPCbW0d9hSvH5z9yPocG3woZphVso10+SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AccBegNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AccBegNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D13C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749702593;
	bh=CfIQPsIhesNk3eelnkGOwSivxJi7nEAN5xVTG4UeJZU=;
	h=To:Subject:From:Date:From;
	b=AccBegNCMyG+SqjiDtkOpGDOGsSauJSIgjVvIQRqUw17Z6JYP2VAGOBuTuksKWHp0
	 8Dhj/07vaUhteMaLlF+ixF2HI/k2wOjylD8x3p9tSBJrJjBm/8WdQCvFt89qTS8sa/
	 i5qsR0KlfNPklMnLaEdGnSyKigRAgEydhK+5aRfksO/5QvGBAxioeoatue4krc6BEC
	 LQ9J7O1ptXVJV/nXjiFDQCnHbVUMkVwuyuoiLyRVOGlztex2sSfeczgn/CB603extk
	 SFbLoeUvrGntS/Fxv0kWoj2H3mVDfwAOzQDGoEZ5kbqHJwZHsw+VDF6XHtcWRyiZLB
	 9IQQDZPbSUW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970259357.12507.13836223621129858854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77db17515e2e33fe11997528b83b08535908b12e22bf68fd7137f76bed4f89cf
Date: Thu, 12 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749702593
