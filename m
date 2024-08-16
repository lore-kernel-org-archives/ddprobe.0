Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6251C579F
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723840554; cv=none; b=nQDgWwLNgcvs+DkFoikPUjSPVPvQ0Ik12/0+4DUs1r0KBEZTvbpkgLpRTxgcZA31Tf1LgrjPrahps3hrFuCP57VR5IKwEWpKynnZs1fuDj2xTxVdhoUR/0JjfkEwV01cQTLqu1zlfCbtXibgrukTZ5QTuUTEEyJ8sPnF60ynNg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723840554; c=relaxed/simple;
	bh=oo+dIqc20S9/EMMgrnDugyn8GG+lpZXPirLeRJp+92g=;
	h=To:Subject:From:Message-Id:Date; b=Qn+3N+WEaF9Bi9ssltkC+d8KEFyUj1biA2tzQBfwTUxV0oDsebu+0YJo/24swWQ7kAB1zSosDqhv/SATKZhx3pZ0llakGSS/cpfPAYygCr0l7u6+BkGTIR5tjIALqJd3cvu/UlYSYx79poecp18+OfRs7vjEp/yDCWkmYqgl7Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUXXngz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUXXngz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0344C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723840553;
	bh=oo+dIqc20S9/EMMgrnDugyn8GG+lpZXPirLeRJp+92g=;
	h=To:Subject:From:Date:From;
	b=pUXXngz6Nw8rA3UQy31L+8A/mKrj4hut0/uaI6pKSMNap1vnknLSgM/Y/uy8L6HM+
	 1q4gd3+O39RDms/aPsWbpwiqhHDcHbjauKLq9rbZh827MSGAt5Qta6895Qji/aEUX1
	 //V7hPZ8f2p+oOoYMs1HO4mpwlGJ6joaAXsquz4/e74q+nHAZd+YeZJUe661RzmAOd
	 UnS8BJRC5kCUcSCDenxCuBplu4IDH3VLDc+5iAF5iTZ9XlCFR0+Yses2bC3Lasommh
	 sutOobKlYnJK4vnUls4cu7baUR7TANQxwhPpG2ZZcHABL8cls2RzPDS2ia2QNn0ISC
	 TWEPJHl/sVXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC0C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172384055359.865.5273080298909791812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cd9a28573f265884a03673eebb621d3ad5a1b55eb7d8318090e9d16752f749
Date: Fri, 16 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723840553
