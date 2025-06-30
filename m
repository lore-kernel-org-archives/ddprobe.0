Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A3D2E6D1D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751309994; cv=none; b=AHQu+5iZ7xEX2LLOLclwylLeNXjL5oX3SrtSjeIzsDCUZoaqEL9gWUqw1lgyMpWqdDizI/nusg9Qmm4UhiIfmk6XjmyCczfhrNQyMh7A8DqBSr5BTIY5jGCyAUym8Po7iGyG/ir/S2dgqJo4zqvBbrZDNFC/8prv+2M+vSfwJns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751309994; c=relaxed/simple;
	bh=SPhGlaZrRObrIU45xWPBrjEATHuOaOLfYzBDjsCGTzs=;
	h=To:Subject:From:Message-Id:Date; b=SMRZEaiUSsGQkk3x3kDiv1uPAZFwi+sftCbmf1hzTaOQ6prbBU/Noo3qQDRfEsKVX9NBeTUQatkS2I5qvVj+cp1gaeZDjcTf/cPRc+3R2xSTIReBV6aGdcfCeO/7IO1nLCSDNx8ix3QSBGcPNGyafk2iBaXMF8oiS0uzLu/miYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8r7npZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8r7npZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751309993;
	bh=SPhGlaZrRObrIU45xWPBrjEATHuOaOLfYzBDjsCGTzs=;
	h=To:Subject:From:Date:From;
	b=A8r7npZG5rXfZZFtMjBox4kmJHiQmzgbvpITe/cLyQ2rn6mSpH4Zzhg2BwRBH0sDS
	 o4MmxZGoY4nThZhcXzr+JKwh/8FDOjIrLJ0geECmLbFr+6x8dyS9HNPP9UxbTabSNQ
	 LylgZtlXo/2oE78rmSTmvmMSm7cKCP+NnBozpv4eFNhPJQRvB2sxR9lAohytLQAKYn
	 9gH0uUz6vzOYwIABXq0Wc5MLRexl7UX2q6ST2ogLJ8PMWP0hKxG5qaMUa2b9aHnYpQ
	 CxlVkKKEJ2gBj3JQk25xLn4YuJqalxhuFLkC3Gs88eLG/m+2oDX/njxLYo915ajo/k
	 m4AJkmnsuxhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114BC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130999358.2098.837286648275919448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d107253ffc3bb71b6f9bdd047c393dd7c4887263413fcbd23e136b732b4e8c5
Date: Mon, 30 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751309993
