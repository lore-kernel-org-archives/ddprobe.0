Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361C622A4F4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755245394; cv=none; b=u71JhFfxJKuZfc81ZVVemMnrpXbPCMrblh0pyLo5o65/mXkEkgKAnOGeaKyENHEft1egraTxUjUr2hK9tN3vbI1XiH82DlRW7TOpCH+XbU63TBQ1ZBd9/jjc5snzdRHiKghFr1vRDCtT/VMDNkBoyl5EdgM5bLns1n560QrKdPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755245394; c=relaxed/simple;
	bh=jt5c0SFefIKis6mj2B3mnRgu79HGZrw9Z7HwvxhJn+Q=;
	h=To:Subject:From:Message-Id:Date; b=kC1c0R+23QH6Wg4owPfHd19TYK+NJAJIvJ9c8glVkNpFyohm1oLOfRoabKPQKSpA2VDa5BpVof7ddYyA8rTi7/SXF0LbgVg7PgfRVn3Y0wJyMBbjPIS2H50UMFexW78No6756I11Kmx2m+iCyVP9qEtujiZbgWT4jZgMKp6xRDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOgH4OkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOgH4OkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755245393;
	bh=jt5c0SFefIKis6mj2B3mnRgu79HGZrw9Z7HwvxhJn+Q=;
	h=To:Subject:From:Date:From;
	b=SOgH4OkV0pv6RW/bdUytF9cebDTiTscW044sHRlEg+QKrHhOAcdRGyzkTWXmMeEIQ
	 NLMEqnZ/Gw/7O6m8HKwPYZLRXSvny8/qWl96Thh7i0OmwtGoiTzdMAJb57au+ZlMd+
	 ujbC8gSXK92gZnRBtJCea7+M63IAwYaeUwjQMSpTaOHyli5Pl1pUTk4QGLeyBGQbo2
	 dQUWaE96DU1VOotUr2dXvk/pAWHudjZXMKSlLuRfHKZySD+EkkRHWY2sIKnTHf9WQe
	 EchK4O8ity70UuIePhiLrO6ucNFELa6TEUuAtUfeLblgjLMCAaziTu0W1VkOd+CvDW
	 GubOCTjMzmvxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90725CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524539358.18793.13320998479580914266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe8df349882f8b607e4b8b55ae81b510c43beab1a176acbc442327a273673af
Date: Fri, 15 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755245393
