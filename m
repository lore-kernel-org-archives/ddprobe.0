Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22926C8FE
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761011394; cv=none; b=loQLiuHGTg6bAxOOrXDqruorCZ/+kyBEU4g7BAFTIkHXGh+ATp4jU2vBLixEm3DncUHKW6+VaMU+0M8Z+sdkPj9+4Hua7ENM7xD79Z2lcJn7AG8zrrixiIndfd41BqZyWB1yhB1srrIjFVNFAUXPBMDgc57i7slQ1Hl6IehGkp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761011394; c=relaxed/simple;
	bh=a8s7n1zTcwnn1eqtvlKyg8/EShIlE7nEeh7liLl0de4=;
	h=To:Subject:From:Message-Id:Date; b=G7g7xd5G6Qh68Ad/fSNF80GODdoVVYW8L9mw0nhmWzx2WVwU9621UaExrhcEnr7hfawMTYBUR+KgOHXh4NxnnJkm71hvcjLeayWKwVhT/K7DeNI4or3KmY7ck8ACj8/sR/NC0wr6JdHugA9fQtdKQvkJzMT7dOp8npie2dKhir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck8zj0Wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck8zj0Wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D43C113D0
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761011393;
	bh=a8s7n1zTcwnn1eqtvlKyg8/EShIlE7nEeh7liLl0de4=;
	h=To:Subject:From:Date:From;
	b=ck8zj0WbfAYrYADfXJN9ADG/lA0I1MwRpbPqgv1M0vL4/C1Yb74tx34JAxwNLTk/W
	 89PsL+FPv2AgBteMp9156li2EMo+HJVB92VQFLzQ5B1qTlOnJ1F8gPCuPRRBeJntYH
	 vbozWtmHazaXTESfhbRTroxq2JDXzhe8+LNz8KPaq4h4ZLNP8/+jTBo29gvYmnPox5
	 nR2IKq7uuVTUruSdWW8hWPHOuiqHw6kCSrJrK4X8cJKJAwjToAS7SJhVRBa1l+mygR
	 oImYhY4h4Peolgphxu5zP5kUyJTJtyaRs76OKea27sH0fWZUItupDKFPP0Gb+eyZct
	 bRME+Oq9jvvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93589CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101139359.14160.1661406883775442843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b197ad3e4ad5c849db176f4842480de00bc31dd3ef9c4f319280f7e7d084c925
Date: Tue, 21 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761011393
