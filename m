Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED403D8906
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785280234; cv=none; b=ngCuGS+lexLO3D2pgce5NKKg3lfG9ZN4eC7MtV3/VajOYZsSoaGvJASgLsisUkrs/nTrvS2ooHIfeQOWhshBeyrWwqs6niqsDyG97A5B50+8DBqirjRaZHJFg8kts0+DZzkX+C7WUgXjsOBDMteIgOhfFr0slB5fLtZVw7ZK73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785280234; c=relaxed/simple;
	bh=Q6vpltxv7hCc5VGGw2XBWXnzi5XPb9lf6Rg/vyE1OYA=;
	h=To:Subject:From:Message-Id:Date; b=X6Iz3gcrShBulsDfUcmlpJ7hzvTcMsoTHduf5kJ/uzh2enOR+CqV4KsOF7jBJKQuSTGjiXH3SF668oD1/dRRXlFenkne5bIgdpVsH39QFqDS27gAwPshRV6zmCk3j6A/D3+yxq+Q9nlNdB6+7i5K3Q63/5rh2fPbe1L/Y2pcbVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mklc/RVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mklc/RVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC90C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785280233;
	bh=Q6vpltxv7hCc5VGGw2XBWXnzi5XPb9lf6Rg/vyE1OYA=;
	h=To:Subject:From:Date:From;
	b=Mklc/RVsCpsdq89Ex1ZJJYdfsle0r+Ccx+Sf1CLUH6tlZk0b8oyf4jR9A3vbi3m/m
	 LqLC3a+Ql6bdQuk3hC3e+ll4B98qolHAErvTXJZ9qYg48ag22qlzulexRf4MiyynD4
	 GtER7uvkU+ASByf+HDk5SfrTnZVnlTHZyT1IeNBVtT0RKu9N3qvhgXpEG3QsnoDW9y
	 O00LInbuiOYLSstOx1Cjjyfdap+QMgrJtaCU6Qmg1qmkhrm/mt34ZyQgVT4NrxlfVo
	 EajosR0+0GeFP8GAaDCmSjhwhfSxzcETW+PGFGnsVYuqLD9tL8pfK43zSowy+sNwUK
	 PYOoiUWafI07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9183C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528023368.15137.2570585345743145490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a78730dd55780a841dcfe133f1bce8cff84a8e80003c8fad335c53b813e6e61
Date: Tue, 28 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785280233
