Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B45C13C3F2
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762113594; cv=none; b=Qtr7VQAclkcoxy0ImFTmLh+cv1XM0JBGaiMCzwJs0cTeCbh0JVZixo1ryfvFE7+KOsBO9vJ5/izEpiERp2kgzQxo/iRAEnsNhpCNQRFBeZ7nnFdEjpjn4xBKAr7F5McmI/sy8HutvSmfXUlxS9c5m+gjzhfEhbTb7649U6U84yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762113594; c=relaxed/simple;
	bh=txGTuzGYalkrMBPHnxZwArvE2d137nIDdT8WWg8khWk=;
	h=To:Subject:From:Message-Id:Date; b=oX8v2ZkS3weSAeov3uf+pM+MqKL+KCYG/jh8KkqiBojVLk7EmRfvhlNEQf0bGBxaN4G8IkkA/TW9kSJCpwt8hgedkvObwov+iAhYjunA64sejio46b5gj9KUPr8P2rMcoHcei2nZGIQ3T2t1692fo2fhjudDDCNPj30XG6rLoZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hz7AXzdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hz7AXzdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B82C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762113593;
	bh=txGTuzGYalkrMBPHnxZwArvE2d137nIDdT8WWg8khWk=;
	h=To:Subject:From:Date:From;
	b=Hz7AXzdplrCvYd/Nuq+yjisoL7cuq36gtcZT8dhyNXdSakdJU8Ok59r/CxEhyFDTq
	 rrjqb8xzBB2T9Gl0UhbuvS+pRIkuXUJcJ65p4rBUXCp5Yf2GEoBxjDiJxrI2WIATvu
	 hpHetRvwzeaVmZaTvHn/WtT1bTJ0kQ/3ZDakEYBIRquyIgDWrEa3WFqnkvuq4HWHQF
	 Ij4J7ELnAGLq1jA31i8+5vg1QmXh/zhNvyf4D+YvRG93cHVZuW0gE+v1OUkLo5oyBw
	 hElnWuhBjNCxXdm+FPE8jcEdrFOeEofTeRt0mIc1jMtlcz4S6tae5LVI+94vQIfZsh
	 4Jbu7THILBPrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9494ACCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211359358.22478.17853628064514623084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5684c936d10e3ab5d34e1694594e9c9a519bc3a4edb89d7d63a13325ba7b06ae
Date: Sun, 02 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762113593
