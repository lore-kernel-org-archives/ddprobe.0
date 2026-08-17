Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF2E44236A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786979434; cv=none; b=XnViTJvAK1xljtqrcMHLgYucXRh0cKY/quvO6E/74dca0S8W1Lfbv66gT8a8KF/dIHJJET5GLUye46mWYVKuNRG0rWYKAqJPMuVnmbv7AajhoRqnuiYVWWnSuu0nrxSm6JwP0Ljara4F8bEJmJE38ZC0EJv/mEg/GM8g8OE6ydc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786979434; c=relaxed/simple;
	bh=UpN9kYDxQ5bp7964zrlS9OX5BeoZ54s5LtLemlaILxY=;
	h=To:Subject:From:Message-Id:Date; b=ofjwzUuBt7GX4NFCG2qUKcwAaPq4zsj07gcBgzR3mrNUcdkdvrKUtOX6GpuY4ZQMLQXWrm8XiWSqfkmI+t5Z5haDXfVMNhTQEbNxoq4E8t+a8xGwb/T9YeAeei6dLEl82YPSdnIxN8OWT7nHunn1LnrguoIjBIT/Nq+kGhYrrVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzuWKFHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzuWKFHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24F0C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786979433;
	bh=UpN9kYDxQ5bp7964zrlS9OX5BeoZ54s5LtLemlaILxY=;
	h=To:Subject:From:Date:From;
	b=LzuWKFHoamC6zecwfrtzq1G1uWtCSGyO8IOEaV5d7U+PY2vtBUQD+CDTtTv9JHl+8
	 e2yGgLYWW4Na1y0E9/ZN5anpYNHsgqlJcSPijOfmayrbLEwbI8uHGjq+yvNbLRBEuI
	 VEOBNSNSHj580IG6jioA7Dvr3P0JZ5GG9ines/2fhXYIpjM8nRVNAz7q+Ldnn55Qm2
	 AryKFqjjv+ax0MKYOAqcr/w+fFpFC5Gz8WHKxL2Q9AVDh5n1yZlN/1CS8fKRkTstEN
	 OgOsh5zPoPCnq8NfEjiMPqQlP9b8Pn8Z0icuxzAIcw2SvJ1RfX2JYIky6koV7sX68G
	 8lWMs1VMb+26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC316C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697943369.6135.15514004024364241209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51248032d859304a6e49f359a5aa0eca3a85abd5eac9d7c6283b5b726af5cb6b
Date: Mon, 17 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786979433
