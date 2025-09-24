Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2843C1FB1
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758717594; cv=none; b=pt6VwRKAs/jMsmwkOXKgW/KQZWiRv2sdPQ80NrjtYBIghD5MOwFloofIJ2gvsWbi3L7Ktr3+jwk3/jQA+miV0SvLNPvhTONLohrFeqijFvsvMkKZXSC6u19ePhDas5Tfkxng0X06spw3h2tH1QDVNy7vXV2vKaOKJKcpkLeJRiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758717594; c=relaxed/simple;
	bh=kH9TM4PwIcxO3eYFvLCUkL7iRBIm80v/avWwwK42wPM=;
	h=To:Subject:From:Message-Id:Date; b=NQ3XMXu8zAq9wwOvp/OcwTOfb9xywumLeGug2oUr6YCENw+oP6yk8EBhUft+qhof+iKnDD2Jio5hjgqPINQsh+PQAIwMh+M465Ei4jVnDFrY8DiZBnC/dHD/aZOH0mAoQUqOytr9sf2cX5BfPqZ2Vx7pV2Rb2cR7xYIbB3pMB0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3M70zqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3M70zqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B621AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758717593;
	bh=kH9TM4PwIcxO3eYFvLCUkL7iRBIm80v/avWwwK42wPM=;
	h=To:Subject:From:Date:From;
	b=l3M70zqWZlvgQgf0U1tJYGQ7dY+iEVCJUMeh62KQCwdMAaku4dUw63CWRY5kYo/Dy
	 jZvlXVli8tg6twx7JT1TqDmEjM/1JbgmVufc5sUWKD7dz7OclU1eNUpslcUQR7fcLk
	 l7xrapR0fvUwCJyrRAw8G8BnzZmzbXv0JsmhaB8XKjyFcQIYM+vMC1w9aDEng66buh
	 ZO8vG8I1v6tiVeS6FympfPocZq4m6Dtqc2Z7m1vKx5mjrn7PvPOgNx7jojMffnO7oM
	 CjGhnW/OnY79EiE6fQh0SLP6WM+aRurIn5dfb2dStrTg+oeEAxbiiIIsc/7flDh1Mh
	 jvHHXiJPheWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37DBCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871759365.20649.5204582556960509095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00161717443afa97db16e5ffd5af7c18fe68c3baaacefa7ee29b62317c880619
Date: Wed, 24 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758717593
