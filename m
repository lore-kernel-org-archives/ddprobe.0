Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A69D1A2393
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750651794; cv=none; b=OcP/qdWo7HLcKpTFrnQLg1Hu9GArDiwCQxWLJ20uLqIrt7wO6n5DWtJK0w2ShJq7A1fkKd4gRfeKbt71kbmhseAizjTrf5ZloJ0iZOAKUc6BzzdTtscdpOjvDIhMemK/pVE69Ujwpm4owPByi333G3R79RSdLkuo9aW0nQqTFI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750651794; c=relaxed/simple;
	bh=4pVDMmlnQg0Xw8Y+2R+k7u2I1AnUX11WO9jFPhMV6xs=;
	h=To:Subject:From:Message-Id:Date; b=q6J7aw/8mBGSeMgIrY6mw49ss5Rfwe/FiJMRjSZ/Y6UjeEGckCz8AEKMEMuVFiWGKaOpYELKK7AygZRXpFKtr7kKH9lJEJY368RRttCNtV4js1jsFu0PBCeQnLi17UZ86v1b6SDKIFylwtokhawmbaYvXMZ7S7jnrsXxwkgfUbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+Qo0h/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+Qo0h/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A786BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750651793;
	bh=4pVDMmlnQg0Xw8Y+2R+k7u2I1AnUX11WO9jFPhMV6xs=;
	h=To:Subject:From:Date:From;
	b=t+Qo0h/LUnN/jZTX9GmsnNlkbmN4BisTdNUD3hmDXi1e3L/bJZgeuGJkzXuWgl/hG
	 7V5KNsvOydkTYqnvEb9r9RNsqxgBZuMwyrERKnt7rwmhFpzXTMS1SqdZD9u9GU0TkI
	 wffudq7bi6yo0NRkunkchwkKK/VOgoE+22LpyuKbcj+Bc1afBOffSZhncuAhVPAFEj
	 VDIarfWBE+A4Xu9QPw3aqu6WHbAr4qjUGDJjjh+nYFpZOLRVX7wnLA/YD9grDOfmJr
	 iDygLQCMZT294bCGp/VFNbsde5Byslnaduwbvt95ULgoP4/KRHgbG8xl9k5KfDxM5+
	 pYPl0RnW8qUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D3C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065179357.1636.8132752419609096862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073e5b0f68de9497a7add92a3c6bdc41b14a655b3dd5bd5afb9e90c4c06cc5e0
Date: Mon, 23 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750651793
