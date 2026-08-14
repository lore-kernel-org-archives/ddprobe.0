Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDBB3B42F6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786718434; cv=none; b=HizAjSH7yGtjtWnU46bmtsckci/IH01qIhS+qQ1NOTmmaQ8tu2648Gow6WPVrLZXQfOrND4fmiBShpIE53GxFSpdXzJZ5iS8RFRKkRWWjIVwUw6zo1h/lVmGrvsXnG+x0/HrY7pUFTaohsqyudikLqh8wcpUmRXFvHCB3dnX068=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786718434; c=relaxed/simple;
	bh=AetDf9jlA8rSjJtnR0w0X92hst7PNft26OWwJh2CSl0=;
	h=To:Subject:From:Message-Id:Date; b=t57EzU95HBon40O8FtoMF8JGBGLe/pxHORJ2NY9tar9iKfMJA4L5SEwbZiGQbaNtYgQ5g+Czd/dtoZxtlEyD9AcVHkvEaHaVhkThJB7rEJiMkrQxWP6BA9+wR5WNHx93LGCsRJPRXBx1HcOiO+yH+39oeFhxYUA6CKK/cBtrlEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg2v9eKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg2v9eKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D75C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786718433;
	bh=AetDf9jlA8rSjJtnR0w0X92hst7PNft26OWwJh2CSl0=;
	h=To:Subject:From:Date:From;
	b=Wg2v9eKn1fOj+Lotf7MnSDQIrq++gF6bsLtN6uJE5qV5opw3bIn9fuCrpFgS8hItM
	 bftL7U1n0t6lU7MM8Yd1FvCIV9xqW1imQJ3KvT01N2gn5nQmV6wib3/va0y1rEh8wZ
	 FjqcPcbFaCHT+jSAB3CpVNZ4tAv2wjeawbeISHqri+jP11YFhCs0O4TMkKcT6gBqC2
	 mWqG2b9aCrvlIAKqM93UpXXn0PIxOetwCpgpvcl8sr5C6QiE4qQZ/JbZf8/GYEcW9h
	 u3pCqhz1SJ7OsLkwshsszVzUwconAxYBO1Wk+0l+8wFJNGFUV+5FwIFO114Z3A/Av8
	 zAAUWwb9LAjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B65C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671843368.21252.12828482209450167478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c0f4027fd6514ae1e667a57793ed702648a4d9b01e5ea5d0ffe4f25042cb00
Date: Fri, 14 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786718433
