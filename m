Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CDD1DF74F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772082894; cv=none; b=iEywhy6BCKD+r5mFxvTjDuo3rbctRtPiRcdZi0oPtWngfI6tnpvD2ugucwQrxc8AzQpnUP2h0xP3xGvsQ0H6/p/UBZ9WkFlVf6A3Iu3YhUAMzB6DsFekgpah+KPn4WpdHWAwWfaVNs2WWbGdvHcbaT2hmSd0rDAyu7AOyQTR224=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772082894; c=relaxed/simple;
	bh=U1azGOkZk8CDV1Q7fH1ilacwYJyeaLmpRJmBkNK6EJk=;
	h=To:Subject:From:Message-Id:Date; b=PW0eNW9NMV4rJjRfDlfx6gPPRxuvGYWcTtqwNsG/BYMoaI/O+Brr+f1lmufqHy9ocfMaeTAgsjI4+yoPOb1HzYN3BXt7JKYpgLIjSOY/9EGWiQaNfYPAXHyamEI6Nu8gZ+l2UGxdiN8GxpKxa81iVWzJGqlVXcAT9HSS31VqrLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InnPSNHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InnPSNHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD85DC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772082893;
	bh=U1azGOkZk8CDV1Q7fH1ilacwYJyeaLmpRJmBkNK6EJk=;
	h=To:Subject:From:Date:From;
	b=InnPSNHYUlF5/+pesafLMl6lLzLFDzBHoFEeZO/ZEqdRjEKw3yfBWCX20rhxv7uCF
	 XJ/rJJKThz+k1bSUJXxUuBa5uWZOWaZPqLkV6qGiRFuW7mMyBGBG44gsUI/lDvhVM+
	 4foQNSMjgM55wLGJjNit6ZWhMWlrvYH6tv9EcfYVrL9kSnVM+9KUyu9Ct9jjs2WOy2
	 J3aMwNUnz4D2Y0AExfJ4qeevQ2WO2RoHrvqWig6xTT0f8AdSRQ3iBY/Otrdc8YjuJA
	 EG8IlPfd1Uq0JXIh+3tZHfhTC+EvqMJ0+yKwMN7MZPET3dpCMIHpMaZLKa6cRou/b9
	 1IEPFyhphlgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9949AFD461E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208289358.20753.911368835481265510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405dcee12e17c218376a2a7355d1134738d70152c8b4cdf7d01b222b1116ba89
Date: Thu, 26 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772082893
