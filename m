Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C2F38B157
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780308874; cv=none; b=B0+iONDK8aGXbA1jUPQ1UHUrKvC5l+7Brr1Fv4Vl6tWDyS7FtSkdZ6Mhh5anrhvSKaTFQyrXreo/bsi6ZLOD4k6G2dwU57870YbnsV2LHL+RBqqOKWY3+mak55ayjP/5RsnIaSkZPgFog57G1b6waeA5yqSbxbPLTHpcsYorcLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780308874; c=relaxed/simple;
	bh=ZrwCnWhyrsHEjoC7NyQi4LEiz579YORiz7vm/Kh0nRI=;
	h=To:Subject:From:Message-Id:Date; b=DinolOLQW6us12p1jcE8ebDuqpxnD0MqLP/L1vhl7H8uijxh9hdf+mSFkk99epcBWn64CdzEJkZf2rQbbnmYXIfZ4HwvdcRtVKYdkfVt0n2kAv4uBenrX9xJb9WAbcE+wcdQiSZSfzSKOp2G4Q0/RlNNtEyGjXcyKCXOHer0rFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/B4JAWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/B4JAWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37FCC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780308873;
	bh=ZrwCnWhyrsHEjoC7NyQi4LEiz579YORiz7vm/Kh0nRI=;
	h=To:Subject:From:Date:From;
	b=V/B4JAWaYYO5JVRdcEn1CC0qHsm7QE304TiTafef3uZscK85/BtWE98rN9ARCVXPU
	 c5VmiI/fGg6Vm8JPo7Ds6DAx2C4Zi9M/Z3qXlbXdTon005uQ8EZZgqKU2VEzSDHMqQ
	 hlHuiqiZtZlOS+czgWL8lOGODyjizLVKJ8QR0jcvnr/BM0DBbXMsQ5q5l0JYejvUOV
	 /pCT+//m5MiLmybpphiTcEvNm+xboNls89+rhXlpYftgBbkaorC0ziHmR5PTC6RWS1
	 W/qxfHIXahtT6LXFHqNH1XjieqxguyUk2XwwSzdzsWIXXyY2xVURHX/WX5sPzp6sfC
	 QsER3kHdSY2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F70CD6E60
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030887368.29371.13062709501956890977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda0a35f34aafe80490d1d2ea9385786ea2d0882ab7a3ee1bbe5b44b7f156678
Date: Mon, 01 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780308873
