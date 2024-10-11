Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0F216A3B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728648354; cv=none; b=NW4qwtTCdXroC1PsMrQ0F9bdJIjSCqZBO3NKeoJnnI1JlczptqExLdKyRSxRM0zUYB0UHDCqT7LgOmOgZmMgsDH797HqNtXTZj17CA+CkWJ+gCcbDABSHbi0fTniPsnYUa08oMcA8r0PFZsNgqt+sxMQ0bnNLfcCj2wzjEtR9Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728648354; c=relaxed/simple;
	bh=2CGRBQ2CCIYmz5TJZCLOt5rcpCBbrFccrIwnHBfRpag=;
	h=To:Subject:From:Message-Id:Date; b=Lh6KVoi28arfYuWj+5xPbJNvkFKpfVdNNmznlv8glNbsY8dADSYuR5fjccEzY0SxPwREF/SsldPmBNj0rks9SBqZP1xTNjc+Z0tvOjKOkFholc6tS2aKxfR50MMYxtYAs2OODe/0YhO6CsZsN+4UWBpkOWwzRzcIBvLTeeWQEJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qomWwqfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qomWwqfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D9C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648353;
	bh=2CGRBQ2CCIYmz5TJZCLOt5rcpCBbrFccrIwnHBfRpag=;
	h=To:Subject:From:Date:From;
	b=qomWwqfw+9bSMpw8zUiPvIUbsN/MoZebPt021JNqcuWPp2WFlEybtf+xdzH8JYQ6z
	 Nkvt+k2t+VZ2SJOcH4buBOSvDCKJh/T7ZfVgTXsOPnn4fyQXmxeTJ0CB8vj9RbuUO3
	 1e+GgAJyg5HBs1GyrDT0E3nSUsNvnTyeOGFq2YOJys7XcmEfkQFemWzUlBt3piX7de
	 CYX6mYfUKNlVuFWsM+Pz+Fsj7nVyPBcFFIg9ydUTexmksbT1X1S8PpfxXdrMGBmGN0
	 gzCh2zJHE6lDRghdsmbO4GiiqjxNIEbx1uiRJNtALXpLgP9otbNe8mV43+ixy75u7u
	 unX1+tqaV2CKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B85DCFD36B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864835362.13722.17340037163152174098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1611099336a26cda0d580403c423808f982f2c65294fade7c321ca2bafb09b23
Date: Fri, 11 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728648353
