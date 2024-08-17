Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E3B13DB99
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723934154; cv=none; b=CdxbscutoRrYZhkyvLhwiyQd6OJmgO/inVsUMdLJIDr7mpnRNRu/ENfMneIH/LhddBMe21/rIRQxet/Fd9Wo6pxo8JLsOQ6sYM5RGKKI1Eq2O0As4p3ShP/k2NhbV+tPFCxvreWX2LAC5I1Px+wgm8mIGwipsJAAevCHxgM3L+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723934154; c=relaxed/simple;
	bh=r/Aa0PsbDhnU4+ibLYGtNyWnCthCC+cDIhYRcSjxTuw=;
	h=To:Subject:From:Message-Id:Date; b=FNGAAaFAZEMD1p6PcF7izW6JWjaHSeTrD0PoESdvH5LjvtrniZ/ZaRJrOX0hVhJFpStbnUogKt4AYeVdzMQ65B2pbnohmmmDXFDV0q3VsEHwKvquoD7gReEZ5jseR4otN1e7ZZw5Q2KdRQMaVBc8VoXAs+jmKOfnxTSx2hXlwF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR+Q12br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR+Q12br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37DDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723934153;
	bh=r/Aa0PsbDhnU4+ibLYGtNyWnCthCC+cDIhYRcSjxTuw=;
	h=To:Subject:From:Date:From;
	b=dR+Q12brUCRuBpr8MMI5Ahml9U5/sieshGW2s/EE6DNrshzOo978qXWH0USlOBxZP
	 udapQPBzIm5gMZNnVPE27Y9DMWAHsEzLDAZoWot3+cqVwKy95HRIf8FuMPS/Fm5n0B
	 wHjMluhsvr0bshFG8c2PxlfuOmtjx5uoIzEugprERT3mfzqCCAL4e38Zp41hoVx4km
	 a/V0SAjngoES+7xd5s1ouLRXmQ29g4CTjrAukTYEkUC2mdF+UtyaSD9M8qgB59vD61
	 p629xACwt5ItSy4Kp5BjPu3Obj9U7QOCmQ3B3fV3RE+5Cyw0OeB/mwOqB4ULoJcu/X
	 cFTogG3rTJreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799EC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393415361.29573.13072520317076704463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a131341fe1f150ddfe3154962384f6b688b1b653024ec9c242d97f7d1f3dd05
Date: Sat, 17 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723934153
