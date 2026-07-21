Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE7046C4A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784649514; cv=none; b=m/tUoYg2NDAbs3Z7vbVzMpzwpWlSuQPyBdCvgSO6Q5+AhWqoPYpmvlFK1XnwLei/tq7rsyS1p2oj9usBRoKNLhHWssn0VfVedcpdW7kg5CXZ6pSh4lL/Eqybu6i/1gFgsEigthRQuWQzZN1w0YqmtAofhxtMVAV14Xs3429lcN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784649514; c=relaxed/simple;
	bh=WEtkTKT6m9+N5RPfrbNmYP2LODjhYIECK0LEV+NTov4=;
	h=To:Subject:From:Message-Id:Date; b=BuboQ9ynkgngVec5l65BlhwnmftA1+F81G3is5Obf4hQ5uHpwLTLCsQxO51R5Lm0W16GmGKGey/KlsJLr61gAn3eHcS8jAwdHfFVuh5qDHZewLFUqFmO4nHB70MBlyuHuyqU75HrvsoquCRvREqfgtplrccRSOA1tOf/EGh1hWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkQV4TDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkQV4TDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CEEC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784649513;
	bh=WEtkTKT6m9+N5RPfrbNmYP2LODjhYIECK0LEV+NTov4=;
	h=To:Subject:From:Date:From;
	b=HkQV4TDlWKPzOGESFh1v1vePu5KvUB4RjNt4uSjkDC8WdxIWdLaldAUz/Op/sZ8+w
	 WvCHktBSEVrfCSDIq+N8vUQasFP2147Yur0R47FWSveUUAXpzXTB9wHfr92+xcdqh1
	 plG8UbmY6WqNFcxev9L0TDeFUXER94GAI57c4IKP7TAT0N/nbm0/TL8LWy9Kra90I9
	 ZogtYdURvdTQIFuzygVdUfk8c0aUUxM1JInwEygVbXJUmlrAAlDADifkx0xJfs8RC+
	 lcUHpCTrD6CthXcs0jwJgTaRynKs6gs/XTKomwPJ0WL6Qvb273oL1o2Mtk8fqi3d04
	 AN64Cenr4/iDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BFC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464951370.17327.11065244664348046487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c70427378237f6074e3f1365d6958d6f061710023c40f9104e28f57905670f
Date: Tue, 21 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784649513
