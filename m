Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB35C7DA66
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767889434; cv=none; b=sWWuCKAnCi9Jq2NNjz6qV2gNorplAMu+l5wpGE0dvxhPuXcXo/XUI9ONdOcdnx/8G31cRITCMPCRZ7OltuYCHFOaMUJXMPiW1n2WL4k6EY4l8255LGRHNAOp+ffe8J3nKwO5GNWiodyrO/NEJ8iFiTp+JwrccFYWPEmtslTWyxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767889434; c=relaxed/simple;
	bh=Vizj4kjafMx+dJqgo9HsWNVj70rinMTqQK2uDhnlyj0=;
	h=To:Subject:From:Message-Id:Date; b=cuWua0tYrI/ZEMqpdPMmpElL49n2qFocoNupz0rnFCyIjCJdWRdawu4MR5P3LAD1+GwMkKbEAUartq1AEIIzfpvUGWlnZNRkUZMaMbxS+j9nsMMSE/cWu3wcOexGZUg9bBLEBnPWMY5nVv5E+wj6NFDVC/C+PE0xR3KrIUG+17A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv+CWkhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv+CWkhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDF1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767889433;
	bh=Vizj4kjafMx+dJqgo9HsWNVj70rinMTqQK2uDhnlyj0=;
	h=To:Subject:From:Date:From;
	b=Fv+CWkhSSfdDOFfisTM4Cv/H0sXjMXMFJ7BczIDSZonQu94RAnF3MbXDGuA3mrFv9
	 m3FnazHpMQCKQoSFQSAelqrX85+x4Mx+9Ua/NiO2OhlXOywrnoAmOJQLFqXy7Z9dSe
	 aqEDy8oBL0q+uNN2Adz/0+tAPUL++uoL+C9yXZ7kuqqbjB7FX4tYvlwMrQjM5CHEgy
	 AnXQzR4i6SUfNLauIKs6odAILdS4mowbMO0+gqeBgQU4dfoqhVGiRfiEWJ6vi6YDBx
	 bYnu4EyAxzqrCndh4bth+rUzFArs1Sp3f5WqApmq3fqceoJcU2ue1AaSxPFhwg+q6k
	 stVJGd0JD76gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7CD1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788943357.3636.8959061675588815187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8da0e7afa4cac85d6ca272bfe2321d6b6c1044ad9e6ad2ad79112bbd37cf75a
Date: Thu, 08 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767889433
