Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27B1CD2B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726910754; cv=none; b=DnZ0PfQ5TnjZV9NGezyZfjSyfCC3I8xhRv5C4bovUtpECsV6sATBkcyvgXBCH4hHs7lWJCpV2xL7g3I7Zv03ACXom6yNbCUC3z+mchwn4B3Q+7ynRDyDwsqxn+2BwNV29C4NvNVt3qH5ZS6VwVIVqAgoET6AI1czieWlth8NAUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726910754; c=relaxed/simple;
	bh=pLs/qfrriY60xojmLQi0+j4bxtnC0T+avNyJw44Foy4=;
	h=To:Subject:From:Message-Id:Date; b=dkeULOYHcy6MmuKiV30W/3DOOcC+f4LZqxCkoTF2XnYwa5sIHYYFOIERpsvQtsEDlcgqBX3kgpmdO0XItH2owEE1f5ccHpXHWwt/YmDuFCmrkZ++P2IiFqORMYYgnq0fX8oWrmFHCDmSDS8JNwZCF6e2J7pyOjuI8AtX19nDFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krSX+vmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krSX+vmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726910753;
	bh=pLs/qfrriY60xojmLQi0+j4bxtnC0T+avNyJw44Foy4=;
	h=To:Subject:From:Date:From;
	b=krSX+vmncUj+0xOkQmZcqTQwOl+F0OVcrH/CDlTHmASVGGm5gTadPGf9k+EjI+8YF
	 GkmzrwqNoONHKITOafZsuZNrswZnMxZUwc2gvd2QQ8JxHhwZAfC0sAH17x84SaBeuf
	 1avlYPWcSWBPhZMpVrJLlPdqBh5kdrBTznEilg3dPAWhQuQ8bkpPcQvfIDaP0rXzSq
	 TWWYF5reJ+0IPywjnIOkYtAmWc0dbeIzNTGSZwS/p0PqBlJgKUCz1B2ixhUrGc0L7w
	 VH+5HqG5RGO1CBfrDS8PP78yr6IlU4lka5U7ypTID/KtN1fzzMbWQ23Nf2LNF3TonD
	 4izAHWPRO4fQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F7DCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691075359.324.16340706541065198930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423f98bb041429f00f1fcb09cd540bf3b72947fd0dcf1f5e78e89d19c7d258c9
Date: Sat, 21 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726910753
