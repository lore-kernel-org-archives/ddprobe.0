Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526053D2FEC
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775755054; cv=none; b=mfmkpADVtU98FC7uIyfCVCHahsz5CeZug17Qym1sC45D8g1EGJ8leowSQ6PD5hJ9vH6SiulajRTaQyMkg1DCqkPdBtwXqSVPRAp/5ci5zsyIK+35atZT0MpWTxU4DeP0tPE4x6mzM8S7gXGqj2PyQjyFyQAmaC34WGlWuN/TOv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775755054; c=relaxed/simple;
	bh=WCeKHMhn9HawU9TRqkY7NzwM/yas27JMbTlSpWeesR0=;
	h=To:Subject:From:Message-Id:Date; b=JTqBXMIcCeQoUCeh6K7Xe+VsI8KEc8mwqu3+ac6CCoX28QumbNMSfj2E3poGCBBCxVlMbABvOpBg9XrR1/XIgv8qM6T0PU71yepMYMhRWjFVutRlYWJKQWn4pPrfDnYrSQky9I8cdfiJoDXsBGSL507eOISULaj7HdP5keW4ex0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWdMpPXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWdMpPXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED23C116C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775755053;
	bh=WCeKHMhn9HawU9TRqkY7NzwM/yas27JMbTlSpWeesR0=;
	h=To:Subject:From:Date:From;
	b=eWdMpPXK69n+ufmpOrmzCu0o3Ol8qe7Gc7CKQFLSqnByGOfBD6Mjv88mbHH0IMdln
	 sIBdGZ1Wrr4yGgh1VyVa3zwJelC9tzXDiDpkNdX8QB2VAjq+k5tIGr0UrxaV8K6+8S
	 ArE6W+GrNTwFtkHg/1uDJjdq4iomcDeoMTT/YBuihiLBDyF6DgIBxF3V6jbbGalx1/
	 cT3du+Gqm08TT9o4enXb0tA1x5EJ9LFIWHxOV4ALF4geryIN65MJvQsPwOVF3S3tiy
	 vtjYZ5nvtNv7VXRwUvPpIJEJlsprZMFJm9cQ5CjmzHPuP92v3lAz90lHuWg+Qx4KTj
	 OaT3Vz53fRHzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83DF364A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575505369.22723.16961154857139296796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5e0e4d1784f8c48c986ab82271ab9c0b8e77c8fbbb84bdc04cfef4b4500aba
Date: Thu, 09 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775755053
