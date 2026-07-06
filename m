Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376BB1CEAC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783313314; cv=none; b=KoDvyUd4APUCiWhMmeZr9tmnvDPX4Y90eKesdhhxIKdEovajCL/hAIwzLQ1EZoObOIJ25voWCM7emU5UqxgFHajhdQj/Z/mpkp3t61IgeqFbiJEs3UI5TmHCANdy1SPX1uFd5J3Wa+RAf9Kgvi6UtboL5spe9QtFz5Nqs9twMB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783313314; c=relaxed/simple;
	bh=JFYTMI6Q7WvYIR7VcVa1ZuUsHU5SGY8fmBJNmCOxQLU=;
	h=To:Subject:From:Message-Id:Date; b=YkgjUkK/BOutuyMv8pzPt8aieTZSNIOu9DRI3OFRWliEOEWVyD9+O/FDJkdvXsXAAZUR6/5gHUBjJkLYsdHGAdlLuniB31n0fAESUtHQbUisOabv4HgaWGnwTpSN9TLCRUEG0fd78YIAV1QFzjcTK5U4lnvv1+S/iV9snxZJr/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqqoeGGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqqoeGGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06A9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783313313;
	bh=JFYTMI6Q7WvYIR7VcVa1ZuUsHU5SGY8fmBJNmCOxQLU=;
	h=To:Subject:From:Date:From;
	b=HqqoeGGoYKfC4wNRa3tuHzWqaKKHtO1GhgQj08oZTGW+nx0/+Tq0WQfJxnnq3C3WR
	 GqCH/2uYgs+AFCkCEzra4Fd5kHra1QmW6ytfJDfOHTDMUei2cFPTx23LjRErlmdpeX
	 26r6PeUdjfRO0ebXUamIEjWhGICma4brBNuNz9UaLIBWCD1KTYOe5DCKoS2sr4yQXD
	 7TM3hMCmx/uhaPSVQByQCcFr5RCBKCXv/7TDHj+cNrRlm51gG4qzMN0E4AJMSaqxgD
	 aDKX0+b1j01mGz8+CGWca2t9aAQ/zTDm8vlEUr8DethUTBCuK7kn69PdZq5B/okUW/
	 fSL4VUy3VkSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC076C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331331368.31202.13554790404026981446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8c6917207bd866e295f746d8690a15703b3e8f80ed8ca9484d7cbd4bf2618d
Date: Mon, 06 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783313313
