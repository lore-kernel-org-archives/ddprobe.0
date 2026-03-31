Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E1036655B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774965894; cv=none; b=eh8hNdKdInXVlfMUo6u7ltTbu77IrC/pOAoUxop4w4Cw6KV0Ph/rcui5PY/QDVJ/oEMheonXgL0bKmY7/IjtAn4/6OOaxz5iOAb6v+JADLu/q+squHYiK9/KYjeD2pK/T6628IEK0YwOmpsRrwxiPEftgT1r3wdfNJdcZvKyW8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774965894; c=relaxed/simple;
	bh=EpWg2apTiU4nxCdUzdlk7AGNWLu0oKOG1z+9U/01tbY=;
	h=To:Subject:From:Message-Id:Date; b=Wtsr8aktW+ZcAR6M/jIKgKmbkWM7b95umi3t3x7/0rBxnxOrFn7w8xsHxjf399+8uIPgmA6xGsMOwtAO5Sju5Xokr/r7R3Vo+2bmKl3ioM6lRi0JZQAeXhJDItr6xx7bHuSqP4tge5nyHuRUuQUhl5XGGyYRQ8KF8zZgCxHNhsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMWe7kyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMWe7kyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8147C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774965893;
	bh=EpWg2apTiU4nxCdUzdlk7AGNWLu0oKOG1z+9U/01tbY=;
	h=To:Subject:From:Date:From;
	b=VMWe7kyQoiTVlA9V68P6+vm52+YMw3ePrvggUrGkvFQ1Uf5qp+WeEzYJNAxnIKpwz
	 14N2UPlZYDbs6CmhbvaCqGA3KawKQ436r343X2wcSNljnkpd1p414Leti7LTu8z5Yr
	 fQmGISW+qzDhpjStFJXitmVYUOJr8dt0tIrkSpvotiAWS1an5rUTCnmbw5FUrIZwyM
	 Nnq3VbGZpaPiDLa2VDYdwp5SsQPPzwzZfkQGSKBnokLHJn0riKc9URwl+w5fVIc50b
	 i3tU5a2ornA8rzeL2waqcbUSt8TrCb27pnwF2mTTnPAbSdpWKjYFlJlY7YZVuEW2BI
	 VFKW4xFXpKIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B50109B472
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496589359.28347.3976862349121291899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c26b3b1f31e304392508ad08ee4d6ae8ce0132ab7d36ce2066d9f63881278e
Date: Tue, 31 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774965893
