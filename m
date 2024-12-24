Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406B9176ADB
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735041354; cv=none; b=cHvOzQqDHOkbU2/qO2PccmexKGf3kMJEazZPsRv1Q4V97hc0BF3YM9QPXMi+VWqlcqLFSzePd5iIg5Fee2n06iX3o0z0Q5nYXIRlgVJ//G+e1D71fWnp9nfxZdFn2WjhQJHB1tGXF1Wl9OUH78K7TxxZiJePCPI6IjlYWY96gks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735041354; c=relaxed/simple;
	bh=TodQGsYatFLZLAfjpkkgvGyooO/txOpIfePNQNm87gE=;
	h=To:Subject:From:Message-Id:Date; b=dW/JNzjp/mAqf1MxluB8KasmkIVaOGY1JpFFC045lluK7FyigYMCO9GpMIPQeoZ1XGstTXRYzLbxus4mOIETN5ikP2HqU2Mm+ROcVaX8YjzEMwpuBFlUN1PY6N6bYZJMVcWLFEShTGZ2nIkh6RUaVTluS5i+u9RG9OzwKTfcDL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af10Y/91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af10Y/91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE31C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735041353;
	bh=TodQGsYatFLZLAfjpkkgvGyooO/txOpIfePNQNm87gE=;
	h=To:Subject:From:Date:From;
	b=af10Y/919jmJwpyJmbLpitBMR+CucX1ZOTyeuMNjHZLG81747LnauHHzCRmVAgW48
	 +eCgGUIPNjMg3pHGT2trGJv3OtBW/eySbLtfkO8BbHi2ExFp5eSqcYnHeZ8iCZC2Zw
	 6rq1S4ezGSK1k5cfadTsk0XAtT7Ocn5lRXXmXCyek7nlP/Wr/RFfEvVlX0VHUwv3Bd
	 ZTs4V3mMptu8EeE7v+10rlscFEe7P+10WcZDHtJxl7WMT/2wxgpgmB9BU2OAkvxShG
	 iVLG92nJ6qDnPtQ9kWWkGbbOvBrmVPkxtg5xKsAb9sTqb7mF86sVs7SgiGqXERPLbx
	 fuexxofMNIAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C302E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504135360.20939.8711538098366555518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33ab1ecd19268fd80836c738028a20aa027618d97e39d77570c8e6550e47e6a
Date: Tue, 24 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735041353
