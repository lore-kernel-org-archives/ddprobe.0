Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4908B4C77AD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783535914; cv=none; b=uEgaQusgq1Lev6kiCQNehBt/44aA9cIQU9wSOTQgpmRX6PFOxTeWDYosVsDOfCrJNTpHYnFK3QOJZKkASACmbXZVEaIcq0qP6lZZ/cszU7BNrFy1kyWVjLrJhOaA6e8UzBntlDNrktFx+K1fVd7RtFU4QCa86qFkd5j/hsUyr6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783535914; c=relaxed/simple;
	bh=oDGcDuzDNwZYZrq/Ebs/TDrhew6SSXDfL8GQzE+QSbM=;
	h=To:Subject:From:Message-Id:Date; b=Ty0FcDICka2aKlwmllw28fvhAHcI3bnRkENMFuz5ep8JG/QLBLsymB4MiTLYb9zFQqvjv2HkSXjSj7tS3BNu2rR+fNoblVDh3LaMHahoWNI1UrzWvvzV6x1gbElg5cLjbPi9Qv/XQPRbifr1diS23dtjfBQ5Qsh92pXdSsm5Nh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAbexAHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAbexAHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D187AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783535913;
	bh=oDGcDuzDNwZYZrq/Ebs/TDrhew6SSXDfL8GQzE+QSbM=;
	h=To:Subject:From:Date:From;
	b=fAbexAHVsLMJybQQwUwDAEw8CpiMqokVV6IYXs3fFPTTrMK5j+z6g2A4u3my/lLRO
	 47io1WsvfXHizN4PWWYQYr+clJitnV+sZKiFXDneV1QYQYfK9ZQML4xPsq1IfwaSXp
	 qooHWze1hXpdhCrlF28a2AgXNo3MWQ1RAeG5Rtrw8fy9EUzpumSQF2HLKsa7EgPC6a
	 INck3ixnV411LK14nkJAaRHOvIs0rEohWEFCgow/owfDo3Gkro7G1SxnoNGlwwkqSG
	 ym1eGujJxLpj2r2d7tcr6a4raSv0GDk61tAXHaj3eFyM1y9SAuu4dqFfF3MA06cPVq
	 oQ6CbhYv/u1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C9C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353591368.920.2362202394369533131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7526bf3327cb3ef9f5b3d4ccc1abdfe5d0f229b7fc77befbb2294634711269
Date: Wed, 08 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783535913
