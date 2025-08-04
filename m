Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B530A927
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754269794; cv=none; b=Q6JvqPbIIVF6XHGo2AbICuRdc7FeGZ3KwzivUcvu4u6y/l/FHDRFIX+D88bIxGX87J4EdR/UADQshTMwXn4TnjEpBRIpHX+wiyuZc6EccvhLXLsTKtqlK/+TZxs5pHswPkI2YyrFL/MHmww9zcfMm1WgcrLrxPzbsc39ZHEQm/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754269794; c=relaxed/simple;
	bh=ykXVcNOyzBD6TdUlMFdXKGym0UFQMlYqaQqvpatzfUw=;
	h=To:Subject:From:Message-Id:Date; b=PxB2zo8voMrOPmSYC20CJ4QzdD6BmS7g+WY5OGEDuE32IlEkmOp9i4Z99XqHIMBpCXmdsgWr7KkqTPYjwJye3o8texvIuls9Y91lfgs04EtNOl8QRA0rKdPgMst3w68J1EDzAQj19TxG+UaD6+fMAHJa5xHPQXZw9X8YEp9SlBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBAM2m73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBAM2m73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2508C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754269793;
	bh=ykXVcNOyzBD6TdUlMFdXKGym0UFQMlYqaQqvpatzfUw=;
	h=To:Subject:From:Date:From;
	b=tBAM2m73xEEG/G2oIvq3mqzxv8zIVUK1qp93k7zl6/XRdx57DyCVe9sNRWO6waPMX
	 iIj9eQx7PoctQAg1Uo9zRmZSusgYggeJJ9INj4lPlWd61Lme/uuKLOT5005BN20rat
	 4uLuyCdxrADWZ5KXnghW7uaB8DBpjEksy1IhfOQvOcy8b5N+PJnBbNCkLPy9wPpEQA
	 DcMCRFcDiLIBNbUrgmt8lw/ddyJY+DHy978GR4Jg6odPiXXPjqGHWukdha6JX8zUWV
	 8AqdhLrDuTrWGBYSZFHFAOhAvODtH7qzkhyh99xoCGIMM188clNildrpbKo7sTClhH
	 BavYKWWR5YfHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34EC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426979357.31036.3495445979057424704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96d3910f9c6dc59a8020536d69520021cead5807bb87e9e213baacff5b81706
Date: Mon, 04 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754269793
