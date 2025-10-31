Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C686335557
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761910794; cv=none; b=lbdGMd56FEfatY1egAqTiTucAfITsYPg0KjrzF3S3Dvl+rm5UG/OYvKZ5LL5Tu618ITnx7Fc9yl7O1wkrnvLqWjsxHV5KTc1PymdvNkIqEsdXowRLP6UCN7vQ/mCnRFHpeDLjUvRsQwnFkilsVj/Qq/unKTs3HQNZay7PdCciE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761910794; c=relaxed/simple;
	bh=VCD1AhrgvaLKlSR2vhCx6kVBBqrifSrYERLpdew2eZk=;
	h=To:Subject:From:Message-Id:Date; b=F/AOcGgtVI16UMiTf7c7769OwwaESNFx5Do7gystHdGflNDg0DNO2MVZbljzbgcuwnRfmTa8am0iFyK6KGLzonkGfIcgN52V6/HLrpmb4z8uggtVpyI1DjS1p7XBRvR0mNEf/l/HMlhxt+DVKuHjPVT6SxT2RhQmm4E/fFwnAls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqQDCtGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqQDCtGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C61C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761910793;
	bh=VCD1AhrgvaLKlSR2vhCx6kVBBqrifSrYERLpdew2eZk=;
	h=To:Subject:From:Date:From;
	b=fqQDCtGZIflGH1pPVuWthAPlUaVoOI8J06Nld7tMVFTyZVo4RaQoGPcGmnDQyJLqf
	 WJ6EKBAPckWmqPILopfHZlgXNrFbLLvWXzdXkUpH2t3jM1Bs2Wo53fKV/Qz1Ip75mK
	 9Elz7MgXnq2jkFTHSPrkibCUcr3pw5XoTQr9aIsUfUstKeQhk5nqMhWN8Fff+rJIud
	 7azeXSGeJr/1VGO1GWrYW5RrqMznosjW0ccs8lm+waygD04PnxeNsHDiNkgQ3TWf8e
	 mFVfpTPMeuH1MyMT7AVeJaxif55nqoUmHvZb+msqx+eBL0WWakoeIRoRA4MbmRel4T
	 09jwYLa7psXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2CCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191079358.21949.885838541606528141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60193dbfb611a86a874c69cc0b32350c1f8061400ae7b78358cb66d467de2a6b
Date: Fri, 31 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761910793
