Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242BA269D17
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456394; cv=none; b=Yk2oanNFtpkAKnsMQkSQDhqtk3x5N4/fbSzPjGCIsuVD9SYz2mjC/syq2ymc6eAKZSiXJOc6U1d/l4/wd7f+6puPLohAfdVzMQ20dLhF6rc5rebUjZeHN6WbPHyddpVn3X8/uLoSVJno7YIT4mbGVOFv9TBDqIgRSYbPZKDvd18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456394; c=relaxed/simple;
	bh=iQx30cFS5YDSoIerwrT2mG6cuCNoIm3q3xktWhAn2a8=;
	h=To:Subject:From:Message-Id:Date; b=NPbolAKbTGnXYDf7BLBG/AnXhDQ59cmIx1BTEVVMlMsHeW5/kYTF/5p1+SGCwzUosJp61+nWyQGJxGmiGTNFaR8rFxLhEJscTOx67HxR4eBLIywXPVJMbGvwqh/3ZblFqcMW19m3CHlo9adCMeHTOvJr4QgDE0wYda/Od4zu4lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZn2MjsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZn2MjsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9834CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751456393;
	bh=iQx30cFS5YDSoIerwrT2mG6cuCNoIm3q3xktWhAn2a8=;
	h=To:Subject:From:Date:From;
	b=DZn2MjsK0X2XTioUidx87vcFHwt70R8YSluk07+WY+fNrjXkkMi+96TS16troYYYh
	 EaFY9HAGX3Sbx7WFijNHr1LBedIo+5+kR8c98r8DKDWcU3aMwbD2VCRemdC4ee0ZY2
	 ad++8TDvGThwCsYGMVndnTwUWs89t8YbP9Of+fmxnVfbHwPcuVgA1h7UJFdetOaX/a
	 SI1/d5qZZPDTGAJR47geUel1t4yDk1V6Pdhkw5vMTa6H92/4rnbUf6Ta8SyCfktdMG
	 XG7026OZezTCSdaEQhecui7OhV7Io6gMTK5An7jaqa8znFo6k2yW1uTo6GFxdW0evA
	 kUeN+9Hw1cC4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFB2C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145639357.19076.15365747206743314366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de51cd37aed3d75b40cb52e91c2281c3c7a63e1f0cd5557fc25b74f0ea88f452
Date: Wed, 02 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751456393
