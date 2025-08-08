Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236CA4A11
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754686194; cv=none; b=HL2P4bLAfsJkxmQTcVVjCfNhl/P1oLqMUJG8OgiqI6Cq+zLUG8OS8CyYuwAqO408TIdCxtS0fy7QT70cozmMIfw7vnVjUcNTIpyYE7qP3Jeb5OJ0OGNrY79ZEeYUkZ4btqDdUtnXniG8DK90oq5pQj0rwyDIBzyxa5reEK3GRs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754686194; c=relaxed/simple;
	bh=gvolfORp4U/tE7TyWdZepi5vr+6zLEMCMBx2WMqszMs=;
	h=To:Subject:From:Message-Id:Date; b=qOUimOsB8f1UiPM36YY/igMHd8zOJ7o1yHTyy3Ih7gRdbLRl8LJQbXMLLuI91zQwSw9tkGsObGuF/eDaRnYn1fZm5Dq34IF91fVs/FYTVS3rkJLUVj1RI19zR3fEXNeWexFgmrNKTtfdsh2Jxa2SYvLvhNb+8RuT1n6Qig37UmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWsf86Mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWsf86Mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754686193;
	bh=gvolfORp4U/tE7TyWdZepi5vr+6zLEMCMBx2WMqszMs=;
	h=To:Subject:From:Date:From;
	b=SWsf86MoZm/U1pYe26ZZU3vN3SdRx4+F2Kup2BAwBL/KvbxX4SPlxgWQGdQiZd+QK
	 fgKzU87ex2uDTLB+iIgdm/ePdcQ32V8+NMNv5ULfP5v3EVT3HaE44D6RtC1sngjFMZ
	 1rMGVp3oWq/x8F9DLmyiWLKN/iZ15/jEgLP0e8AkWMngjIUBnCdsn3yGodOuQJfEFT
	 5aMxrYvM5jjDlH8pCs37Cz7EwPRtDaF0Y5a/WU7N2/u+2uiQjzdYxA7d8h9yKvscW3
	 SCwP0+UfA/6mPBoMl8nSZKPO3WdPAqN7jI/6fE5+70DjvOokGFKoJA0Lk/50GCScMg
	 uRgx3StanHJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91890C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468619357.9320.2693418102967802445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b358e0a1331d51fa3f5bf988073fd8ca672c48f2378b8aec56cd31ea1c7eaa4e
Date: Fri, 08 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754686193
