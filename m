Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3844617FAC2
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743810594; cv=none; b=HtCCVKmUOMHYeOgE43no+J7Ef0OZbtjno/240pJpPbMkCrCAslj/Tuowtn7lGgCzhUM56ztv25R8As+rWyNAZmdKAocCzp0kn5qfKWDLnzd3PvQbRHDyGEUcibpKiShdf6Afkq6p7VJgrX0FJNw3DrQqBl6KwJTjjN9x9JNeqt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743810594; c=relaxed/simple;
	bh=NiFLcTF2r8J/IHHSszwd6RpYkx6+RybN5w9GtfCU3pY=;
	h=To:Subject:From:Message-Id:Date; b=ULBAwzYFTWoD7Lu9lMdfTBYWb6oEUaGz1FxG0xcd15F4d3Fay87URpIQ7MGATt+NbnJqgOyGAffZZshBBPO9A+b1oo2YRa49mzMyDnnJbXGmXw2/ZyOowTpl7opqlD9VxFpt4lsGiB3NomAC+3cv+OLZzs7Mzftcd5HjgI4a4zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ/eMeLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ/eMeLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743810593;
	bh=NiFLcTF2r8J/IHHSszwd6RpYkx6+RybN5w9GtfCU3pY=;
	h=To:Subject:From:Date:From;
	b=dJ/eMeLRG9yPMwK3OS3VtUVxsjtnBiiAPv2kDCPiyIkKIxOmcApRG6olm2r+Gdnqz
	 724qUZFyX8fNpbGjkfsMIS7yt3yxDBrScfwwxULmDOUAZEOgPrvnHLq1i8XKbysz5J
	 t1iUdw/ojVLKW4F3XLWWEBAU0cmpH2BEEYqSj3Y9zkOhme4+yW1kmABTOb6A9sr6hz
	 hqSt7bKH+LFJs3MxMfLtH94S2BeknzUI+lENhdfm8cS/sLFmdnzu5Yykh6suXjMb0S
	 gjRDEXDMlxeBlKMv6Gjw3isJb1bnMnLiG9ZgJ+Iqs1msqwRUFAhushoqncO3lAyxx6
	 dAF4TvsKpd8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CBC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381059359.11475.5771603864086618372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b5acba78b2ee3437c96fca8a8302b54fe1946a9dc577e08a7dc629c945e425
Date: Fri, 04 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743810593
