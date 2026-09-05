Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512881A9F8C
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788640234; cv=none; b=mE7xZoVcIWBrBekFYZM4LxbO+ue/RXBtMA5AoTLO/O0/48fuLsYL4m2TSzyJPu978o8+BGscj47CcwRlup5nB4tQAB8nTIMbYGMT5aP6OddJ9CXoTiNe/rElymi3BBSvR6fmDUspSbWLzVDbLTuVO0DQx97bnLArkbC/FcfzClg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788640234; c=relaxed/simple;
	bh=uuRJA5XWsQGO46X5loGcOIx7IgJWx2Uh0N/AnLPIK20=;
	h=To:Subject:From:Message-Id:Date; b=Y6vWS/l5w5FT1Zjn1OSLd9S8L3fXvx5PWy+xLkRhYp1pjsroT9IhTD3P5SdiNWhhEXMIc4kDHOQLDW9xdZqWo4U5ovLzB2AzvEEkRhzvPo4mYIqFVH+qDlJAYWkzvwCAHlw3wW9HcNCOuGh4DzNU2RvsntMSgO+ABbtNw/Ib+C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At+u6LSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At+u6LSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19FAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788640233;
	bh=uuRJA5XWsQGO46X5loGcOIx7IgJWx2Uh0N/AnLPIK20=;
	h=To:Subject:From:Date:From;
	b=At+u6LSxwUWJCyMARjU2Q1D28i1JLj9goHODJUck7G2ZSXVwG7NAC0wKRXxciLTtF
	 U4NSl9DsSaIVXT+NqfGpUSS4GLvFM9bSGOIKYu3uFa+wtPPrK++KnMtkvDOKmGIoGl
	 mkvQGY6M7ipOhT/PkbIRntLnST0MWAQB247eIhnhP+Y/SwB3SHK9txM847IcYrUYGk
	 BMi9vpuLauPdodFXpdrDKYAhRifiPNThAap6FAdqmyPpwUEIb2ZPp8yjb5uJhect7o
	 FJASs3KF2qQ3i2M1eg7kot3mWqK0UMJgxDg5Htgh80R8gbBBlwEsHnbFp5RxYD9r54
	 TN/rmXjE/X4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3D3C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864023369.21388.16824773124643848518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a0e3909a8b7cbb762d55f7100ef18a9530338f937b04f64a347a48539d6597
Date: Sat, 05 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788640233
