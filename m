Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED203A7F55
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787817634; cv=none; b=RQFe0kMYWhHcbXnbGoQK5tAIrbzgJN7MPKxwSGc/ujwogGGtZfa5RDMWJuY9u0dsqQwsMiRffLGuY7teENEQEXGoSiHEs0mikoq8nT3tS0QO2d/aKpXzKj2SRkDr0nTQwXt3io4M2Pc4eRHS/W0WUL6LR+au2XAAPfoHfbSa4do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787817634; c=relaxed/simple;
	bh=WLdxh3J9QwsdKOPqBFAvM8Flkw6jFDgPZgDXXX0/H4o=;
	h=To:Subject:From:Message-Id:Date; b=QkePRAvLbgtxildbE0oFoKQ4xENCEoqKw7ZvTLVKLDbYPDGMuUadkIr4DUekqpoDIexnzW4r2c/0qlUAOrSIHjscJAWqZNp01/EjUdg1yWt77YjbN7qkYz5L930bg7iTmkU5FU7KDlrigNoz8r06gyei04rpxy15nETEAmypBlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAGO+mNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAGO+mNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1970C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787817633;
	bh=WLdxh3J9QwsdKOPqBFAvM8Flkw6jFDgPZgDXXX0/H4o=;
	h=To:Subject:From:Date:From;
	b=sAGO+mNJFowBBk+xOhopNRYRzzkbb171zBfi1gC8gLxY/oV7A2e6qaDiEsWvwCTsH
	 zuoONi+pev0Umbu1xYr9D5KBnxiSjsj9rF81E2oT1/ptUc4Yfyf+TGAVcOCEN3eBNZ
	 TYh8tioJS2YObhDwNOEVnS8Zzs438dDfGW99pgveKJSI6YFYvZH2qpVaHOrONVym5z
	 wxS+UP1pIOKjUMWYqk0vgLkZxKoRe2SWPJRCP6gJClkZ00MtOyIHhnk6EBh2WWAI7T
	 iblZMpMh4NLlvHllrTt6Z/i8dQsczlOmnwz0ocDQzSneyiIyzRmF76UCO8wTdWhEAv
	 aAyU7R8i69Wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB5AC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781763369.8818.4615005326928030506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4159fa5933e689fc4f58e3aef3092d61d368f68f190b1507676e024e2d7b2925
Date: Thu, 27 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787817633
