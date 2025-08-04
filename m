Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7934F1A0BFD
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754338794; cv=none; b=qz0yomXMtv0T4g7R/qKbnUZk1koKimYc6JcfehDdJ+3cvQmrV/VwVW7kV+bwCBupPXCCxiI2AkukRKltOl9KvQ0axhcniYo6K0QROhDwqH/gy3JXL9o85l6hUn25sV8nMKWxqiyDTGrKv2VFeBps+8PUFsIr65gEm9+gF4w9aOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754338794; c=relaxed/simple;
	bh=sEaxIh6hfd7BwLk+wLq7pfdIgx1BZDgIjZfwxCIBDnk=;
	h=To:Subject:From:Message-Id:Date; b=BgZDaXdEkMG5TA973C7T5rr9nr6QYg6U0omGHmwX1oHp8wCFITMJ4vK8uw0Q8B8eGAwDqIMCXZznMaqrmgldL5HfvuoLLh4Qg/Mhrr7QVN/XsnxHzOPJgViOVG9aF1jjZG//Uko8CDwC4BKOxA4BpRYUiMayrnIqfOzPktEFcK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3DjKyQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3DjKyQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4688C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754338793;
	bh=sEaxIh6hfd7BwLk+wLq7pfdIgx1BZDgIjZfwxCIBDnk=;
	h=To:Subject:From:Date:From;
	b=p3DjKyQ1oVTQ2d/DbPwZ11Yb4z5NbrcKGNNfzgdRotE6zVA/20j3ULyjkW3fcufTH
	 kEuh1DhI3AcNtK930KjhIzfDk2eLMxKkGTMS+9a93OcjaqyW/XYyujGWqe+RLgfAxL
	 j3osmOojhNYXLbDVEkTXjhxhPYf2k9ECOOJLaerWRPaeVnJ51+8ux6A69wnQSxrGJT
	 SpmZ9AaOcakI+ttg6ylPzFVLJtKkCvkhFBG0mm6uPZc+jGiMczWL1WWSILmbn70nUz
	 QVWhTe0OpdT49OpK+WTreixt4cE5SA3WIdLOPFX1/ZoTME+sw3upnO9ssRKBr0VHiY
	 wLBXTVFTLbN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95798C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433879358.1688.8582367259760654270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba00713c8c54ce3b4946168d592d8f26b8307e040ed18cc3cab339ec5db451f
Date: Mon, 04 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754338793
