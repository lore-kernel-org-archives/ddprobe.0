Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F2C3542E1
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772443494; cv=none; b=r2JvluCawCId5KePlBiP/6X/7RDs0NOwZIxJJQgB9zji2Ro8Lx5j4mVu4Zxqv/MZTFgdUSk87F+JEr3kpbupV2jh6Omvc8FGtfXnX9lyAUN/jt0UtYKvXLn9xSZRC2bVxMQPTNIsiBamRhfFx81GUny6sb0If961ytTCXL86PR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772443494; c=relaxed/simple;
	bh=le2jsbnDtKh4DNgDy6Q1A+Iohx0F1MBggpcInhZ63P4=;
	h=To:Subject:From:Message-Id:Date; b=KIxNSdgGKLcogf1UxwRhP2SESNtP1hLph5TWPrso7UhHJKXPf9smZQTwy9PxrbPzVDNJcweJzSJFdAT/cbl5UfFlC1Z5s9skfco14p5v32IZANtsn/YRwpkrVrEYXDt4cP6PTOPA8CYPXSMdLYJ+bLswF6i4bWDHYFd5N5t2PDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmKMDqgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmKMDqgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE48C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772443493;
	bh=le2jsbnDtKh4DNgDy6Q1A+Iohx0F1MBggpcInhZ63P4=;
	h=To:Subject:From:Date:From;
	b=NmKMDqgYfu6DKSRDaSMSlfITlzcTpbhpdVoaj6pI8kB6Q7zWdFJ7s2zoBp5tdtrG9
	 kA33zZGJhTKBaU9LrUYQm8gt70v/VqkbmeNf89nwM9L578ibdtV5q6vl+Z9MuCI1e3
	 GjzunrdqwCOocQh9yll77CiFVZIsHAUKPnPEKs2ch4XFw3cIcGhx5vYBjWe6uAavOb
	 GBo0EWggP2LHo0pPX4Bjz4uK4dcQxknlhfFqVEuHYyiplZzIh2tnGC8vwudo6lovED
	 +VMa9sXCscFGryacBjgcMecvlgllGz2j4oS5IjIlWO6rfmvpVMCx/oiA280aeGnIPJ
	 MvroVFezh0v2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A66C624C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244349365.2574.910440078248322663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1a8764133610fd4c40e6c31ee542a27501d33450008e81e248e3cd5da17c7a
Date: Mon, 02 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772443493
