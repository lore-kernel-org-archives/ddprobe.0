Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C142931FB
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787406034; cv=none; b=DOWKyP6wB/XUFjPskMgd4J6mfMnJuEiuV8yXuin15Tv7shYKSoc29MxrEa+QIyEi5/VpgP0AKGSqXGpDWaai+78m/xQwDq3RAg3nf9PVIXTPPyaQ/BrridLoiTPWamquxsJRYdJKQ94kINpgsN5l481UC8vj7ayqmrJaCr1U93k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787406034; c=relaxed/simple;
	bh=EbxXsBrgV6Wmv7+e8BG5B3FeuQwOWO6jNUOfw5/hUD4=;
	h=To:Subject:From:Message-Id:Date; b=iDEPduomNkAc0yxnEz9INv0uqDEjl4eXaLUFAH8/yCJtZHBG9ZwJFtPx6Aj1Tp8ZMetLJ+KBcN/WavWTBpa3LfU+WlWKP9BUwZ9aJeeYE/7fC0vOKx/LHm7kflseUB2lsoZ0B0AekexJo6hSRXRUUhyoyoNm3CUcgk/yt94qFe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVlnfBnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVlnfBnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D790FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787406033;
	bh=EbxXsBrgV6Wmv7+e8BG5B3FeuQwOWO6jNUOfw5/hUD4=;
	h=To:Subject:From:Date:From;
	b=kVlnfBnueQvuVVWonHPr0yoQDfTz2FeA02GK6HWZf3A6CjuDuPKuFXQWnLngZsp94
	 RX2ruJs4yfCYGB2wxjMtBGIqQH8Kh8XGIv9XlYk+T1lu+fKny/Yc9JcVsRyqmFdhEJ
	 BB1k5PqPqkYy6vP2yTGFctJy2rGtfzMI0TCzWUpud6XdONcwBB0PyvNd7MnlGWwv9n
	 xCpBfz2jeo/eMIYan3n2oYS7VQ8GnviByP5IBoNYgTIl/ylH2Dqiqbw7EoHgO0c7Nm
	 CrYHJuDfm13OJ9dgWW6exTxiRXHCYWyTcikHjSID4Tw1rjP6M+iS+OVHqP2JCEA5Qz
	 io1FbQFB9H8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B7AC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740603368.31257.14385243223348394075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6440d54bc3893183dbc2e2c1b025649727f828e07838996197eda8a24e71c6
Date: Sat, 22 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787406033
