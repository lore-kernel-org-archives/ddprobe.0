Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD9B2D46D6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765285974; cv=none; b=J4o169gAUU9hNByHDFzhaGA8PAAFEatfmOOuZ7Z04o25g59L3lMbpxUZN5+rSsCoBdb/IPLU/xutIWrdtSwrBtmBOYtFe1gf7Zlb1PIRACgylBH8FoMmAm/EdHtb2AAHsfagxGBLp8dWRQMbT0HKC2zEisQiKHXJd4VVMhVXqBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765285974; c=relaxed/simple;
	bh=mExV52NSu8tc9q4fKs02/apD8o4Su9UOZeCH1b7uiEY=;
	h=To:Subject:From:Message-Id:Date; b=AZm2+sDu22KxM4vd4A57iYdI2RtdUsF/C0Drs02Hu3rcjR/u/jnfez1Ra8TJPW+vFX46U6ee3/rslQfJTtoFV0jepDalAGJbNw2DWmeITDhihmM3+HO+nz9D51Zs/1S+1a1VAp/j1gcARd61br/FV50Mj8/DKjau7NhlkEG5Kys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlnwMM/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlnwMM/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765285973;
	bh=mExV52NSu8tc9q4fKs02/apD8o4Su9UOZeCH1b7uiEY=;
	h=To:Subject:From:Date:From;
	b=NlnwMM/opee57mcS9NrT2myR3G9zFh6kn43psStyJNevX9ACMHp85sEVcUUgToA0S
	 nVz1LpO0zjA0yT44KsyRbGG8sC+AhP1ShaS/3qOtMvmCsELS2/mNtO2ocqGyQAblTt
	 j1M0owGVVi78R8IJ2LauQNo7+2ZluJnERlpo4/OiiTibBW+Arg5c2t/ZI7YIqbRBuo
	 6SdvYC4u6gSvyPhLhnHjdBIc/zZgxpVJRXa94a9NO68EFmzkCkD92TVZvx0L7lwTK9
	 SCdK+ak4khuZ1ZBBVYl5mTNOhujXcFJs+0h2ZjkewbjadMvSsBdsZLvUP9iEMcU2tp
	 CbtvprICGLcgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C5D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528597358.23933.12196317871461371859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b313689352ad9ab04c2763debb10184768e3f4d5771a2c9ebc7c77a707f739a
Date: Tue, 09 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765285973
