Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB593CB540
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788859834; cv=none; b=GcChdkFYBH3fUQRfCSCyGFmOzpkqZZkn9klyShZ/AspXQKOb0iPom+zTLPRcqjUcYt3COw1fh5cWzbc8xxgHSCq+Xv6PU+/dU4oBNbYBa1TbQwkmxfc0qnun18iwxSXyGxBl/N6cHi1Eyl6B2dtjotkgWB9t5QdQp37Ug4t6d0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788859834; c=relaxed/simple;
	bh=0JAOu635bYPdEWmaUyvW0sOffatoOCgtyS//0aAZjbI=;
	h=To:Subject:From:Message-Id:Date; b=K7VNzwsUJAw7q5PHC+Q5qX8buGFYgtSXpFhldN18hVr+rSdA+sfqw0kD9CCn2aHRaE74vWeXCGxmjsaGpsCcbYzo6R4jBkWAWjOF1NuLRHL3sqErv1o5S8jGzHzEExqm+sRKar70LEKaagnYI6UYslzP19iHJ0G27sYle25Otq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT2a6tk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT2a6tk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BA8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788859833;
	bh=0JAOu635bYPdEWmaUyvW0sOffatoOCgtyS//0aAZjbI=;
	h=To:Subject:From:Date:From;
	b=jT2a6tk0a8Fxu1z4M+icMuoYGNVHqhkLpPp0XBGE32epLNmol0LoM4NMxJsj12MDa
	 9ndDY9+b01Ab87R20DmroKEftlemgrOFCMBak04cl/9dO9rkxg5GJqWyhoO1t1Y3Tb
	 1WOoS+YKC4ga53ertQpbTb9tTU8D/KR1GS4+KwBsAcBJ3azEuXs1GCwAKoP1bBxou1
	 iYEdqywDVglurVP7bGSTSZJItUUWIhVrPv9UfACHsHxE/sOgVlL468V0qIDqYcGQDh
	 wwzjKC6AmgCC8OvuwJ5SCK5O8TfBVSL9UZQiDKd1JhiO2QSTjk+MjTzvwxeRozycMQ
	 3C2utcOkXsnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFDCC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885983375.15304.14857265174661949502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dc7c25562033bfbf9a10d6adb1dfd051e6ede73c5cf74b04727247a393c540
Date: Tue, 08 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788859833
