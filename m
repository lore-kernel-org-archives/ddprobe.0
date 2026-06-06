Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E666253F13
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780781074; cv=none; b=RcyihVnZ6yqWz9IyoCogk0JjCwYkJijjMyapqAabrgzTZyzWccExGuMOBJsopngP/64HY5iPuNEdQX6ThfohscPuiilMrTC0zYX6YbOIHzBe7zXESmhZXg11iBiTFKzz5+C17v6j/zP06zRQmGl7C8HTllUFGCauQnSpFSTgcfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780781074; c=relaxed/simple;
	bh=WpDJiQd3IhptqGjoORIjg/3vReilIWLaLCbRPtTy+qU=;
	h=To:Subject:From:Message-Id:Date; b=XG/dVPyE17bcPRVbhLReDoBFCszAcgTObYeeCpOBELT961amuMPsM2W473ViD1YpgeCZf3AeotIgPEtAcFlBnBffYnkTIdrBQGUB6Fcd96dmQDK/6LVuRUxaiqzWYGlSkMvnV5RXjfyrWViQrRXYOWEo909U3bnrxX2ipKlewV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihyONfwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihyONfwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85B5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780781073;
	bh=WpDJiQd3IhptqGjoORIjg/3vReilIWLaLCbRPtTy+qU=;
	h=To:Subject:From:Date:From;
	b=ihyONfwQ0XqJqnBdM0olAddK2bDd7zzFn1nuPZtRZ2v6lfAofEB0PWa2fNYE2AbHR
	 s3CyIYFmUg0jMNlqbZ+Fh7DOkLemvNaGnBX0JqD2wczS5KiBb0q8IuOmhXdPyFidUf
	 nKlH2bEY08745DP3176uuYXgV8Un2tbscWCQI3Pk2cjxE5QKirf2qQ/JnNPh6fNcet
	 4DK1P9aZyn0zhBdCtSolw9oc/9RJMApNS117V/OafaC5tn2lW+NmtTMgBj82R5FMiz
	 xCY1Bftxyr/j/pSPWFPyulIQUqsktvAtWx/2Z/802ouMWyNkLkTzj/BF1nLCsa7a5X
	 XpQBID2d08uSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE128CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078107370.31822.17290956631144178576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f831640b28824012b1f38b6374b908bc7c45847bda47e7f984bee8349c389ee3
Date: Sat, 06 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780781073
