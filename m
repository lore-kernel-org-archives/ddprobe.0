Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C29630BBBC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778822434; cv=none; b=Lha4MK4+Z/Q38ONOx1n5ulp9ppI8fzz+gOL/Fcl5c9akBGv8lorYclmOB6zHPmFvVioYr81PuevmfjICa1g5YOwdBgZsYVku9H94hOLgV652cJIgzesmT71WWA5kh3EIdEVI8gRAeS4ekdX7gohzoaNXpAMSEibRwmuuQ12qaVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778822434; c=relaxed/simple;
	bh=jlGyQycHIba6RMelZmWb5cQ8i1lqHCE+hJwVrRMHDAI=;
	h=To:Subject:From:Message-Id:Date; b=Hp4cbNbKfgRV6rKAJfINWdQIJ6ubu2F3rV8hHn4/4p9q32PY0l2eaO5fqwWvF5mLXZah5puYQvss0yDoL/TGWB66M0n4TD9t12IzLIbMrP3BolZyGVppZDPjBx2bTHd6g51X2tqwb8sCxuScgQb1mPz6Rt4j7npPXZ0RPLzSZC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ4HeqYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ4HeqYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B58C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778822433;
	bh=jlGyQycHIba6RMelZmWb5cQ8i1lqHCE+hJwVrRMHDAI=;
	h=To:Subject:From:Date:From;
	b=NZ4HeqYH0cdJhhpLZ1FgEHQNjBk1iDeMOa+mywQqL9HWFezslRk/oWxyg0JiijG0r
	 8160P6/L5lBNdphDiPJXvENxNVPk5aJsPAbsa1YicIXSDeRBO1d6x4LyGEzg4OsEmD
	 FPyHX96IqZbfHVFq3R+oM5WSNSbZ3HINiqLm5XjNZvr/wC55O/V31JgSBh5qJPTugl
	 FoCuaKD2RFkW7oocjp41bMmS6+lweOjmiVhtzuMKh2/3exDk2BiOchH/W79qaxs6sH
	 jX919LeaeXZbnwDK2JZlxAYNDoNy7PQQXI5QUHvsVgZqorAfcrLQr4QRrKNBccxidS
	 1AW9BdLYUy+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EE0CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882243369.9158.13388653903588828770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb29e6cd90a370310dba222e8e3f73132f6e96f5e53afc7d8ac44cbf1fbd19f
Date: Fri, 15 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778822433
