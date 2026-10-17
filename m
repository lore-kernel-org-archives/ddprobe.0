Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A95D3115B8
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792221034; cv=none; b=Xy1A8DJk0L0Q8MXpSLj9xKfl0txSs+ZyTE+vw3Uo7kDlkstMSworinO//vCX3QccHTSuaqwV+T73WGWadtBPIPFjgO1U2JvdvOXsaQ0DlrvHINroKlJWOc1iyBZ2KMMOSvEg62igk1iFJ0aFN5TizXu4qTs9+kKXsNVg777LWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792221034; c=relaxed/simple;
	bh=YKLt9r/VnnTHu7oK5ODIR3PjCTq2vvAiZsOmtXmXVKM=;
	h=To:Subject:From:Message-Id:Date; b=GrwueF1Esil3n4UcN03UapLW7QkEmxelGiHf8cU7PIJYhlB0LYssFq7TgPINtxjaumy4Tj0yDwBGSVQS9inGZ13WHLoXgjFEPVrv+SXPpWql9P+6tPIIzB/iFWQgQJbNlzbnEqgEdkoN7JumBv/RRjVZDIq94wNt6BgwD/H0/oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbENsVmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbENsVmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FBCC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792221033;
	bh=YKLt9r/VnnTHu7oK5ODIR3PjCTq2vvAiZsOmtXmXVKM=;
	h=To:Subject:From:Date:From;
	b=HbENsVmOtYSeZAE7IMXK618wZr2HR+3QD4F6zpzHccInR+iKS1SK58U/6icj1bwsO
	 b+fR1s6xq7aYMspJ1iJ0anrQqDkDeqtKBRhiiziCLHCS4eRcvGHOx9qWxOFBiaHsJY
	 81rnN++HD+lqgdgJSvAWdMjLoCRzjldxxCYIqz4aBczQ7wQQXCjJHktJkiUhztg2TG
	 tkmIfuRaOzj/53XchyI4qud+vCOt2L8fSSHoF/f61RZR4W/WhbrhZ5nQAo8tdNktLd
	 sev3haDmv5mZgnFNpoE4bc84XZVknMzxq8VReWg8wmKNFb3+F0F64pWKkNxBT2WCGj
	 Byp3soSk/kBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDCCCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222103368.21883.4346943945968888598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1b4aab5a3c40fa47564653015b2ebe3896c2373b92e808b92cebdcb4c391df
Date: Sat, 17 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792221033
