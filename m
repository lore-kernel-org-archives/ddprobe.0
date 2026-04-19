Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB3D40DFBB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776630454; cv=none; b=ZkIfJbnQAcp7Qo/+1804kdIMpbPAjDLDpAc6BXRUL7Ta2OUI289dpgRR/eJZYBshvHxdtJ29/nLZbZOvQtFaUIGFWXCzoQ++EGvD6gJkzXs5FAk+oLWvgygzg3kAgBz8jA+uDvS44+AReCjazosSXdDuppy4Utd3kczZ8e2GYo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776630454; c=relaxed/simple;
	bh=+Eb5XLgne0fKisRMWdOmy5K9rflJaLxCYqeSPywoBDY=;
	h=To:Subject:From:Message-Id:Date; b=QGVZc0Hkqyzkaf2YVeQEDCKbmcj6xDUkX7LGg4U0F5i2k7iWMf+67+L/LGulDia3uwpSF+GtQFsqRymJ/4AxDSlrt5vZGyV/hGomMiX9pqF72B9jharBXGJdcx1T2JvzBZ0bwU3dzWjnbfFgZwppM+/4bAJNa8pEk70xOiT2ejk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE77Fe/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE77Fe/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0826C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776630453;
	bh=+Eb5XLgne0fKisRMWdOmy5K9rflJaLxCYqeSPywoBDY=;
	h=To:Subject:From:Date:From;
	b=DE77Fe/EXhrWedmEFTWOH75NVKg8okjZNP6c1xOpjd2z7eqRpzzFcmmIWFgo4NB5n
	 Jsnko3MZPmyLjzt8jvG2EFEFo8xTvM13Hftq6KO21IAgnkNugtc5NXZoxfe+kOpXd2
	 Xt4+v5uUYZtpoKZRl5iYqUxBVExm9t5Yddw02FQ5UmcBUg/QzLRd+Qwwi5WlcR3sL8
	 9sUtoAAFm5tZSLAq36g9F3c5b7ySB9KiQWDEbA4wj82G3XeCxGdF6On/5Wip6mKLNO
	 FlkQH+YMC9iPxeTVxkhuk+U/BcZPay/Tvo6cy/7kMUwBv4ylaWG2HEydc2/dznE3wS
	 iE+PStd8BTP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC498EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663045368.17308.8117034916291218664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f6ecb506c611d9d363e76785f6e73448711c9523d12f3d3be456451e6c47ba
Date: Sun, 19 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776630453
