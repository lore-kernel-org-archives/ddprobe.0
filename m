Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2573831E85B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780529674; cv=none; b=YJG0wHkG9W1x0cEQh/PLm/7i38ggArPt/Y7OfcJw8E4lui3fEThvMTeKiOuMU/BvnduM46BfS3xyzWNHJP72VbofJ3tZYUzYY9ZC2Pq++y2GNBDMY09SoC0iPvJIbHcI7SL9ojKPyAMbRJNq1JTQpNH+0k/9h3vB2Lz1KlUQx/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780529674; c=relaxed/simple;
	bh=wORXI7pIjdQZZ4g09Usi3kPGV++Uy6Z+CQctmr4TTnw=;
	h=To:Subject:From:Message-Id:Date; b=uwzWrXNkuuHJGFpC3jZx57O4b4nCq/cyMJO9YcLgOZZhnORVTyU7LUWWgPBe3X6bxAy3+4AWjF7lLhxWugEB61JtTiwyqNAUNIAWwR6/K0bgC/ymTlGNZosK9u//BSpYu0M5kk+k4oBWoOKB/FfBIO4K1IyPJKAdbQsWiaGGhx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYktPv/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYktPv/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A2FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780529673;
	bh=wORXI7pIjdQZZ4g09Usi3kPGV++Uy6Z+CQctmr4TTnw=;
	h=To:Subject:From:Date:From;
	b=LYktPv/QDWdAsvXDiCjljMNqXZS69LehOM/0LYyt4J/brbPEocGOGoBM7u3TxLAMs
	 2IJXepiASsi/kLg0M6sFhO5gePK9fmOheyPn6NcFG+8++IWCEtn5nUsVZ5bzJB2Dco
	 wMNG+P2iWbr7KmXEkWsdnTmTIm4p1Cu2GyZCCqmILLMG0N7vj9aTgEeIOPSK+Ll1Sk
	 iIcgku8/R8E2xndPRj0GZdvpz49ai9rpASNxh65JyhPwEIjl5qe/n7VzHTGK9Bk3mO
	 T9JffUnonBWeJr8o1jG84YJhaM4lccfgwsCQl9/o9rc2Bo8/RYN8uXUb77tB2FiicM
	 oUbblvQsmgEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D93CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052967368.6558.12608675602362863118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d713a9a62a963e04ca72cd50a2184d93926c6e012687f42f91c880a16e467bb
Date: Wed, 03 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780529673
