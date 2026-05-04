Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F2837CD25
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777933654; cv=none; b=sd08rPZSEEx21AueAdmDfdmq/RJlhEiEK1U5ePW1YylV/Jjc7LFwVcebddj+NpULdPIpdVi5KuRb0Qj3tYscRZUJClgEBCBP7aULLuDWS3k6r/kQdXb8B1grESfasftO4IWgrtzUeUooEPMqmWS5y6RZsgrli/XfN57Jxlx8+DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777933654; c=relaxed/simple;
	bh=8hnm09qtgqZsPNa2XUvqwYH1VKrDWnOANBaV3aLq7TE=;
	h=To:Subject:From:Message-Id:Date; b=aWkNMJ6nzG6pYp82pkFz+aN6mR4cSCzqhT4Lh4B7NTaO3kGXjG8hPM4i9ukmG/4E76So5dklOhJipR2sHYD4/QK8L3Nry3VPynj6AGZHm7jOky6v+qdeMxICyT21cirO4FeKsnajX3PqBX0W5Nxhxvwe+/uTyZEbO6BGimqKgEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIuwswpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIuwswpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC316C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777933653;
	bh=8hnm09qtgqZsPNa2XUvqwYH1VKrDWnOANBaV3aLq7TE=;
	h=To:Subject:From:Date:From;
	b=mIuwswpJPe06+c7mBt4G1TpQYHRDlqdkQkWXoLVuBvF3X0ARwlkLEjvMIjW2Y1WEY
	 fXqe5W8vFAYQg3q9uuAXkTCYbugGgNYxLchN3jxH1+s8uJ2Ea/4MD8U4NKpJMLgqjf
	 AqJdwj3mK03d9tNZpUlQQvf6YZ3+PAki3Ax7EP1OT8SEiAjnTHnj6wGj75LFhG+Y9G
	 WaNl3uuW4gLzy4Hw3bKXcm+G3DEwSWWDnf0eFxoSEJwvAhxsgzgqOV/owE/h/lxGVr
	 jDaOKYm0xSQSh+XsPuEdDVBVrc9t9XTQNGOIF6trn+inobqYH3EAF2Ca7OmxyiCKYc
	 8860LRlL1liZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB9CD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793365368.7521.1768365348175942426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc48e6945c56a9ac222e28f24d776603ed45e387640d20228a8d1fe253b2c58b
Date: Mon, 04 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777933653
