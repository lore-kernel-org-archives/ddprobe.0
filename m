Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D527117BB35
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766622833; cv=none; b=SMNwlX9chw2wB6uVYdnbNVdRSOJZB7Lbl2H++r6Or+eRAy1k2t81vOVjkyz14oPP2h9dMAH+Jlyys/HL7C/OH0wpLVnkdnbjucvzN8G8uRNfJi+vRdiotfphaZ+EU+dpaIcZlOxZgTpBb8R2Nm4kRCDhQUTgotZBqw2ukFKCjSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766622833; c=relaxed/simple;
	bh=Bfot1P+DBVgnH8ptLyixIv7pm0GDpfJ1VupPcVLvLZE=;
	h=To:Subject:From:Message-Id:Date; b=XSBnCbq2kkro1MJa9r+OBl9wyTQff4LJeNgo9WGQIMyvK8vi/T/r7k/xiCfC0iRyTUeN7qlpAavC79MvF7MB5ICrXNcNoYKpXSNDgHrWE5mWWFWygpa91r3SqC6eTaKwixU4K0TmAY0vlGqKDLpPyhxTH4NeMNqjtipxUYw+fhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TReWFs5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TReWFs5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766622833;
	bh=Bfot1P+DBVgnH8ptLyixIv7pm0GDpfJ1VupPcVLvLZE=;
	h=To:Subject:From:Date:From;
	b=TReWFs5VVyVEU9E/9cwrV9B0c+ONStH2LYFKSXQGU/jOoNvN26h9z1fP5Yt1VIPjA
	 kbkl1/ftltxgM2Kbi+jjGT8mIfoC9k3h/1boi+Yuk9c3i4xKMon3/pEdALREkPRs8y
	 P+Dxr9w+qnbVVzVFv3imXNhswXuUjeqbVDCaFvDx6EAgzwwOfwKZalN6eYgDis4FTF
	 6aDK33glKT5vscjCsGStdJaGCB+FCNJyAgOe5ppZ7yC2T8xd5JYtl0uq8w5EvejnUC
	 sKnvy5cec4WqPt2J98nWKQI+SoQPRLx459y/qhd0nL2g5+GU97u+vLmk7CKQDUi0Mi
	 4GQ4ESbYb1PPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C5E78498
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662283358.15051.18364541507925901862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c46907c40cc17dfbfe3d4c3f54c6390350dae7f9a2f25e5f50196d17985e9dd
Date: Thu, 25 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766622833
