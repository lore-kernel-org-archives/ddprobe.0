Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF4648C403
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791558034; cv=none; b=e76RhR+VMSa3NV/Xu8Ix9DQpsLG82Dqj4tj3k7IXdYrUEpKfoAIZe8gWsDljaXlB26gCe9qB4A3c2g7yUjC3UELV0wsQ6mZuJPmkERLeF5bpovK3PO8pUMmZifWqbdKfZVIqA566PdT2pLCW7cVD4ijTx8NPvgoTiHdvyt+DK7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791558034; c=relaxed/simple;
	bh=BavQ/ROLJ54DszPz7Q8uJFc5C0+BGxiSzF6ybjS8y1U=;
	h=To:Subject:From:Message-Id:Date; b=fPwGS38BAx0jpiBxE6kthWEs2ih99NU0wi1yY/JjH0pFkkolqHwHEnqg2aFdZn92LNAVMgEyI+mie6AftTnHbVm2Tif3qFkYkw2dIW1950jdIfcjEGUf17b2YRztmg8It2g13VDBRYUHVetvgtBCw+D0Gk1G5yH9QvZgKBTx7wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCRQ9wZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCRQ9wZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5186C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791558033;
	bh=BavQ/ROLJ54DszPz7Q8uJFc5C0+BGxiSzF6ybjS8y1U=;
	h=To:Subject:From:Date:From;
	b=bCRQ9wZaShoSP/U4hKRUuM0AxUFPOvQL0GHMuk0iIsEUjpHPDmAH6cjgQpzUicMDO
	 Pwoi4N8xQIIqupM+lSYz+Pjoq0orapYEkxeZ4+RP8nV18ueLcqNwWuKq2ScsANn5WB
	 5GcjJxr6s9DXqn/lyl9fs1Y0jzZsftuEpyUFRYAoHeyR55mPuqjRyPRbsXgEYHvbyw
	 QVdSC8/+Z0KqgkPmVNMskiILhUtek/D3L+6uQmNZNXpQiOxhOPxnaudTLPUpHUfDXb
	 s7LP+l3XTZ1WdvKVGxoxasAksrWpKmTKuFw8IC/DmG8EA0RJYNm/TzPift8KV7yQCz
	 W8k8a7FfERe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02CCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155803370.24916.6759162445727232577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5a392dbd97b3776564157cf3b6a73dcb2ab3b781ba4891ebf6f7fcc7ce4e4f
Date: Fri, 09 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791558033
