Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185E218E81
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746043194; cv=none; b=ugTlpxxxZI7VtRM1FKJj/bjvXKXNJrRdJjmZTXd+cWtTEUFvoNjMr/DA0vptvhUnz69+yVHvqzfDcC1WpxY+/ZVnyydmYmtxjRdZdzOp1J5oRCb76CkBk1DG6G+Z9lIpuL7s9CcY6ffmV4nRlf8SCi9eNDc/If8J0kIpDmrkIA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746043194; c=relaxed/simple;
	bh=HF2Eu+TG8dVwnAqFqRktvPVVqb+dulAaIoDKxaa+sUE=;
	h=To:Subject:From:Message-Id:Date; b=ehe6FP03DST5m2fF0K0dgOkegULJJiFlqlF+D8Ylp7HM7qs16s/7Q9vkTpYnu8h5IWkqTe3fkdgHAvSmJBsKu/KZh7yqL4L/ObVDfsoIMp4CQ9hMjXXkmHomSAZWZLrqjjg4vdm+hb7XVyCx7xUSSXuBGG3aECXIwN7SoLAI3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlhSJ/vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlhSJ/vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BEBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746043193;
	bh=HF2Eu+TG8dVwnAqFqRktvPVVqb+dulAaIoDKxaa+sUE=;
	h=To:Subject:From:Date:From;
	b=WlhSJ/vqEALXyUxENggUnPtBCFp0MU95GRsJYbXjJO7QoRxs+X9MLaHR6lhRC65XR
	 Zir6fyD0KCnVAym7luEIfgq2inuDq2La4XiqNO7GNLUGRwHh1ENZf5rvKmgBUH1rLF
	 X1QdYMgq3yEYDnBwNAv7ALlKc/Vs1Ggtkw6/473AN3PjOf2zw7ziLzUtv8o72Oz+F7
	 MKP6fVY5pcWU3pwkThd6HXPeWddj7q8yx7Y7qLHztjXWCSCkBHZ63fO4LB9tKQVD7D
	 IkvoJ5aM5ba9hNI/gPEeGYWBeawKRP/bVUCMFkjI2yyN3z+v7Pj2eCRpZ6hdUt8nuz
	 mkg7DMEjLnVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E969C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604319357.3289.10215195580923893173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7c1adfa6bd6b709e15fbdbdfde0106f2336f2901b5bad33905130350b12171
Date: Wed, 30 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746043193
