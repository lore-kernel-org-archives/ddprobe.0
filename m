Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA7528CF5E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752653394; cv=none; b=tZyhvrKyuXoEOwi6Ny9pPWfSZwTxKZmtKBTQN1B4VExN0y1EqlSZuEG0LShoLRU1lAW/2ZrJaRltMO8RwSKblx5R7KKrm7ZvUqgLqZazDe1d4oZ/JkU/US+qKoICaIMI+sohXEvCaNuaEXllFddR666YBejNAK/4XAmcAAZwHuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752653394; c=relaxed/simple;
	bh=D0BbYf3yOSKxQfQBSimW35qfBsM032mvOD2g/HLzjbk=;
	h=To:Subject:From:Message-Id:Date; b=aOl3PKg9VVzn+RcGII+q4ygBs0yCK2V46qH+AUuUQO8eac87mnYxgbLLDgOwsKyewEDhIU050nHtPmTRcD/T62QBjK8Q7OhVTavl8Vdzgniy6LT2rheBaq0coYncOTjCAQa56vTiBvVNPwnjePAvVs2MEddFasFTRn74NYEIkzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8NCPZk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8NCPZk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752653393;
	bh=D0BbYf3yOSKxQfQBSimW35qfBsM032mvOD2g/HLzjbk=;
	h=To:Subject:From:Date:From;
	b=E8NCPZk66nxcj2+S7NiOkyc4WbxS5gcCChLUGtpPmHiT5zhQuWjrfy00W5j4u1hGa
	 ECMjtajtmylCj++2kCEdCzAn4VIloNosfNdX/kgy/6bj8jyvwav1JfEvWaD8jBO33i
	 /oXPeBu+PuAXJsrrs2QBCn6C0qNO2MzMoNHkeLF+7gEbwMcmpGJibYO5TXVw6GqJUC
	 vGSV4ktjMvi31QqIESXezy2DlccfRqYhkA559HUF94L0uzoHYh5TIrcMzVQ+uCp1HI
	 iLrCrA1zT41def+W++eTFNI7LslmhUx97ptvMhGzYWlvMA4vBCADR/EeOFNf2BrQSU
	 iCnoXtgn1/Kug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A5C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265339359.11627.16999774419413317881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23d25b62112abcbdf7fd6f0bc9be516c50ab7d496201dacb935b1727c2a5497
Date: Wed, 16 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752653393
