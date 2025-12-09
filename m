Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362562D6E52
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765270374; cv=none; b=a/WPIQV6jyA1VdCz9DEE9rB/Bs0sN1fX1bmzBqqgXKA77KB6KGalP0Z6SQgvDkij5yxl8/TST0w4itk+MYlWIcjZfecjveD78lyfEfjEoya98q2M6Y0imGQa3IHoseDpTI8AC5kh4i0OYrlmewsXShpQlafzyCQgpHstj3PMIKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765270374; c=relaxed/simple;
	bh=4AZGQ0ba3zMgk8O79tUoHqQTDfYodAAqqiLknFEUH/M=;
	h=To:Subject:From:Message-Id:Date; b=o90ECBZQ2EkyEpsee2GDZS4vlk6xyNXkN73t/JIQmtcWlcLyU+inIMDLuBGY3WTLZEWpMXKg+mUPE+aSiIcIx2Pv7lPRaDVp7q+r49Bmo+hPXxmegFJB343CDDAsQLCpHflOPcAwdvnKk0yoNv0Pue8DGYmogrx742EgP37MTrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSgRwMeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSgRwMeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B9C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765270373;
	bh=4AZGQ0ba3zMgk8O79tUoHqQTDfYodAAqqiLknFEUH/M=;
	h=To:Subject:From:Date:From;
	b=QSgRwMeMOeMLsB7QrWMYpUd7aBtkL3zwTTUhG3N8dxD95Zk3cD4Wbr/5Gn3arxguz
	 VwgOYM8Flf9SRLTDvdoRT7fW2bAY1//SnGQrJ99zbiti6SGnWgI544Big+4x7dxDgq
	 gzUvaaEAQZju84KSvD53ka5EmpKnQRMwlJ/RoWsScNVsTgTw1PSpl5NhNsOHVkhMI4
	 E3H0i9UfrpmNrDPvB4la/3fGo7gAFMM+zeRxHsmBJZHC1CI83STXrXvd8I6qAXOHy7
	 0Z13/fNNcvF6bbd0SKlM9x6g4QmN5MfpW/J2LpGOURTOl+jaKTiYZsm2/TIU6GGW/l
	 Vd+sTGzf61IFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D32BD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527037363.3515.3440376643308937544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb08e829c496fb5b94d562d0e530b0d864e1c583fbc1808913862d22552bf9bb
Date: Tue, 09 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765270373
