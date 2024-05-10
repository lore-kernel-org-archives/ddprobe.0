Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB72481C0
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715348543; cv=none; b=PZlTmmC0XqNSAbEdwLP+VvtaidwzXcGOfaDpO1Mz/0fe9UqaynfXObhUPHXSMHhyDsZUkCzt6MLmWfYTl5RCuDIa7+OOBmKAF9xeUzKRQvOD7DrYow7K9mqpcaI16PVf56AqFNno4/WqvORUR+cNEzx1hXtPsTZZ8emK971nQ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715348543; c=relaxed/simple;
	bh=HvS52E5BXjSuqCsTZZBHobQxR7riQteXycpXI7hnVxY=;
	h=To:Subject:From:Message-Id:Date; b=tKX5v4UghMmxakEnEFeAwBh79duisnx63ez7lwfGcdopVqrh/Jv7EpxfjLKDnCnjyoMBJrC5WKL7p7C5WWijPeu9YIgWpAEn/PzDk3DSljJMhH2G0gMn1d2vxgePVT9R02HWntEEp2hECYurR7Gqqkp47GYEO+qhQyug5y6dd5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygr7tgvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygr7tgvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D501DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715348542;
	bh=HvS52E5BXjSuqCsTZZBHobQxR7riQteXycpXI7hnVxY=;
	h=To:Subject:From:Date:From;
	b=Ygr7tgvLlkNoSnOD3wn3GShufv277Q9iJ+yioqu0v6T4B7WfaC+14bwYZ+nOsjoR3
	 zgWz1EAoeSS7jh5VAhD9OZNTC0u2SrJFcwPRXip9Mhnwz2brYn8fdRBzV8JPuIvNOR
	 QMxgj6uLjYq34TpBX7hTvBZC3y2bcrNZMKnXnYnajKFpGKVmBbgLaQvIzaoej/sQZq
	 4Y53YF5P2sFRUzmixL5nvwuNf0Ep8WPbZcrC+qmBFJ//Qu75cNMPNasl2odUX1av5M
	 CCOvqWJhevkCxvMjy0Rm73afGdHQQYvjMHphpTUp3Mh4I7JuzYDPKR2PNCfcqYiK1B
	 CbVUjzBkuottQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B2FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534854277.21775.9358734803788117028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa271e2574760e8d647d9994992ab83c02816a0522ea99a3ec2954484848a81
Date: Fri, 10 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715348542
