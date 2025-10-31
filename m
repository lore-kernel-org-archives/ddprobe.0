Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D234F221D96
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761917993; cv=none; b=Oqbtg1sA+/1BEoZC0MjZxoJQUbrXhfaB0VBPqZPpvXqrSYVR+zoqDa28fabuzbJsU3VxAEdnkAsENZO2ukQUvsj5HvhHbTtU6GtCDRJx+FMz9PomnpBtyIYf1g+NIi0uk2hNdQIIrakjEkpsAqVohPxdtcdZm+mkDSBLVVT1HUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761917993; c=relaxed/simple;
	bh=InBvka2yfH2OvDS/30ELZrsIWWQAUq7CMP80vq26fbs=;
	h=To:Subject:From:Message-Id:Date; b=rbwO5t7GPvUKpmrQOf7y8mraG8sFXQPHebUVeQQRAHdBLbicYBiho3WWqYeC33ZgWTYcSViu6dSBNiZnKh/GGcokV3YqVyMuY3XYC/6U0KX0RS+BNVDZIhXHyN095OrZAofvR/2aQGyOrKxio3AJM24qGAoQNCTgcHEGoaYQ3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdkFFq3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdkFFq3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761917993;
	bh=InBvka2yfH2OvDS/30ELZrsIWWQAUq7CMP80vq26fbs=;
	h=To:Subject:From:Date:From;
	b=WdkFFq3N/TCRfwaTOFZwPhORLLF27NX+kSPI+r/641v5OPkyFjlkvy431b5wmjqsF
	 SWvil/ZBlfAmC7LKkupurtOBXo051GWw1EbEbfEiHRuQD4oR8Il/wBvu7mYf7L5coB
	 00t2gSiZ3ae/OLVOo8bpg1eJglgWuwxBCFLshXfgErFKI7LUeZ1QU0T2SKoPdZXyz4
	 scbc62f37XfrwhzSk14pHPoyqg11RbZmIuivGaKVOFe7tZwhVmljw9H5qORCpDIAja
	 u9FHZUieYVKCf5sIu6IX5fe5lblirkY+mfTaktQru1cMG6HjHDJxKeDOLC6LmmfvZ9
	 JKGTBbiUNBvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599DCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191799360.22621.13847278041822816754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52b7e23fbeb89e045a44cf685c8a36822cf703718f5aeeccf3a64bdc8a60b4a
Date: Fri, 31 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761917993
