Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E19221275
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762915193; cv=none; b=jzQyUFYVMHjU/r651/z7vvDf+umhQUztuBEo2xuN4rFexLefXDo3nGqo0IHGIc9lIsvNKff4NeWaMekh97gt3YoPMWJFWHw4RlUuTnjta1lzZxVnPA7mielIYz+H6XopIxoyd63NwduoHrN2OZAkv/tJuSLg36tAWtUNoBZghlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762915193; c=relaxed/simple;
	bh=GrqhdE+WsuH/btfeD6PrLipVD8KqEJ4o4GzyxAsGmYg=;
	h=To:Subject:From:Message-Id:Date; b=ptCobxdMUvTp7e90R4RzeFwVpDiMWuYSLIyRxLnAQmDK8EheaK2uFtX9FbDrxeOtMFtYJDpSujOwP/7ED83LPaH0W9yNgoezzfrMEHGYdYA7mh1vZyC2h8GF+5ESE34xmvj7BYQ8zwyZPN6c4fu+TTJakmrpDr+JEmYMM4f6U3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLhmxWWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLhmxWWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A4AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762915193;
	bh=GrqhdE+WsuH/btfeD6PrLipVD8KqEJ4o4GzyxAsGmYg=;
	h=To:Subject:From:Date:From;
	b=vLhmxWWXEykotEH2CR90pn4MtzO3UG0cMNysumZn+4XmMdflBg4kcP71+P4NENpvV
	 gKSnMbgFiD9vNbCrwXahdgXhKBNC8nISyn7ao4czmga3oTVOp2zI07vv/EZOPANlYo
	 vFrop4P1MmR+QOc/obupueWt2+/ewEXajibRPMFMDV48ZUIjum0vejaKooE2oW6opz
	 nxVleNnZyveTsIw1b7HhleHueuOaereNqPLKipkUVEIuUduLA37oh7ubW8nHhL4wFl
	 Xy6h72Gh+/veWWCrAwdJfETk50bKOD+hdYMnNlRT/72sBzwEUke1iN+E/1XgY9xHUI
	 mLeWQbsIoUofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94818CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291519358.6920.5184482563840805171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c523f09878e5222802109e5ab3040e5844b466d7d6f3af0f803013aa686256af
Date: Wed, 12 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762915193
