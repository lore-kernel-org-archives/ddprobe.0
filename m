Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AE7190077
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728470754; cv=none; b=DwkgfBF01pU+VLiPQV+06Y/IMjOk6vrBmPbxmccINcoYAhSLHzftFPieCbKYDnh5hOhgCuitTYigKUGky6IOQ4DUpCKbwji79LzifSDu6j7UVbC4Zmq3dirIJZriBRU88ktFD2ef/zuJB72tOscCeRTHFgZsIZBaGPPc51t02EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728470754; c=relaxed/simple;
	bh=M7uQUwDdnsX1yFlCZ8gEvwzVm0zRqTnb8DNxqJo4GlQ=;
	h=To:Subject:From:Message-Id:Date; b=bgl43EnQ1FCC+330PQQBhuOP55Kg1HkGd3wqv4ou31zlwB5191WLF26W28eNGjhWc1kUYJiaTMsoW90QafdpGEdo2Ej6/1VbhvXw6QidpSWjrj8BWxulH2MgVcyI8zcn8MjiLOFQ1dmXOww8Uzo2AlqLob83pD/lIdbnZRFZEdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6a9wJ72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6a9wJ72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A786CC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728470753;
	bh=M7uQUwDdnsX1yFlCZ8gEvwzVm0zRqTnb8DNxqJo4GlQ=;
	h=To:Subject:From:Date:From;
	b=m6a9wJ72FJ9KTSohqSWcsUVXKqCxx4URzyIrUx9va+pPXp8+tFsRkZFVCtK+66udH
	 neiVK9YIO6XZQz0tjTfsbSs1YpRF5Y0f7GjCOZWFsJtdRVGVU0xY8RdFQsMb5vwtj1
	 wIPLMO6JKDp9keqehNTXlRPCPoV0xoosKChm5V0jvhtAMaYgJWhK/xhAIrEAs25phk
	 1iQnMncpDhlRpxKv0TE3V1Y2hfPESksJN6GjakaStE49PshqSub8Yuxu5XqgYZubNL
	 kKcRPbWFvLDSuKZW76ToELhFwPXAsVFu4336fIelmFizosspqqwhsgkdmX5znA1vLf
	 HiZ7HDrG5HlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E69CF0449
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847075360.19882.1346697025664188713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de831379de051733236a6f809e80c62a112d53e684e8b03c5f21aa72f35a7fb
Date: Wed, 09 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728470753
