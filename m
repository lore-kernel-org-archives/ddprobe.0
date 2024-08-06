Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5655B1FB
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722969354; cv=none; b=NhQSjzWoxFGLrZfKf9iYet/ZzL3mW96LgUodL3Nl8QaV2vq8QGfRNQKf9BGFWUrbPFzqbIzb1yhJ4JISKX6/sN1aC3preSWMsOkVsp6jJZlFou2tMPUaO82C+Ou/dBWBd4DPpMVs0JGCBqin24rXKvPLAK/62YoaaG+olQ8J1Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722969354; c=relaxed/simple;
	bh=ifrK8YsUkVDzmIILiZlSgd/P6iui6J4BnCEF03r59I0=;
	h=To:Subject:From:Message-Id:Date; b=NMtAV0FTOZTkc9EdROXrvYc72L+6lSvLdjdZnRsDQUiJ4bzgKxw5vlDwSJze25cTVMVJDOdXESG/7I6g6wnlSprjETCwmph78fTd/ibKwwkpNlYIG37nn0FBginf4Ksxk+M1FiKnuzdlE806/o8DW0RHKjj2jCleRYJo91WJ+ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtBS7ffK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtBS7ffK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E5CC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722969353;
	bh=ifrK8YsUkVDzmIILiZlSgd/P6iui6J4BnCEF03r59I0=;
	h=To:Subject:From:Date:From;
	b=MtBS7ffKPKJhnj5NgW7HX40TRrK1+vTFSwBe36Bsk07RGsCIVBXfPmeajmeSwS3vS
	 pk5Y+Eg6bjMIpFq35/ePq/luj0WsilxOlRAGNLVXuoom5xIlGM1lBw6TVYlsJ8/FGY
	 gyYWHoSzvGtkWCtbsOvi1Veimd34ZH5BN/FfKg1+Oy3hXmNv8QBwmY3dgGvkYi3aH4
	 9feWy5ctJUyXnzLc0Wk5md7SD3aM95Ph0L+uKeFlAfDzr85yAHgLe+As4/UYoOzJ1Q
	 8FbpWVsx5j6cfWUjSKOyNZx37Ir8A8lLPhsTtOEBmhwcNFA5bIXbXnt2qau+o2oUiu
	 sqHY4fS3g+WOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE67C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296935362.13203.15123739580100326312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b368baf5069e2c7f265121136d23f166a756aecbaa051813e184970e6debb19c
Date: Tue, 06 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722969353
