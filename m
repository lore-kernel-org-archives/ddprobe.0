Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46734A30B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756836594; cv=none; b=NQLUJWh/cpgeEJxDvHBMNikW/XEsYBz2XI1mqau0pz3sKjh1CKg6BZf+oZZ3AiBWseQW7oa5apSJwx3X1eb55dm1Cz5lXCxVSrSk/6CqghNFwuBCfCBby73xCsdkCmtZoy/KJUUWQbZzCi71hp24FMRqmTxPE9+HJNbm6i93zqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756836594; c=relaxed/simple;
	bh=ZMylB123oy1lJSwvoJAISxzw4LWlxC7EpXlzyGp71LQ=;
	h=To:Subject:From:Message-Id:Date; b=dp62nzsSyJ1HwJMwMruu48zuVz/+fAxOcb4NYYF9chZ51O1Mc90QW11Sr7tq7t2XS9AiPcIEZlxamDb4l1/Tlx5CLBInPa5t6CkqVNPIKzltOk5SzjY7q17Uwxq8k+xpCp9zCfkswm2kueWlAoV4x/1yqNzTit6AwGm3lB/eBw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ockouCYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ockouCYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756836593;
	bh=ZMylB123oy1lJSwvoJAISxzw4LWlxC7EpXlzyGp71LQ=;
	h=To:Subject:From:Date:From;
	b=ockouCYCCxDTly73pSCcYlvCLPVY7+jMBEf2TYjiteA8JbPGWk2G+9c14MVcAQARF
	 639DLf4ZfdLu1m/GHJ+sKCsKITVEBE0K9BxLd0fotIjkDKqEKWlnmsXzDHiOCVHsAA
	 q3UPg9bMFWIT559mE/Y2ArIqCqFm/x9kXt5BE7RF22wCdA5K30EW7togCzMLa4uuJR
	 4qux4K+Dpb+q9Ob98KBT7EPk8G7bETrmYbbUnnCD0QE1QbM4958bjJTNC12KHITyrj
	 tsLY9AqV0ObVcfGiqXqeDycLYW2WODoAY9AqRzIfUpOsC2Cx2fLaNXnAnDQpUSi9zw
	 8RAD6b8Gxi4WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF6CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683659358.23370.4120930265407631741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7b1fce98230ca23b24a0783b1fe0d57a33cacf3067cff127f1d33b82459911
Date: Tue, 02 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756836593
