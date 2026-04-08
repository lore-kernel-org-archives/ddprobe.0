Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2173D7D7E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775669133; cv=none; b=BeV1iy0kdm2FDr1Ct5+hoRla8etNil38TbrsjQwj0gX5hdr4hZVN2jDGt5Qxo6tp7r8TRa0BOAmOvq6jbbq0fE3XaYFSAhGNuRaSShFmi4Cu3e775K8OKLSrOeXhZhpZ85vYW2jdq/JcxQKPx2n4PEliM93HIN8oL/b7ogUsz+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775669133; c=relaxed/simple;
	bh=UuXmIuTUZqx2xmCIl4CUEd9Gbpf7/mSr8nBe8PCr8kg=;
	h=To:Subject:From:Message-Id:Date; b=Xpy1sLhUpmTXO8Aks8cYBzwoJ00u+tNFsJNqm9qUEQi1JUtcf79Zk7iFEMpZ4p6YtMPFEzYxfMbW1CYXF6mOPny9WzO2lMFVShYBOmCo5lLUSbEH7rn4RcVNvWYT+3fi0G3TLDXR2zlP6AWRV1Ekx0W4rhwzdx3BcQysagoqcuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJPoepgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJPoepgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5D5C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775669133;
	bh=UuXmIuTUZqx2xmCIl4CUEd9Gbpf7/mSr8nBe8PCr8kg=;
	h=To:Subject:From:Date:From;
	b=vJPoepgvcjszOpe9ik0swg41lbZFYiQu9ViqtnD684BcDmKBl5MvUehd/gIJ23tv5
	 /cIEK65o89rTuvq3ai0xW5HCb0SGMyjOWgkkOZhOp+VuDnLU24CtOSnCpK8nJ2Gxxy
	 MdIFQ1sttgXTVRNyPZyroRfkJo9+Cq2n9FZzUXSRbsEx2BzOdbGddtUo9u7MttEYsY
	 Top/QgAu52HsxElHd+795y366Jh450tmvgxCbHpBOMMu+0vj8RRoWxnFMLzMhtkqt8
	 NuadJNMxSteTYgnmvfqjnttsbheKPfalt+fGCuGUiMIaT39Z1TvOyXdX0sGaGoL5kg
	 WJ2UzZ5nzs2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB90C10F9964
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566913369.8688.5977798396882963822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8068247c6fe64fe461ac8b16acd4823c210f1d6915ba75049038726af6477498
Date: Wed, 08 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775669133
