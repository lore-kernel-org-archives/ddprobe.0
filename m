Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA3F2F7AA0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760953194; cv=none; b=HQAUco42gm9vSkMZwjdkyaFMOtEV38XlrT7N7hSdtJbg9NxyqOF3bdilIaXcsDjk2gAE0YoV0ABkjRWZCrRgLQmCNoX0cxCcgjXkO+OIf1q1JZolt6EoKoWFxjsk61e/UJTip4k8Du84Tgog0Xp0tPrQbNp0NVuOTzuUJ+Zxu4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760953194; c=relaxed/simple;
	bh=mzxw0SwIyFR8vON2Vb+m7S+2V2d2VDhN9Bw7PgpG6Ig=;
	h=To:Subject:From:Message-Id:Date; b=rzNewlMKenegC7Z1bVAfFaPi4Bz9aCUyQb/9npGWxE1U+gqvOu0qumICkEE/MpWW51TJjTLOmqe3BTiDFGpRXMvDSNpR3cqafm5q57UlIUAL2XcThRgOTd74+tBm4u1WTsvrgctL+1duygALoyo1wSdxPQR+xzTSpP3BPU04JmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU/1nIZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU/1nIZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760953193;
	bh=mzxw0SwIyFR8vON2Vb+m7S+2V2d2VDhN9Bw7PgpG6Ig=;
	h=To:Subject:From:Date:From;
	b=ZU/1nIZCWYuIpD1ik+Jy43VDS2KcXk0LLlyzCkNDGae0mA106YFE/ZtBFE61W5ZmI
	 qTNMepA1l3PRxkDAPNrZy2mJdUzqJg+zKcVBgIzUNGstYFJ5NSo416hPKuUt+Z0pym
	 YAW8mdbiUY+D0AeB4nb6KktaFSez2A95FtA2TbQTR8BLTlGUlUFUXf2PxYzvuqqeKJ
	 hjNRXHOzFTjMh2p46rBpcNCY0JMUN4zSraSQ4EAlfDPPFVGMB7277Ge6Rc42Xwz/NK
	 OxCmrsSF/oXdYWywiAmKLRAPs0odzHWi4to8k3vkRkqSTj55wLXxPUnNB77O0yuoOR
	 nk8lRZnMujn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90931CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095319358.23667.18299221871470509854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b76352cc56a47b40647e0c866b8f9d6c90043b7b8af3af2882e885194080da0
Date: Mon, 20 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760953193
