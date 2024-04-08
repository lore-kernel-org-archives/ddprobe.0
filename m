Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A5712838E
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712585897; cv=none; b=r8L+6p+4oPacBp4LZ/TUra0O8wH+N3/jRP2YyMoAgnU2bK11zkC32A+yAwGs+vehlAczHh0Dv6jquO6G2lnmccAvxJezSnz8PJjh/JQZhK/TmDIY1LJ4FTt8yfgGJl925zHpjXjYePMNTR6wJ65/ucDKZLWbWLQEkvDavFRVL28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712585897; c=relaxed/simple;
	bh=BynCHHch3LKPTosusPNDX2kldRq0N6HcM4JlAwQZq4o=;
	h=To:Subject:From:Message-Id:Date; b=BsYxjXzEwg4xIkD7JVNG3auCO+nyw+2r0Zzg10QV9hBkkQrB2FE8aE1GSzoAjNE7dhjdPkC54NAO2y5F58pmbHatn91eYnQE4d0Rhr0fSfyZ2T3HtdPZMXt+ZkIALceNmrE1xgAfSsbPo7thKV+/tJW7GBRIjUzhu35rBXMRIaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahiGln22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahiGln22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97FA6C43394
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712585896;
	bh=BynCHHch3LKPTosusPNDX2kldRq0N6HcM4JlAwQZq4o=;
	h=To:Subject:From:Date:From;
	b=ahiGln22LibN5X919ixYRBsRhw9aZ5zkay8ZI3DwYPUjDFkWkheqwJCLe/lHf8NNi
	 f7kj3x8ngOVPLCRDag0+GSm7vdBtECxYj8VPzNK+kB9esp1DH6Kyl4CD1R9xiVL2Ck
	 x23Nxy8QJrrz/vB4DPYv9mZx0PSQer1N2rFQSJPx4Ct8MQCRU/YKmGNJ2kHxTTKUL/
	 NdPC3Jl8LWboBnBx/OrVrV1CkIwz+lOd9RVs+uIjATSedJMrzmELee6qVI6CrhSEvm
	 rKDp8lO370PqP7xNRAvwMMmYYeSyfr8mslXOhnD7TzO16xAGh6C8V1qtGVVkIb7I5V
	 LLdPYdasbdYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E455C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258589649.15755.1140715357236768152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667dad94e45949804277984c8c9c23bc0a6119a072dee4fceccaac6a0dfa6720
Date: Mon, 08 Apr 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712585896
