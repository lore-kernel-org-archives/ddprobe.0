Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B17F2BD0B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769859234; cv=none; b=mQfGPns1YrlaBhnL1Frg5dANt+tnR9tGBhJ7Mdj1hWbXpap8dh4wDyr8VmiIap/vXka3ZCSsTFedi556x2mC8m7c5QZf9JXg7RV+GSBYABxIUsBeyUW2eWJHkLHomH77IQTwYzPrDu1O2yFCDWMiRfDDs0G6Bj6Sc28RAhltZ2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769859234; c=relaxed/simple;
	bh=AsTyynGpprQizLkay3ciYnAYgJ/ZwYm8Vx7aO+HZVoY=;
	h=To:Subject:From:Message-Id:Date; b=poYhNUnAx9+zzdl7wnL35fkFHIDKmATo/ta25/qmvJsY/ec1MLxoWSDJh6OagvAvhIhM2cOB9DEzTByEL3q15Of5undx2Knes011axts7T6cXcU7ge5QbHcEKViM3WEpTFRuIpB3wdcUp2kHYfbx7EAp7wwilqut9AekcNaQuCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6icxGCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6icxGCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769859233;
	bh=AsTyynGpprQizLkay3ciYnAYgJ/ZwYm8Vx7aO+HZVoY=;
	h=To:Subject:From:Date:From;
	b=Z6icxGCD7QF9noDlxMrBo04hY7qFvK3zLUG9lPlYnpMCKniLNXNo5QuSGs+mTrQFo
	 153S2W5LqJ58Yb1if1LpH0YwM3pXcsmon6M8th+icP0CTr3UKP436BbNwRpk1PtXdQ
	 MPIdmocZw48lOhnRhteI+OUJAe+/1kxBa/2RQhI971HgZWJP+FVqNPJR2Liwx51pZm
	 xe/w8hd3XDM/b1F1WA0+vorL4NKbBhrHNyGukXo8glllBNJWFiOtqHXR5PimqcEmcV
	 TrP85mo8d1XikF0dLYPI9Mp+VvE7vBXo/Es+ljD2DLJ4Odn+92LbwWn2X5cw2UDBXQ
	 fQmmjE1mqRJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92647D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985923357.27978.8406104593801258716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b084ba28287c959f51585293fc218abd182857de8dcd440f58ffda37e84f2064
Date: Sat, 31 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769859233
