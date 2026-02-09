Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FD9261B80
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770658434; cv=none; b=SmRjK5gL3GsiX/nnz+8uq2cytEA368mU8/NqsoeTxUmgzgTXljBrkuXsZdWqABUYT0FkRYkhbuXts0yxd+MiDgcAbHBXCqTrTKGnaWcGhjPLhSVZZK5v7DaFxcAex8i2Idoel66SAQwt3w9T1yaaYYWwais1B2rUH/MmAkj9wNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770658434; c=relaxed/simple;
	bh=/Gsuf3J4N66j81wuqQT2PGixLjQPqu42yp09Xo6pvOU=;
	h=To:Subject:From:Message-Id:Date; b=qrix2gY50QuepwUTeK2ASYYOkl0bKt1fOpommHCW3O6HlpWCa3jIFuvBOvK0BClTI2sH2AZjExz17kfacWAoVbXnPM0IcPYeXXj/MCBsMdAF98zPwDL+Hz5oB7lj6pJ4hijgORixzDGHnxEPeI1cUxzIGhzgV8hP19qb7USjvWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSdtPwS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSdtPwS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC416C19424
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770658433;
	bh=/Gsuf3J4N66j81wuqQT2PGixLjQPqu42yp09Xo6pvOU=;
	h=To:Subject:From:Date:From;
	b=gSdtPwS2zP2Dn9eLeQWA2NxwBJRDEDD/Wb+UjgHCQRWKn8JIxjls7kAjL1BiFp+UV
	 vKSTI971cBlwaIlkuYEItIzNERFqHJ+YmRmkVIZMw7+n69uP80RUokXb+uwG/wPxby
	 4Ur/OW6UHnLiAX9lMnB/fLAFYS6h9h3XeYnxNmWU0ymXPFL2LKBegNNLdHzbnq4Z3S
	 Yh9ikC1c9W2Q9Pcry7BNwGr5kjwckyP+k2zSN3SYwWQempJQSdPxw9ziFriLkNm4gt
	 OEVms7ZVHhiHCVAzKCrIsdIpKCgTgUQtJm7wtla5Usx1qQUeYt+4Xhe3/fCasdQEMk
	 r1mxQ/aBSBQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6450E7E0BC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065843367.23890.7818234295450434697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79ab00449a84cc187a0e2e5ea8992619891b069fd8e7fe886753d6369ab3853
Date: Mon, 09 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770658433
