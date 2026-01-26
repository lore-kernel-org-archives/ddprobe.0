Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7F15CD7E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769393034; cv=none; b=rIF6XSqAboBCIYrAY1OFGyjI9qPc7QWKTuIj2awq/9r1ScsCtdp15iD8Kt7huCEKSjMA58OmoO98wsco8+P8UKQJNusCpy+LB/pBd1U7Tjs56e2fL/jsvVMZyr7anEQDw7kDvE3vS2NH7XRMTsHr3ZKBKLVcHuEhY4nctmmvIRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769393034; c=relaxed/simple;
	bh=8CQ2kPZSOT/hC4Y3RE1VUUuUmDzOB543KMS/MfS3ImE=;
	h=To:Subject:From:Message-Id:Date; b=Cje9RlHU51VUH1jjT4oENkjNcWpI3MUO3ysU/NAqFf3hS0pNAenkgEYl2IlM+WTXk4GHBIt+TEncEQKljwMDUp8fR3b60pvPEYg3XzzDgVBYXA6g6X/bSbSGSjkVseI175EnHd2zEx/CCQVF7ysNr8KD8iLpwkAjQ2XPZ1AYVAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXqlEpjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXqlEpjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F7CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769393033;
	bh=8CQ2kPZSOT/hC4Y3RE1VUUuUmDzOB543KMS/MfS3ImE=;
	h=To:Subject:From:Date:From;
	b=CXqlEpjWCg0QJKZzFaqgybI8rJiHctG5Qwep+lNqm0bJr1Xo8izadpOcBHFrE24zg
	 OBoAzLYbezrTQNce3FKTiLRerqiSeS/Tv2PPob3gCSTkBTExEem8ka91RQI7DeGd1S
	 yk68PVmwP8lQ5HzGZrFm7njy1dLpB0+KoCCF3ioTdvYidAsKJEoZ/gGTTDiIqSY0Cr
	 HLwhDhFWqtzwUFWgb1USzh5Yc9qefyxiMKiVCgs209YS/8cuPm0ga/2YuYgQsXipAo
	 X43WPG03KS6osxSdJ977y69ww1dfUpyGacSQWRShqWvfxKoYkN2XVjdGr/Yhz8Tuto
	 kfzY56lpPPrbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195CC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939303358.19992.8417009157253095741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cf97f214e7abb981a86ce0b7e286df0842d2e344d5ec9e632954e25a8bfc13
Date: Mon, 26 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769393033
