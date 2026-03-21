Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009952C0261
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774126494; cv=none; b=MLHGNo2k2Peu2QY16ZuBlzxIRVnVVDfhQ6QcvJ1dm8NlrLL9r6VIV2ZJqqXxAcj4QypTKmFgv+LQGv3pX1gqJ3YmgMDH9Q67XuY+ZFiFvCOWiIG9J81TnkIkCSF1PF6fGs29uw+KPoTUZzKbfvnDP4iBw6ho263yVkNmOGZHeCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774126494; c=relaxed/simple;
	bh=Mc9vA70oECPGpOtOVfiSP7O38zXQy+P1yHV8nBwVkhw=;
	h=To:Subject:From:Message-Id:Date; b=WotmwEiBP4kpyF2r48/U344piCo/PMle6I83fOUCgJk9Nt6e2Av5sDCOl7ZFLJVXdHFL2H/KNFKcOnwttTQo5+lxyY/iZy6Kytpmv5Xgs0LRY9CEWmzY1cddeHsPHDkEvzSim92Jv3X3XYydlYEUw12TgyQL/Dzk596+4ccRsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+r4GnWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+r4GnWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EDEC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774126493;
	bh=Mc9vA70oECPGpOtOVfiSP7O38zXQy+P1yHV8nBwVkhw=;
	h=To:Subject:From:Date:From;
	b=T+r4GnWtphgH0nZfnqzWebV64OFgeONwbBGwTp8limxgNxLhd3mI6AwqzYk0D54bf
	 y52RgQmMhYFuLHY3j7X+qS116I8lwyKsvP8qXen9EBHFZhtPYtG/WOlHULjGXcufSH
	 68VO8v8HtiBwOuXNrc8GUxPrRpSHt9qSkkTfqvLS7IB90v2sm9JzXswMkUxUgo8iMD
	 Ua7sLRlb43qv+ccVORX2K2FlUPiV+7GdIUStFockIZuTUXjc2l37uJ4uoF3ioLf7CO
	 OWLVao/qVVxRpFpdcAT6KSrtvJWv65HfSEZvM7esx2OBxbtLjUs2VRimDrzHH+nSRQ
	 iDQ4bDVyf37+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7F1094481
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412649357.32560.2027487771098056110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f1c52b68a1324d377faf512d8176482122f2515e1d04e1119420d364f753fb
Date: Sat, 21 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774126493
