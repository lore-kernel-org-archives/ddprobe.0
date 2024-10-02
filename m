Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33794CB4E
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727846754; cv=none; b=erzf8ij309SggRZr30yVX5NvZFhtqULTH9oDDgbB368toeUoKj1y1L2P1dCS61Xn68zf8v1NvFPAcmyXKqGy7VBfaNv2YT6+HDoQH1+voGe67TFnRfxxLJ1to1sNISa7pOUT892fPKK3Wokqg2RHj/KFpAaK/kvl4UQsG3QKnBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727846754; c=relaxed/simple;
	bh=og+NM1y7vSTKi4gcgDfVAnT6NCtUF5i07JA9S7QnqYk=;
	h=To:Subject:From:Message-Id:Date; b=ZlEj6hzVymIdQdU3YiMG42P4+xvmbuk7jckee1Q/4JgWL0o442xZjCSapXhjOPI+0psYmMYjACqRnLbt5stLfdM13n6JUjYT57+Vej8gOjTG5WAiHAbmmCIaOIfZlWVht/o9kVZa2p+x4Xc3yNmuZGwYcTTc1TPnozgGeeP11IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM+g0f88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM+g0f88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C89C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727846753;
	bh=og+NM1y7vSTKi4gcgDfVAnT6NCtUF5i07JA9S7QnqYk=;
	h=To:Subject:From:Date:From;
	b=sM+g0f88JEV5Zbt24Dg1zxWP0qE3iv4jb7MV9xQvfVcyhdZ+usrc1AXnBOI4mqwVh
	 PSJMTDyI0O8j6jCLGZdfT2/SgrQLIGSztSUHNMRqt1G6zqohZV4Q9smzyOQ55woagC
	 LH63qKoiaChoHB0WX/p3remd6EBnIj8yyx6sH6shQIf2faKE0L7dNDQAtkuilz/QJh
	 xr7XEVE+lOtaDOKrzSxtnwoHmy8nAdqgx8zBZTUL5RFNvEvvZRELhhTvxc6P2hiPll
	 wOo3ugqp8TrxrhL50sgyzV3spi27LDFO5CEvNh9uHPjJVvsvZ1t3cWryxMPfh7ViVn
	 LJGiU/95UMGIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E30CF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784675372.6879.5268104708389242901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2af71e357040c7b0a94b0426f1750c32a334237e9e2c0aac7e8c7051b6a20c7
Date: Wed, 02 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727846753
