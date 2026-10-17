Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592DA22F767
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792244436; cv=none; b=L+KBOxSbasbOVV9KB6pWe8S5/2KVbIf0bl9Hww2dHVHG+W4sTK42zY+QXI//MMeVHyVRZc5TDAsUSDnx8asBcjFq225t8dHtSKlSrct+HHtdJclPSLv/JcR7SFa6Uvkazusr+XFGAJUWRoKi9/n8oImraYRLmeZm87/iCJt802k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792244436; c=relaxed/simple;
	bh=Or4RgO/FRb+3I9aBMWIA9MNTcWULBUd3W+I0njRD248=;
	h=To:Subject:From:Message-Id:Date; b=HDkTOPr/2BrTDC7DWmckSMBeI+L6vVnjRf/oPLA6BFziw+3+/l1a7ZdL5KlCLM3cBeAMpqJ9CzpRzRYqU+ZMf7Jc5nhpY7+ET9Ij8AkagoT6KB/PJ15d8vyPW7yWFnYSUQBb5jnYnRVHJSTk5jhsoSK8f6mL9Ia1zbjhyhtF2OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCwaXMXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCwaXMXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E422CC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792244433;
	bh=Or4RgO/FRb+3I9aBMWIA9MNTcWULBUd3W+I0njRD248=;
	h=To:Subject:From:Date:From;
	b=UCwaXMXDUVfxZcFLiK8d4G1J5gkxLwjFqBcpziPRSJbvdW8q7PNpBCaRxYEg+/Y1e
	 Z0xJReL2hxLsWp7HLIvu1nLYe4THa1h6CjWE91fDDNpslApwdaRie92YIe/+iVIbiG
	 HV4sWOQgJNj7KSGRjHCghMfvl9RwldyPlikA//yqaH0BsSPqBcYIz1fmI5ZqUTP2cE
	 l2qxSiwcOYhFy87137NG+/ZY6A1dZN9CtskXSQm00J8oYn/sQdqQ2qJKOdQb9cCPQj
	 hlSOCJRnvSE7vY4No3O4fQCeLaoS8EUPss4c1qTwXaJT0YASbfS5jqw933seZ3bPCA
	 h1tBGwnZEfaHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C183ACCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224443374.14906.17814410593448337391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13de5eca6b943c820d7913c7461c3f010db40e8969f1d59acbcc5321f1b6efd1
Date: Sat, 17 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792244433
