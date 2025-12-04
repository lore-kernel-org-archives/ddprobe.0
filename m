Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8532E7F00
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764845574; cv=none; b=Ypa0hPbke6OWnVa+TL84+AmVzbtGQFkteqPBl9+ofRdl7n2tHR9GB4G7atAoJ75roe1QMzuY3rM+QtEuTmUn6QvrOkyRYm5MQqrOr+kQugip0C782KOcqqCqvDZXoef9TS10Wfo0qKpjnqVg/swCce8PaoWhA9eeujrNQkOeDJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764845574; c=relaxed/simple;
	bh=Sw/n6fru+Z1SFNQZk2hRGttyMXTxxYTfbK4BBksUEmQ=;
	h=To:Subject:From:Message-Id:Date; b=q+4MAh6+tW25398+P07JZfdr7xQ4VNuI3VOq9DQ1X9p1CxmjiJ4zNxJfEDu1fXcvN4BeEVwTLI1fxPve9TA80Jjbb3moqQRWwEZUqLp4UcA4Nia5GQ12QO+tAO0X2S1z7Ar9P0Bkscw/8Po0R1/ysxDgGtyWPofG/ApEnrf1fNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWZ0/FOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWZ0/FOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764845573;
	bh=Sw/n6fru+Z1SFNQZk2hRGttyMXTxxYTfbK4BBksUEmQ=;
	h=To:Subject:From:Date:From;
	b=gWZ0/FOODNb0xho3rznXSGuqujmFbMTmV4WN0zwvFh5dFtKwAICYHgRxpU7XODVKm
	 z/So33UiPFrCyKq3AcLKHq2F7wev8p9kKdwOVJ05h1YL+RO7uXirkdHmWLPzD8WrX7
	 /M+H/ZSI8k+NLVWnRBJiujynMFvx1BqtcCWLdmBKLuave8O4Eh+ADkQH8LkPskSQPV
	 7aLjLMeUxJ2aVe23Am/2njioV7ZZFC4xiOyEdiLAwCaKXysTi1Qa2xITLzfC0ons6w
	 I3N/X3syHmPL+xKMOO156TSe7pkprwcnrorw14sMyNVbMtaQvGWPFiTrW3WV4hw2ER
	 xWGDmG2+jtblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA0D1F9B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484557359.11125.4375901939395736863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c544df554691028b0fd712303128392e813edd1c579172db2c409673d56cf988
Date: Thu, 04 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764845573
