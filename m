Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F3036BCD8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774361694; cv=none; b=MpD6YN+SR6H7vMuJ1oI8JgRONifGVrStaLhspgCX8C8EttkLIOqul4QFNqZGCSZZgHefc18IbEda77KOC9cJgruMj+UykKD/DVxPnN595N4PGOszUaT9r5YIujGm6ez88anqOg3A4znZFqwiSlvfOlrgtby6L4Z6NqtkNXJvWKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774361694; c=relaxed/simple;
	bh=+9XpramtfnSuqSGMxuQs0LcVmKYMnWelk2VG/uT7mv4=;
	h=To:Subject:From:Message-Id:Date; b=dYlOrdcOfxoa43KrBPfNmDeu3xje1Fo3+xlS/+Kd2S0b3GYI3Zwx92TsW1fZyuLE426JRbZ/9IpE4c1Vw0/+NUlLefnhxobyqqsCyQthYCDEGHZ00/Wr6d9+lW722Q8TTmry9VNgrMuwepCtLJF9lwpl4W1UK+JAJ8sX4kHxwLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9g/ObhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9g/ObhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE5C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774361693;
	bh=+9XpramtfnSuqSGMxuQs0LcVmKYMnWelk2VG/uT7mv4=;
	h=To:Subject:From:Date:From;
	b=U9g/ObhMZUKw4r0oJQ2z7ly2sqH7p2LxrAi54p5Ess8DH1XixFu8AL5xLDJtrpVB4
	 /UusJUpqpUYMKiPvm7oZukNzLNV6bjlsel0yo4uHZE/4KA+IXuqDJzc1VPjhW+/vfg
	 R2Cf7FzqIKgE748HXGiPzB84yfQ6aNNMXezpepenNtxYvMsbkEsIh4qkCL+Piw9bW9
	 akI+mA2lWu3eo8ehNRzUWlvCoCFtZQbB/sYcpd2wddq3MdTRkzBxSaBlN71uYrjDFU
	 oy603Iicx7pT3CxjCbog053OYE0AkMosqpbGtHaZig1XKaxG8dJk34gh88PYVEEJGA
	 341dsCDnBJCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5CF54AC0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436169358.27633.5254870199146358404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dff3fbd5540528db822b038cdfed91d3eeb228d529b6a8e24bd7fc84ad8534a
Date: Tue, 24 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774361693
