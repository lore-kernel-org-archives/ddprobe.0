Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA332433A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752037793; cv=none; b=chWHOXHexoZCpuGQNDNqQ1SEw+Q/S8VE1YgGB1c+C1v2O00IkrIdQ5m4e1ndU4fuzeMK9GlDxkntfaAVT5rWkpb6XpJs5mYu4zswFYFTK79fmbYP6Ae36fiXwLYjoQjHwC4Y/orBH5q7gFgSmu2NOKVaOVVOfx966PFy3RgynJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752037793; c=relaxed/simple;
	bh=rtOBdiLu3MVf15NzSxuHg7AIHj4dyfi1lp/TKbkS63U=;
	h=To:Subject:From:Message-Id:Date; b=SQXg9K5El8Gq90oWUpxxC0KYq2vffjTXmwEVNRdJ+zZaliHFE72FUsFwrIaDGgW6rWzbmt89KaEu7A7XmjEqfMTDFm/E8Jyj10c/5M8IWV3qQNEf/JU4ffIEIesoAfhe00lgTwislNOVMMbH0OkeIaccpfc+K4PQrYLUMxwgOBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA20BmQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA20BmQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC42C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752037793;
	bh=rtOBdiLu3MVf15NzSxuHg7AIHj4dyfi1lp/TKbkS63U=;
	h=To:Subject:From:Date:From;
	b=tA20BmQipmNkTayMtONe/oibeOdFATEzSR8jIUYz9ZuJ0EkZZJOnF+VrRUBjD1XwT
	 JZ34R6gUS7HwVNeeH+PBL7B6x+91WTUkQ+2wzRQGgJg/BZFlsxq8TZayQGgTM8UUcP
	 vrIhwMEJELvEkV4g8fZFyVb8Gkkix75scvLSPxANG6lHz3Oe/L61HrYfXPItHCv/EP
	 JKVQ4pcmCNDuCS0f8E2GOaD70EK5YCE9n1iahmO20Qot7e/63OWWEj+GQoz5FMUEO5
	 ug2uYpeW9REUa9srLZBNzdj/ns/OyyBiMSC/VjyFsjGlI1c3T03b2Dhz4GKUT2OfDD
	 0B2eP8SFLlJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC58C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203779358.28226.15866340530443852025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3444dd3eecb50c31d50baeeaf2af08d11e8536595f7532430567f7ef1d0f0939
Date: Wed, 09 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752037793
