Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE4F1DB122
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758266994; cv=none; b=OVGp289gURcMBeKqmZYkcTOL8aNrdKmSmFgh6HTJi74yBpjZVj7GPswwP9yMPboCwfN59v+QLaaTYzUe+bG1Mhal8OK2NWai9bTrqOJDOdQF+lGk7fHRd+2O7uuW8GmKm4MMjsfDOGCIVUdQIbcKagDQ7LUgaur6lugMChyqAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758266994; c=relaxed/simple;
	bh=0JRhrlFtFy3TnilLWMPHtM/6UUceI0PVhFZ2+28d1CQ=;
	h=To:Subject:From:Message-Id:Date; b=cvqsjCy/ocFHJ/KGHG0qnRwSfTohDCY84T2S8WFbvNNldjXEFIctC4FIYgwQRBf+Qv82Ipx7ER2CaHH8E48MxPIlbcjbTlpk03j3oAyCMV56qvJnT5MXgOcNsKrveZ3rA5NQneCPJoOnMp5hUtciJsvnuwNO7WTxtzZhoW3Tfxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjrxlWtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjrxlWtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7969C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758266993;
	bh=0JRhrlFtFy3TnilLWMPHtM/6UUceI0PVhFZ2+28d1CQ=;
	h=To:Subject:From:Date:From;
	b=rjrxlWtbPbZPFPPvw0Ft14c4+lxK8q8JpAlSAU+h8NT7sGZZBcYSiRS0hXo+sTCz7
	 domhbVH9l0J13YyolcsMGVC3Fftj9BcdI9GPu49OHPQcjZgq+5sfP2OcURiOv/UMpj
	 OmvFNaZgNC2qjGRsKXMT4S75RoOxNCDmzagkNGuyOE1/ihIT2l/e2Qk7sWwWX65VKK
	 w63KV30d2J3xz8wx5RcXPmGXDa000NhBz5bTXE9rD9PadP5uG8bkww8GLl8/rmnh9L
	 Af9EopO66cI9QbQpeDvf3Bcz1UMJ+WCGKDcqVPs3GmmClZabSy48kMK0u6P37DEL70
	 sLy66i84GXIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FDCCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826699359.7940.12751506892283541510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6cf0c604952bf9245d4d018a2e4c7df1e5b476f26439fef0c20f37cc895149
Date: Fri, 19 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758266993
