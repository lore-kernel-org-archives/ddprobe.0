Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A666314B63
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788596434; cv=none; b=SPyH8nOU301kYhGSMa9e88CmI8LP0E+50omV2yK3vnIMGSPFGON4WYeAtE/B1wAhoXvCA2BlGHmuD6n2Y71/MxWuCrr3IP7SkKUP9dRBsSXCo9VPJgsrh1Vg5GAU3HsF26qPtGeGC53db4eFVtmK/n9KevT5Xi4TfqE4AlHBuHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788596434; c=relaxed/simple;
	bh=qgMim2YkhqS56vkWguSXb7DXRetPgu/QdHBcdMMX0Zk=;
	h=To:Subject:From:Message-Id:Date; b=GO9280Jb0LpdT2aVRBbji0Vd7AB4ukLW6IL8U8/slEznbTZZ0JDX3xeUZ3B+hAIVNezd/5tDiGDwKT0p3sfrfh0YTzEBaPwoqVESgrHlJUd7SOInDFogdzMpv4gFHBN5AhZM6KRP+dYDiIGL2e/17aipVd/QRlMww0B9RIFwvbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAkHeb7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAkHeb7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E73C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788596433;
	bh=qgMim2YkhqS56vkWguSXb7DXRetPgu/QdHBcdMMX0Zk=;
	h=To:Subject:From:Date:From;
	b=VAkHeb7yBerHgjegURvC3VTMpEjs0UuU5dOIWdoJH7a4e9C+umSouZzQepuEyl/PZ
	 IT+VpQNDBueHwozPYw2bR3NckhULOyaEZ87RW9hM7WFQTlvAeOnm2lpDxesLhwKq2I
	 r9yZiR2asZcSWM84qFug9HawPxmLcL7ezEt3NwQH+8+D8CZ5d15JwXcBUtrY/conVC
	 tLPF15w0GhsC/Jp2krtu9iMtOTGJlYApHbaa3PE+xOD93hDORoLGug5yK2DP9Doxg7
	 1ACvmGDk03Bbxf8NjgfyqUR3uP+q/H1t3EYEWXA2v2H+o1/xAh5YrLXroKZCl5lYCs
	 CeFHr4wv0+DQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE60FC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859643370.17105.1289019948641410888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04850f0297e903f340417f47350333c2433abcd2d8ad7d0e0da3314ff625df7
Date: Sat, 05 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788596433
