Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1AA1FF60E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742717994; cv=none; b=dpvpLYnNe4ZODwjt26OcfBVvzhDtbVT24Mph99MEWAo5nz3eOeoDl6UBl16XUvZTCNwcm2VmVJlnuzpuutqg2PF0hsipmHY/wpn98TJoXYflSLDVcMvDsEli7i3exoaLn/3ozbKe56oaNCj5LPcMpBVPn85esRXJdsN7mDXYHeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742717994; c=relaxed/simple;
	bh=IzXzUTWdusZzaIq6ajOUo45F31pRKQ+ckl3yjzaEKUM=;
	h=To:Subject:From:Message-Id:Date; b=Wo7CzXKiw7PBPqS5iJ03yqeiKYKRpXBSvnwxjT++8nUarwK2BKJuOpd/dINMeYZOhU0pPvEoNBPam78JI7UrY/rsct1hyj03xyO62QBBgCtPMcqNKBhEenkMr+FEkKF1F525GRRWkApprc23u9BylVMVngfnnGacZyI/jeoM4bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8ZD/ZAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8ZD/ZAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E3DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742717993;
	bh=IzXzUTWdusZzaIq6ajOUo45F31pRKQ+ckl3yjzaEKUM=;
	h=To:Subject:From:Date:From;
	b=p8ZD/ZAuPy7Mvi2TGaKFrKe9JFoD7qSDqIIwk1nG3bTkC2j4DeJAaA+Ep7D3nHDn9
	 OCZHO7G4KlB+fOyXdwll7R2ZOjpsXBmp1ZsslVMQ0cUGJQukNCKUBrrOQA+dHKdoZ3
	 FaKsOpnib7Kk6yrxBjablAj8s+ufuM5bNieWug6rVtbFMfHaSvwfeAdTpW3magXpHp
	 WsOss1/+eKHkqAR53z8S67umc62+12lSvsYGEtR98WbClfCpeQ/28C0K7Gd0h0ck+h
	 BTYeKMdZJ34oQRViniuT5mhXwvJkDPGuYL2UQqb2LtCjVD20wfDy1z1e1ThgiWhBRK
	 6/qZ1kKxcirPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97831C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271799359.9458.16417714026242703014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b5c8ad6246ff560323a2b610060bb22dda78548a682492407998766f35309e
Date: Sun, 23 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742717993
