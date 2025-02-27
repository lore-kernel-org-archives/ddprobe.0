Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633B1BD000
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740676134; cv=none; b=MT0WLQ+dT8v15sJaXsBuag4qXDEpmLbhXmPMCQtvLi3yTRSK3bMWzamnXLgX2VOEs2q+laxwpbDOC5pFRGmkftmpACbjA84+JBwVo8t+y0XyPAvcj7AnuOYiOssUaFTEh/4kDkM2UPrSXFwNz0gUW9LZynlp5BLtmcARmyDNb9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740676134; c=relaxed/simple;
	bh=cypt+yavlk206zkf2O34QF1KHCJzkxmqUwfyNzzeobo=;
	h=To:Subject:From:Message-Id:Date; b=MSvrhSULvabSq2Bgbf7q8VFAqCjhHQNDssIrN69saaUqIF6dqiHzMPvouNez1Mcercd9lEVy3o7QIyyTjfH1c3tdAMqkkfH3zO/hgwB70zwnkInefPAAU78iDcCf3JBekIrihQIEodQ14pNiF33Gkqk2w2rg89hpLbcsN3Grjys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYk6oozm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYk6oozm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740676133;
	bh=cypt+yavlk206zkf2O34QF1KHCJzkxmqUwfyNzzeobo=;
	h=To:Subject:From:Date:From;
	b=fYk6oozmrCEwC5TsLWJdI9dazAZfE1asBlCnBtRaSnqw/Uos8BamkYHwYQzCHU3Q9
	 bzoCPrPZ+zIIfOQ5mn0f7gIo2a+KGZ4JKbrtevpe188S1o4iR7JJuGTppJOOs8dlDS
	 FN2GwpyaY5SfXOQpRgdWx/4mVkcwr4djYEWnku8HSHuhPMEHfxv0mbAqqhRSw72Wjo
	 1nZ1kNemdukJr81gHo2XFvTtnSVOaqixhXgNtjZCY1U6NHxLIFWrfLcmEJKIZPk3WD
	 hhddSibZpODBresmhEUdPw5Sez7Gx2OFqMFHGNWbEHkZ1Uq8CeDMCzvCkjqX98BtnA
	 dsmd72kiWslsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D43C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067613358.8492.12543748404812991139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23023c064e0f67ae1626d90a279a7430b0f520d7d061bacab8d516bcd1f47f36
Date: Thu, 27 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740676133
