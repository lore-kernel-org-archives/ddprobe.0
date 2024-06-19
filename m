Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6E8762C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718839763; cv=none; b=YL9rr4DcAzgHe1rn/slRdP430w0zaB2Soo+XjjKmNXlleW9BnADJ4PIO8QaIJTZLDwxa62kflffeUlXnSgMh7+1AnL5I+ytHxBVVZkJFC/ufyPYGIwkUf5N1XiNLLeWCKzPnid+GaaM4T6uS/uOJdXIM280VNfs6iHBOZxCDQs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718839763; c=relaxed/simple;
	bh=/G53bIK4k72TneOILOcyF57agqEScmgvjoQJaUYQ7qY=;
	h=To:Subject:From:Message-Id:Date; b=BI0j7SRG7T4lfkmcHzsbmEbQLeSt4kRI3XhI2VoGa5wIypIIYLM1ynT6aNP8Zy+QZ21mjJ+0b6Vn2eCK7JY16oRl5hnORb2XBEKZvrB2JD4XF4ZxHi+YfatoAh9DPkTXz9Jp4powBkb/Un8xyCmarYO55gmCbo8vUxEDN6g1kWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdGLeUGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdGLeUGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60EFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718839762;
	bh=/G53bIK4k72TneOILOcyF57agqEScmgvjoQJaUYQ7qY=;
	h=To:Subject:From:Date:From;
	b=tdGLeUGj/dxVQxxYlMc+ZlscjYI2wQd1JXdQRdPN0qVw0BS0ytXTxKFMIMRybbqd6
	 /6AOOMB8MPRhS5kkVSxCyGeiRVdo2dCvlekR2j2ZwjgKIfAbg3wFDhwuxoldaA+1Ys
	 amGipjitGsW3lHCMX8dDjIfRQRwfm+TfB9wWE7sXjxWcy2+jAKcR2SdrJ8zEoeuw77
	 5aZENMfwpBWSwdMOr7esAeOuayDi9YppcJVLZS7Yh5Xb1IbOf1wZR8bDnUVrgwcMbV
	 zCw1lt48NmxUej3qs146U6kpAzYq+kspvQGTJmpasZW//ylWtE+RgQMswwtnaIDZIR
	 Nt02vO0AHUv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07B2C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883976277.21395.16484887881208918946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0385a780e50b18f11fd102bc5fe530cc8b1c4a3f0afc9f290f04961f6b1f382e
Date: Wed, 19 Jun 2024 23:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718839762
