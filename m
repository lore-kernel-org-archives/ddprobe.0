Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41A22F05
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705515497; cv=none; b=RLeeuB5cyVSQQi4SQdkBEA8ononr8SwI0xu1dPwn87V6T7pJIv94N4MNMKC/IXdHuik10QufPhkrjIBLJh+bYTOPUPCHNSLjP2r+hNyAijvbprACR3KGwyS62MIoSVe6DssmcSUMwRVZn2/M2VwASREQG4L5vokKn3ew5zE/vP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705515497; c=relaxed/simple;
	bh=cC9w04OnjjeBTEWDtK/yqxcohWSgQa9noUgIngATk40=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=eDmy+/fgaLPOfjWZxB5pwidRomDDBXSyFDxWHmztzsWUph2rEmuMYUjMmdP1/m/dbEB3otoQeOASkV/2EZazH415YO8yxx+GYs4jJcv04F2Tm3UOFthWvIxfLsG/Tpm/pVb9mw+hNEyenfcmFno2HMRuaQHk2VfN5z8RUv8dMH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAUyPj/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAUyPj/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB63C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705515496;
	bh=cC9w04OnjjeBTEWDtK/yqxcohWSgQa9noUgIngATk40=;
	h=To:Subject:From:Date:From;
	b=HAUyPj/tSbAqlWXQk7lZG2vyqy7ru0IrP1x42d5xie3sYaZXgPXchUmAJ3LqUPBNp
	 LpCvwE8zO/Dv4r/fS3vHjyxiEWU1EZMGvLaqCnE2MSnIL/2AGiAyS6rdb6iSTagTf9
	 vr3ehilhDNhOXnK0jtzqAtzLQc48qPLKC3L1oSd+eWtPKS9DAmUaO1CYKO2Z6Nul/W
	 5Pze5ixZlgLIqB18JqPRQzpqIorolQOmTbP89dQrncilYgz5GkBWsBsV6rDPMfykD3
	 HkXIai6KpaS20IsCmtr4dWPfR+6EdAcJQLL70u+B5wRRUOnE83Og9F35C3AOL9qC8+
	 yszkS9LXasWFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8F1C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551549638.14399.18153503074605543484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5b0022056af10ca869f7e81c9387589692bc7d457e25406d54e883397ac772
Date: Wed, 17 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705515496
