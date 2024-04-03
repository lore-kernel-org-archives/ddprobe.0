Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0215615382C
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712168897; cv=none; b=Qkz/IsJ9dIgHwy1YCGWeYhHm8jhb12o99AegUe/XxH6P3JEGq6Wi7mLJN/GP2Gc5sM5U/g/8MDl1ukEcxavq1zgQUsB6o4JWODwW6+WH/ZkZrEoDthFFJB1h7LVTRl3/wUKPyh+kgAKn++IuyRCMVE2nKu78N0hHskrOWr8fbFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712168897; c=relaxed/simple;
	bh=Ho4cUI4HV13HeyWtVM8Fsp+PkYv6OFT3sJE1NDOJVKI=;
	h=To:Subject:From:Message-Id:Date; b=cZZ8hQdJsZTxOB2MrRU4lFc6qzFDolRYJlTEvk6gR9OazVUFygmu9tQU4G5IvWH4VMgNyI8jSt6PQBqQnPw0pzty2ARS+rEICpTx/4BJAWSAvzXsro3AdrTx9QcWK6BtJrY2jUnpj4rvhFHUlBzCJt87I9+BwEib/aBROxvvWOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdZZhpJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdZZhpJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787F0C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712168896;
	bh=Ho4cUI4HV13HeyWtVM8Fsp+PkYv6OFT3sJE1NDOJVKI=;
	h=To:Subject:From:Date:From;
	b=WdZZhpJW7Wb5pzgJhC5PIpqhVsF/JcTHyQj4z/0FBeqU7485z7dDTodVFlLn2UC7+
	 2ACWl4aU/87sZaNMwCZ7G/+f98nBRfSqG6PLxI9g6YjP+VE3tBs+3hzWAS01gzeLEF
	 z1tEAM2QXDlbx8J2zPdxdjjyciLddcgGE/SbH4RQ2tMJKlWZG31rkQ9Zjh68YYpaHk
	 jeL+B6CzlhbAyivukTfPp4yLiJ7yTJgixeZYgXXJ6ArVuda0nC2UpJ3UhOBPpspkZR
	 ds3p84sIZnBWOGgyQvTlyowUjkdHJ4+wu7eKumJJO7VJSmtL+waBu3eBld0p3H2nVq
	 s15g6niZN8cmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D30CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171216889639.22408.6707306775369322295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fa2b6b4ac933239bf80e8390b1586c3b5d97f59262ecd1dead538769287340
Date: Wed, 03 Apr 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712168896
