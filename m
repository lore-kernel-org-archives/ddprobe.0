Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F31A13AC1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733793954; cv=none; b=TjR4Wqb8pXRo4RJF60sXGXyo43D/wKwqUTY1wjRaCRMeSaYbNS8Fn61hTJXjnSXkdiQX2eIWFwIS2skoq2Nf7egIFlrCuYvgB45nvExd4s5zrT3Qp2PYutczBQSMJ/Jt0Oye+zL5Stp/8YUpd+HL9vO5ZdpNiH3XSASWzFQ25Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733793954; c=relaxed/simple;
	bh=tU0Zab9OX795db8e/nEmTbht3+lNaOBPgNpBlr7l+zs=;
	h=To:Subject:From:Message-Id:Date; b=bGXtryw8LV6yw3qxDsofhaCvBAd+1pl1G9XSzV3O0NH4HWuh7anN6770jPDkN0XQoFlwfTRFBHJSFM/Zd2facpj35+nQZbAykOdaqTG08SAUH93VKPn351arqBwAicJLNrlYG6TIs3wJQo1mMGurt/UfbmAG1gKnPvtoMvNgWyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPHNgHW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPHNgHW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DCAC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733793953;
	bh=tU0Zab9OX795db8e/nEmTbht3+lNaOBPgNpBlr7l+zs=;
	h=To:Subject:From:Date:From;
	b=nPHNgHW6MvmAuoJJdL3opIBfYFxIYriGzQ98smufv3pgskIb2epU60eRopsgWYa2+
	 PTVEsX+Efmd4hRQk19lU3D0qWfu1mNDX8PuEJrUHGXVWJrgiq42LSXSxxe8cgr66UA
	 Wfs7EBkD5yrKJE/69KbgKxA6rxp5Wm3XVVW2N3TH20eLqGSAkJnnIR/6flX1l72al5
	 NtP8u5TEKeCKKfj+iwZjJin+9mpBEgAJmT9F2WaNGNmRDHs4Hd2rVZh270+v4B/otM
	 llQCcB7PXHH5LKpy1wguQskbICTJGbUs2d02/3lTfV4uQ0rXoyZw/Mf7f1P2F0to27
	 m4oLDz6n8i8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1C4E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379395363.11906.3450181286229572789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26acd3c707fd19a6b4c44352cd6f84350c16f704e42f0206815331c0efbd5fab
Date: Tue, 10 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733793953
