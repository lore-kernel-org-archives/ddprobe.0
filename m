Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2025C2327A7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745618994; cv=none; b=IXRs7MB+8DrzGuTsu/SW3QqRpEo+LTOG7cs9RXZZMD4swTZB8EVYHnUGyp0/OQFdlfRn4XemUKsMu285aInl0rnik1W0+ooQfJFiwqqFPlvhqGOTcHru7+xix5psIpwa0mXMMX5aYVtfkWt4OsqTPWZJX5/PogM2wairslnORaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745618994; c=relaxed/simple;
	bh=jl3A46JXOrJ6IE28N3KdoSyP+vgfijUS6fjzBdnF2jo=;
	h=To:Subject:From:Message-Id:Date; b=UuHi0P/9iTydC6G/GQpisMF4Gq4w06emjOizGUhA3vxz4z7swgKFkwOXMBfB5qlHUdaOO4P8fjy4q9Nf6heF0HN2Vp6sgGFtbW0p/F2gtkPfH3e1xQ51PFrB1hrrRmfx8hdXbxemVLeTfDsg8mfzBUosqfFObpEYsQAFePCjVTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLqa+gWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLqa+gWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E828C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745618993;
	bh=jl3A46JXOrJ6IE28N3KdoSyP+vgfijUS6fjzBdnF2jo=;
	h=To:Subject:From:Date:From;
	b=ZLqa+gWEBKFe8VP5govlPDDI6U+CJtTt1l9HVu1T77vhFS6huR9I79/6TO4QA7idr
	 RROrRoIZfWunYOlOK0wNZEmW69eqIV+Zesq0HRuVC+P49ed+PKJUhIpNXVZS03NyWi
	 L8a0bo0J54B5GkR0gdMdf0F47Z/DB7YCgtVQNK25arsSzjZb+KtJaXOFvP0ubiAWYn
	 Wyk1ZU6kclxXunGV6G5/nJwnfEH1dh0gcI1Adi/fmVdD0IiVdTsiBZSIRVuCONjMhR
	 tcHva4Zc9EJgFBioaUj3M7Lt+fTbiVjU8sHrAWPo2+wuSccy0pdw47EZu7NMQ/fqy3
	 PwrcQSYxu9amQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E950C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561899357.17733.5970432411741140268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e40162fb249a6f768ba67c41a948d99942e075bfbb2872db303a2a7a774175f
Date: Fri, 25 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745618993
