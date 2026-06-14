Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F442EC0A4
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781470594; cv=none; b=jLDU6mDzrcCTLseS6qBhpH6GsfQLbki/9y0r1VVImXXBIe/b1UC+5e6oqC0oci6KGC6SMfcds5+XQ0sClEJHm5aukZkUw0Ona6U3Jo6t+LjgF10Yb1ObsZmu8IXGUctCd+/iC274o77w/T2l+4s5r6dakGWIbI5pc6OQbFVJShA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781470594; c=relaxed/simple;
	bh=sWpihz4qOGiX+CODjAnMm9y+Bp7WKYPF9oxLUbZBuKU=;
	h=To:Subject:From:Message-Id:Date; b=s2+/eGe1b82/+6JuGr5PDjDXn27bNO89v6lWXhdDKObJoEiT1uvDbDIT776+iiJXMy7sVqon47zkvyy5G4Y0ZwUWuKI0Wcqtv/EgX2OyLVGoQC37hX5/PuwUZxJF+swHH20rUzBcTsZU/vPJ36FG4TB6wGlzdaCde4+t1/jJAt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJSCdp2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJSCdp2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781470593;
	bh=sWpihz4qOGiX+CODjAnMm9y+Bp7WKYPF9oxLUbZBuKU=;
	h=To:Subject:From:Date:From;
	b=NJSCdp2riK7loS1ZBiGcFKeOFcFCfXrzqCAjQwTE+VjZha24sizRZjHvaaxvRuEsL
	 OuBj/KmVujYVWFbDVg7wJTdMtHjjZXk85t/MuqMV+YtsQB+6gnHd7eMuhJLh3+xFFc
	 AAEBjn9Ttg7D04j2mK3XzxwnmpF0APdV1IC1NJaISGDWVFLBMh/P9wnGIw4E+VDV25
	 HNvdd3LLU6WT89R6C9jFvraOYTetD8CR179vfLa7nSx11KSPXwAg5Ps8GFWOYLLzvn
	 9XF1uv5zqnTPs4DA5Epq2Hzwj0fAbcZMAA7UvjCvbAeETffE20u7t/1LV+h2AOX1B+
	 YetSyUvjrYtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF49BCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147059370.382.10487334928151572317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1bb4db33b8404a434755db464d5851506ce79c73ff28fd6562c0b0479fb84f
Date: Sun, 14 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781470593
