Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E26376EC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714201943; cv=none; b=sQeBtfC4/ECi2L+BA8/1LONcUjnG6X11cHSNLUE4NvO12OwMx4uKdF/XzjoTqwT2j8wp5pZGVKjjLgZNZqJSAX1ndj5RtuKPTlnMs2Kca7Nj1bWCaH4ZZ358c/csCAUpmHlG9Z+ZzMeoPChoh6d0pe2dnrm5vYMxgrhHLb7zEZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714201943; c=relaxed/simple;
	bh=21OBhjMX9f2+XZxeita7fe+94snNznIrtBD3NIYostU=;
	h=To:Subject:From:Message-Id:Date; b=JALb6sCRnrjf9G9OAA75qIZtmclaKsq8zxsStP1GYgDEjQSNhmTRaeIL9Q/X85SaDYblfB0rSd94iGWhRlqXYcavSxgemueGgvK+Ug9hp/mMkwtW2e37fe/qhv5ULo/0X8WP5Flmdg13jDkM43KP/arDIJ9w5VYvB7PiR2QexXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtGUwExO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtGUwExO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C71C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714201942;
	bh=21OBhjMX9f2+XZxeita7fe+94snNznIrtBD3NIYostU=;
	h=To:Subject:From:Date:From;
	b=MtGUwExOCKjP3TtFT1dn405zdDek3XdiIKSCXLTpST6H7K3rp04/OYA+NB4uTixSg
	 JN69krUfgpjo2ZIOjS4Msio4D2eEv57Tm0/BvxYyvZRTiBr4fqSW9G2KqGEQc3rzh3
	 P76hjOmtq8+CvJx9q7Hhc8qQeXoaL4TPpdfUsqv14uNkpy99iytnWrg24UwkaF/dsE
	 yF+cFtrNmi6yqF9FPCYkdVaCVw4TKTFrePXe4H5WK4Qi0cMxs0GxA7Z1sVCiIXlPeA
	 2h5NMHeYMbAo5tTf7ek5b7pcDVQIbILQF83N8x1A1AqPkiwVC8iEznkq5+fR7EXOb7
	 chuZIzjKYE3Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C043EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420194276.6709.7191868976768659110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4f69783f4b3da7c49d709164943130b40efe17a654d5363160588e9bc10fc7
Date: Sat, 27 Apr 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714201942
