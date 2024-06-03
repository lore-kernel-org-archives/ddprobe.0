Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B97620DF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717418723; cv=none; b=fgPLz3bIUmOOkKRAlz/dGlqGujO59b11m6J7YkqPqZKTOvbp2nUtyO1U8a/y4INi37PA/oINzePP04WdyrZkCF5AFOLL2i6Q2A+1l05j4zQbacZlR1VQVO/LqUlerikAueSYrevWkgG/u92QM936RA/ca3LalkHlEaSsrrEARy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717418723; c=relaxed/simple;
	bh=P6zAb3B5OfZHUuLQawwz6lpC/bWYRFehGRLn/rquEdA=;
	h=To:Subject:From:Message-Id:Date; b=WYeajukkFi/QbofGr3jJ1GZ2czwdheimR7aoE2pLa6qQfmyeQFkMhIxbk0UpXTCahFH3YijCh4kKr7tAkaPaJF/gbMhGapaqc6uKs9R7dkfogsmvz4j1G9ArGo9/KkX2NRYjVoCFcUHBcpGFzIuRereDXWbi3yUP3tzL2pCzE1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUeT81Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUeT81Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD013C4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717418722;
	bh=P6zAb3B5OfZHUuLQawwz6lpC/bWYRFehGRLn/rquEdA=;
	h=To:Subject:From:Date:From;
	b=KUeT81Ldrdr2Ot0YYtTnxMqlQlvsRaHQBPfjt3XuYYdAqZUnBcBwoDvAPx7HMjT1U
	 ugLvCKnlzcgCv8kHez55AA3xcADfrPJg32oqeuzQ3FuiNTDKOkG2IJbJ3ye/JigCsC
	 XlrpjYYJr8y5FSnZnFvaf2HybQSDAUAMPtHgAfzPatleD2PCDxJ0zG3EEH/ty41Q8V
	 BbFRez2fEriD/WFcuR6sAkXdMlvQ/XOat4Ylpqf66/+YCKO482PWXY4CW79dHQ58mQ
	 ih1C3asBGKPAdtumsDH86gf7frGnyp8sSW0qZz/px+8e7dm39xfCMweQXp4cqveKOl
	 4oYcbW6wb0RpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B1BC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741872281.21148.5697239198537229718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62cb6cafa59a569f6ef7ffb7ab988fedf1b43473aaf276ff376cdb0c2756a02
Date: Mon, 03 Jun 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717418722
