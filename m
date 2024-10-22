Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FABB17993
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729561554; cv=none; b=X/++9k7iTq1NGMAD9hSSaIeGHIS/tIfGf+eElIR5VaSYJp1L9TmPkNN70wy65P3cA3S4mcXUm2++QcC/C5ltkUdx1q6cHpXCe8s1iqJXKSXdnuREhNFZ52wC7T6I/KnJ2OhchViQi7hbBVZ94E2s34tIYun0B7gRqiJNSXX45b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729561554; c=relaxed/simple;
	bh=sm6qmCSSGVaAg9yeGu1+TIb8JGy1sVw6lorGMcJH9zI=;
	h=To:Subject:From:Message-Id:Date; b=QEtw2zZ/YOhvN1LPpL2wp+ro4ki/W3AnwmaOAWFlaAk5e4wYrpm8d4E8GNbrArXn7q5Adt8Kjbvf70fPLyGR+xQv+Ye6QhtNJSgCvofg8+aEB3mSRhb/RU8lKYDSyuLTXRvElKx80pMD5za56VzvDcjZ1OFMU3pzC5j3YYmhnnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ6PH3xP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ6PH3xP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A740AC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729561553;
	bh=sm6qmCSSGVaAg9yeGu1+TIb8JGy1sVw6lorGMcJH9zI=;
	h=To:Subject:From:Date:From;
	b=hZ6PH3xPiLZ7rM9ISizKHNw6NPM5UxH3o5JVSH/1FQGK7Vh6UsmhYkmiMq+foMhGM
	 yKkxU4nCerzjKDwFZkzNm13BNrBvcISXPmUwfV2Dn7P/TXVBPPnAAAlYDwL1hz1HSR
	 Ui5X/R7cBR4Lp8dzbAN+dg/dH3mndtjr4WTufkBV2pjIFkoWK/BLAapM0n1a7Al5MG
	 LWeetzwj31dOLRelLHqVQVLk9Rds8keaGLL37hz73a1wO0WtYDqhkNaIF/HODmB8XU
	 WhRqTMW5HTvdTjYkeeX74na3GJWALw3wdpwvXCitSLeCmSc31xDxtHIP9dGppLrlJb
	 zoURs76yTnXfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92922D1714E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956155359.24924.16644018073014095730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98052aed93e91959ee020e6747458833c4682e815eb7b89bc89fe680ef4ac8f4
Date: Tue, 22 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729561553
