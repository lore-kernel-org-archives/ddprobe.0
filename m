Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15B24B29
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734672354; cv=none; b=gctTTXFIjgWzstzK2uFqCaqFmLp4ycYoTuvvgXI4kAkb59NqcuDD7hnyHneojFkF1ABemXpbqeNHtb0wlyGcYQgOthgD+9Hb2eoVnlUctVYSa4tU4PmxCgyJ/BPVzIjZiqfKqkUopjHo+B98EWZrB1EZcDzkmLkZ6frnlgtvRls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734672354; c=relaxed/simple;
	bh=2qrq7imESrwcjZA/IiQhOdbCLFa6btw4pcjLferVpuc=;
	h=To:Subject:From:Message-Id:Date; b=JOT/kzBSoJyyYo0E9UxHUQz7zIddJqp2bfrXlkL8EYMJYpiJhK74Mi3sMPE7EczgCmW/978c/7qep2NSnBzrzIoLcaAvfg12bJmMbphbQAjnkQ9xXi/S5zmSMBUUSOEiCfRxXgF55U6JQJmmAPI3jF1MwlHG9oCuSlb3FvPhvDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2EDE6k/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2EDE6k/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D1C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734672353;
	bh=2qrq7imESrwcjZA/IiQhOdbCLFa6btw4pcjLferVpuc=;
	h=To:Subject:From:Date:From;
	b=G2EDE6k/XDiip3Zfmruuma2NlX9BiI9Fbzv1xFO7SLKApuCMvrnYACij4zOZbxDNm
	 c2PAQs8IioAJJUcK+U6EXMWhTiNb7LiRya5G1HiR9fB+ggMtEjdWywfrxjOwD4kDi5
	 2Q71WQbxgjZK+bNxpqCetKk7NmhJw0SIqw+k60TtwiITu5jl50pinZXxsB0JcnTLPu
	 uAmZuN1ZS90KOu4uK08CAtionEP012oihhAkZEyQmYn2BowI1NLfCIHvr66JuHoaKs
	 0wI+whxqxhmTS1fX9V69S8lTaGl4AclT2PuIY2QK3pCy/7SX1fWl+r9x/CFI6BCHMt
	 9tBkkWprQNZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105DE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467235358.13771.1911651415159720645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddc57373cefc920f40dfcda0c7ed5e6aed25f320d34a49bff1ac623ebe9437e
Date: Fri, 20 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734672353
