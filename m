Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C31277C9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774812294; cv=none; b=B1mI4fHp49Q029hEne4Yiwf6TFgJv9Z8fR/xL65kfCrpzi9ybCPaHJyabkWrPjU+P4r7bGAxuNMH3XrQzaGNpmujYgEux3ET2u8zVJS9Em00yB8QNDtb/24M3OHoGYCZPa0bV/9EDtowovmxk2268McMf/2PN9LT/Y/xCAz1LVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774812294; c=relaxed/simple;
	bh=fjWWM0GXc9MmZki4HRrHQbrx13EpP8aajmPmUi81Gl4=;
	h=To:Subject:From:Message-Id:Date; b=e+6BTvNCB+Q5Y2fbIHkkpIzufMkWTWngPub8+M8OZIFIsxg/IeoST7BtPVFakhAydxzfIzeuAx50klRv8fgXoC5b5OJwx52V0AjfeuzQBM3biZxOXhJKVL7czdH49SyHRtc2eGHKcyBGCJd1LchRSPexym/qBZPeGSod0MJZfA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N157aYNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N157aYNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A954DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774812293;
	bh=fjWWM0GXc9MmZki4HRrHQbrx13EpP8aajmPmUi81Gl4=;
	h=To:Subject:From:Date:From;
	b=N157aYNePUpXGd49xGvgVBtMjyjcumUMYwLVR8qoTwVvA2DqEZjKMDNnFSnh/qFA6
	 1MNMuFSwuy95V1ArQpkkaLY7U81DBfp78w6V/bweBEYd1qU1CknezBD5IOtTe+CShB
	 NbqtQUmzoXuIr4UmmMYbCwM9pfQxEau2i2e3Ws6cb/zyjp/3PPFRMFTy03/ScLOqlj
	 FVQipWwb0tX8/f2TkRzBw/BicK0qhqfWoUVbk2lPqgRu4h3qRkCbrCGatrl4ok9awJ
	 2DzOArxR9UpbzHSP4uzLDHvORWvJpLNwVRBglf2srzFjTKhjT8lwxGZSf81CKi0xxm
	 /x/Owj2ZXuygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA5FC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481229358.14253.19285642898601177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f78993b60bc3157a4b355d6f46dd5c901df21b01466609219dac01688bedff
Date: Sun, 29 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774812293
