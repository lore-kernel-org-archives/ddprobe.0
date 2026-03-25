Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF8A356A09
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774431894; cv=none; b=VcQES1cA5SAJVLWC6d1BUnaovxUfd/CKdtmuep7l9/vDiC189WFGMXtuWJrkeF+VFoiAxWisyRWWVSBa0pkmp5YGo4rnSAJPI7K6xiWlPZf1sQesw25mfcVn5rawozK4ju+PfD1myKBQEz2rPs4uX1JBdOanSZEHJgrOkOiX+Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774431894; c=relaxed/simple;
	bh=AFQ3GX+U1mQTbEK54F5rMspzCphefV7M9wx1vwClEg0=;
	h=To:Subject:From:Message-Id:Date; b=I6jlHF4+0YG1IMpfYhdFvV38Grp15kaHS6+sCrfc4O7DGY6QrFwTNjIJTAxU9fc9bxhDpWFenb1G10wj1ftPtWYwZHpM33gak1V/o76MUSwpmdZdpLAcXP33wdI9tfQPnb4y7x7KXsQtEctROGsmHq22Xfr7CjFIaWKa1nj25RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4xVQ67X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4xVQ67X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2745C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774431893;
	bh=AFQ3GX+U1mQTbEK54F5rMspzCphefV7M9wx1vwClEg0=;
	h=To:Subject:From:Date:From;
	b=d4xVQ67XST1rB6kUpoUdN6W4wkKxMhAXTYHqk8kkzbIpEdiyZ8D7Os9UdDn6UzlJC
	 kPP7BQiifFBAtzmkKhS1MugFNeuhVtCQVVVC/dykkkEY/hK3T+drhLF+J9OUk6tXvM
	 iAiXq2XCGyeYPB330v/2Sn5ZhxoNtjY1TZdxZZ51KB6ubE1q0p0oS1xPgK7VksIjq1
	 ke1ORBoloeZ/Pg97fUYWNMYg8lb8HRMZxGNxwXSHRmJcSrTv/KjnNycQRW/uzNiTGY
	 kJSoeYEX1hGsw8hdmJO8GKvDGunnsImbTsiIBbM/lZWONAHNRS1F4Y9QvLg+Q8b5Ln
	 xI/Sr0ucJJy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F204FEA83C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443189364.20474.9975990812601017298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5210cfc4ee08e87d2daa9bc3cc570017bd236dd9b62ab9b7ec9ff3ecad46fffd
Date: Wed, 25 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774431893
