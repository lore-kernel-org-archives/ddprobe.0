Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476734A3BF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788274234; cv=none; b=I44v6qYz2Y0G/Iq8r1FvXPj6vb0EByC8jmSOFortzhtZezlgEFrrEZaYKpTEO+wiJAPkXWuv5Fq79skQOPC9dU4tNOuivYDH72xcZKjl9LeNki2uIibf8V3DjJUgRCm9FRsxCMqXbFwEYRM2pGVVoI1RsbwBGrip/4quzlyql7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788274234; c=relaxed/simple;
	bh=TBOqIuzLJfOxa5/kDYhRJpJwwPs3T4AiWOdkmFhKVEg=;
	h=To:Subject:From:Message-Id:Date; b=JhhtG/lccy+A+9l4sGaPjf8yrwLTWDvMCaRF11Lau4roXLWbHhuc+WGCWtufLPwLao3MyB7EAM94DXi9zosZpxfvsskc0cLJczqwOHW69y9lxodCPjF1Xu4rAFhpsNAVfMUbOQOG0AI0A8YJgJx4I1KbPfDC+8nL7iuH4k1rqYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsmY/p8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsmY/p8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF180C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788274233;
	bh=TBOqIuzLJfOxa5/kDYhRJpJwwPs3T4AiWOdkmFhKVEg=;
	h=To:Subject:From:Date:From;
	b=SsmY/p8spa3aF/ZQIMfjiHwExwF87CEPWkgOK9F3uUAVtpkkUo8MbJ9NRvsQSXPZi
	 owFx3knOrOftsCzjwkl5WIG9ZSvvPaWqo7Kfogu8uzjJQmnruOWq6kFpklorGrn2G2
	 UcKFo1KgAo9UkhrrEXF7eHTGao/AAnRX5+9DmPMKxUNAyidGstOHQtSiHz3MwKYwzZ
	 dWpuTec0ld6UOeQJ1FP94hJSR6iNy13qm0kR4m/2kVWUgRmryBu5upa0l81SPqbWLB
	 ozTBK9HeFv5lf4pX797vlBH/xNN5Xrz0sLe3LjMUzRw008ng5p1b7ewwfkTnzwKpFe
	 tIU0vJ4HiLsgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB089C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827423369.5149.17487383712726840926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3360bdb8487f99b61c2de46d91b25c26d47aecd3a506c2e8042c9fec19595bfe
Date: Tue, 01 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788274233
