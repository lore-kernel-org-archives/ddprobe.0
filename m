Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D4C35E926
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788544234; cv=none; b=qbdK2rexNkvHzt0UYq54qci0PzmF477Ceq5mvcqc22MmYlH2jF+WfCtXNY2dbXURJbKiE4QvuVu33NHwGF5hj2F4Bif9lb8OwVlGcvR3UXCw1VDowzudDQD5eD4WTwDXSlieicglX1R90aWWtiv3e0Ypqybm7+b0m0G2Tcj4jAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788544234; c=relaxed/simple;
	bh=vauPPBir897uKxAsMO2xZFMuLc5ISvyVmIcQ1xVeOB8=;
	h=To:Subject:From:Message-Id:Date; b=rnv0Mifipxz685Zgnuf5WPZmSplhT9hlFSdHlZShYxJYd2jVQRbWGT0JFivFARXnvWE6mJJ0O9HjC2a3rMkfQDETWLdj140svoS2waOPC7UYTLE/krf//AJIIRXha6NIPD8ToYUuojnjtTCKw+BH5V2kmHSohqZr7OzvMafLG/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm6pJeSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm6pJeSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4138C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788544233;
	bh=vauPPBir897uKxAsMO2xZFMuLc5ISvyVmIcQ1xVeOB8=;
	h=To:Subject:From:Date:From;
	b=Lm6pJeSM8bmW8epXQEb5by6I4gFKQtAZV76hmwgDeX6XsuM9aMgnEPWrbIlkpSLRt
	 8RxBOjRtQATMaXbMfWIH9mbsL/uxyVCeWwZCj6Ar7R8fiNDNxgMYSddX7UVP3pkK7v
	 DPBnFdjEpL2lZzA8veyqeJUz8AcGusBws6MJ1bWwc+NtuFKBFb06j0+tjDfFw6vCKs
	 bLC1HKrgQeUkcf4sYYKTsYN2Q0IwlPAi5F2eqs4nYku0CwtkEeN5muCNd6ZV/Ihagf
	 r1atNZNcHcd0BFWpMmtERCh+PH8YzjjfQ5G8SK4dBgiVhEienO2C9WZorzJvui9dI2
	 J86kLGjlLeJnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF077C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854423370.21223.1993473057854938254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d739f90d1ec8a795f6584ec24e14e988e55c29f7b58f029548b364f09c9f117
Date: Fri, 04 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788544233
