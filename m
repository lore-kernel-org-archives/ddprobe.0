Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF3221281
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750400994; cv=none; b=catbvs1qzh/H+QRylOfqY29w2j827eLQ1S/Hhqs1+QB43MsX86sAFYF4MduLCkhnFFSfm8oQOVvKe/UpvFLGrxnGJBIQd7hf85RsgvSK9+38ni1yFR5/Iw5AukxK//736UxIZwZnDkJvWVrb0NEWcxJuKtGVMglSni337NktRQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750400994; c=relaxed/simple;
	bh=jTJcVd/pBX6ann+qX6HHMvp19fx0sVk/wSv0hoJaabk=;
	h=To:Subject:From:Message-Id:Date; b=lbWgoGEE5NlL0Wxh5G1JHOkJXW5HeATRJ14G4f31Z+jmZUtzHqCpYZHkKXx6iPJfia3oQbBO8+O/Vd8mEvaEkdEz5io2gDQFLyHRsRZ1TSazyHERjutUPc8ZdJsijrrNcJNPqH6/HSE4luEf14dYpumY0aP4mmT1Wmk+P132x9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHKm8Itq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHKm8Itq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750400993;
	bh=jTJcVd/pBX6ann+qX6HHMvp19fx0sVk/wSv0hoJaabk=;
	h=To:Subject:From:Date:From;
	b=EHKm8Itq8EyKGmlqQP2Z5bGNnQLNF4vbW3pOAl+YkrDy60AmAjx3i3wOcgDCNBb+z
	 wMnzyFY7XzWGylHLPOp2BXhYftp0grKUq/FgjwIs8NTzAUfF+W61bh/ZnKDpDXjZDS
	 D9yto55IuQzaSCMSyr/YOySw2KB9PgNe9jLjbwZeiiopfcNakY8Px54FFxVmiEtVnj
	 SEEvVeoZddiRT5u25xyiz1uwP1AIjeATEN1Eh6wLarVcUS8n7lZzee8OdQ834yCkbT
	 YsiBlqA4w5RQcNZ3p+5SsRP+9SwazqU1UO31KkO7p9i1qmmyDXBOLf/F0cEmyC1knH
	 NlGLiKaR5xzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92858C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040099359.10672.16409281005609614636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b2ad075dd34de49ffb786a4eb40690bc8c430b70e6b766a5845cbabcbbad67
Date: Fri, 20 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750400993
