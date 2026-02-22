Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17694481B1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771723494; cv=none; b=f2r2gO49jqof8frWazFe3C8KApF7bJGe43hEnXVFtwWRTrVtPcXGLzG12cN2Nk8agE1M8jgHU2ryFnOkX8g8+8qEAOBL15W+4hEccj9mlcdzsaPZkAAZALQrkxU5gzEh600CAcp4F5scVu8ULpEJlK0xhGklX4l9tzDMu6zPA/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771723494; c=relaxed/simple;
	bh=hGvCWjXFXNgsWitx+7a8uxA+6GsnMPuErDXsznIqfdw=;
	h=To:Subject:From:Message-Id:Date; b=DQ4mLrvnzy6NdJ9p0096oCW/gM8JZYBs9TrknsL+ki33YQKuOXcslHhpcZbbJfXWasl7afP2KYgDDmqy6fUM61SEteDJCBgNXksKDBwEatX48uMH0A+wrzDBlojS3mhMEjFYiXchHNJMYnBmReA+OiYiDIJ5d6Bj795m1ffy3Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W182ChXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W182ChXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D91C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771723493;
	bh=hGvCWjXFXNgsWitx+7a8uxA+6GsnMPuErDXsznIqfdw=;
	h=To:Subject:From:Date:From;
	b=W182ChXiQjjZe3+f8VLrI8JMYvMcv/6o0zLchonUQK9nJ9KU4htkhxcAyJM93Oya6
	 bFCN0/JMu72yB5RYMEUBEz5Qlx57dAq8/a7Bd6d7QCdNUXTBEi4kXg1iowTw0uGeH2
	 mTpGfppqeAOre7mWD2WiIVQA8R6TcDDFuICDrgzQ2LzeoitRe/6GA5awA7jsDA3vBk
	 4+fJuXWF4Y4oJ5nnHVPQz+efcDiAtOQ1x8zmoxxlwGU2Eud9D2bfuSCOPH6Sq9C5mk
	 Xs47kiJtEPdabEJcMYqfknpfKvvtkwpuEfhNI1tmXofwvKdBMsKXW2Csr09o3raSfz
	 zXoN+f0miaWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6AC624A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172349358.20938.17820869873751809038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb3a05078eb8ad7e1aee590f6ad08cb37ae706b3d5e4189a2105d54e09153ff
Date: Sun, 22 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771723493
