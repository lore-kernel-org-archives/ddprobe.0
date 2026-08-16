Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480362C11DF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786879834; cv=none; b=G797MItlvJ0oQdyEukUVl8QnoqbSbpAqtEVHy1fMBdwaz+dLNUxq6RPs3QVsK9CpJZrieCTj1wAF+Qn383uJieCHxRwDGbtH5qMbUC69KUY/Ye2rkDNPBRnIVBT2fjVA97nuwLqdB0cCs4P8dJ7Gq65daptJyLOYOaYlnQ1ONo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786879834; c=relaxed/simple;
	bh=RdfOla26wY0cZbxrB6PT/zLIFHRdCjZWCIjHtL3q2T0=;
	h=To:Subject:From:Message-Id:Date; b=tIuJHd/xKjVz1cBmeVDrfmqB2eGFc1BDbwOS0Zf1c9839Cs0xYKTTV/fLC8bXKBTJaxdH6c2xqPr/vosj+gn0rIsKgN+S6LtfVqDKNJfgopPo/5dHTlhxK4RlilTV1UIrXmD/MSK9fGOu7Blh4cuKJcIm5TuK834FPABYfTt4To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK6Nnuoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK6Nnuoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6FBC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786879833;
	bh=RdfOla26wY0cZbxrB6PT/zLIFHRdCjZWCIjHtL3q2T0=;
	h=To:Subject:From:Date:From;
	b=aK6Nnuoc6cPdD1AEget303TgfQD+P0oUqlMVaeAr/KuaCfJT391IbpcYEVGH0JP4E
	 sRhgh3Js2OrEG9WwXPlgQi2RCZtCF30VaLM8mirnVr7sZ01Pg2M6gLAwUfsnvyWb92
	 sJfLea82s0QC9BSEy+BCAOZWy3yjQegxSITbCThX6iVFBsFzzJj/zXtexQt7LE1oLz
	 30mXVeLog6RALrvnCmx8NGDDWphq8neXFls7NpTkyrYZ7PSJQHCx475vjUigiORAMK
	 XgQIBxSjegETk5tHIVg9RCd1g1q8XkF4tMCz4t5AB6iYxcIG+ROFfbNru3Jubhib5S
	 gPyVN0FWiUzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB033C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687983369.6771.11722358584454097431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3c95d7a9fb2d73f6479e67a990150e3968242e0585f409f57dc71d0fe6f204
Date: Sun, 16 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786879833
