Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A14515746F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786861234; cv=none; b=Zc7xB58LC72CqGnaDCYQWbgB39FzzY7WtKQlPDhPtx0e5/CkPG21/Pggb+Aw+RWIJI6fqhXuJ5Gac+tJs35nPTKqFE5+fB1xkKJIztkrcfIMZXzG+IMe4ygjbTDmTxMWJbsgmO/jal57O4ULAAKUqrFL9Kyho25NfPusxuy86l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786861234; c=relaxed/simple;
	bh=uq7qpm22lqK/hNG/eEfWdEsNaFqHtbag9XCFWFuUOLg=;
	h=To:Subject:From:Message-Id:Date; b=Nkem0Xc3i+ZNLNLz3vPHzX0aeLQjJ7eIgKYNIm8FO6YbsRm/2RL2TvkBunP4y1s12tidP3OS9xS1tRpnN4YYfkBhqOjnxm6QGoXzyy+xj8VI6Fq1YQxPgmyk0zKmkOB3t6Ann3nDKNJzcA4dx8U+U2xv8LFZj+7kHgym3V+VXaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNo+JR1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNo+JR1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBA7C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786861233;
	bh=uq7qpm22lqK/hNG/eEfWdEsNaFqHtbag9XCFWFuUOLg=;
	h=To:Subject:From:Date:From;
	b=gNo+JR1Z66o+GupuOBbHyvNE7mOml4oTcHMN2pyEF0jgJhgCdKsAwdyBEPSgjF3QE
	 ObqIYfIsfUcKRZwJAOx2A10b7su7bAvYG8VCbDiH1CnqbGI4Vwi6VVd55UgM2+0U6+
	 ikmqKlmMaCcnqXlqonA0S5mZnI9rEZbP10X4a3Hc0hsYbi99kKYq1ipQSU72vEvW1o
	 LR4Qlj6lakj46JyYXBiL1+WBMLBqalUsfehmlgo8WuFAVWp77ksTyuUPALqp6SWIPs
	 53VXLhA2n4SrnKMO1K0kCC6Pzhb7r1Bxurn/tOMPR7KGGyHUlrHxzOpHfryGM07S52
	 +Nkb10iRs7RLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02FEC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686123368.1566.6794709535158504270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5547021f4d88e220f720f8811ba01c2efe5fea16418c034a8980a58d3a504ef8
Date: Sun, 16 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786861233
