Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0185126ADD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742111994; cv=none; b=MY2GqWyfoihr3heKbxPsTR8F4tR7U7ODZt8cySCpW819x8VE0ZbtxtmuhaEbwSOmqvzz20uawgxibpxVGXGnpyMb9MWtNf4XP4aVu8I179gdeYc2h6+6iFhsYvXLiIBqvqxCvIhRxvvouxELZPWm1Kq/0i2SQRmqweLLEPb4+M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742111994; c=relaxed/simple;
	bh=gHJg/BKjGYjAQAat1zPW2swO66yjMDPAtAhRqXHYBeI=;
	h=To:Subject:From:Message-Id:Date; b=jH3iWxJskK0UowLIDYzzkmXLRbeDoCVGUjUZJgyHEgJIZ03u+AYEGsEoPsN0Jz31yDTT5lQvc86rotNyFuoUb5exnlM+Y2aEORtgzJ4HZ8Pr4Va0tLAuylvny8RS0gG67PQ8fo4+swDNtNIJ05/orY2n8NIO3/xY46jnXXNwPu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY2E8lhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY2E8lhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6A0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742111993;
	bh=gHJg/BKjGYjAQAat1zPW2swO66yjMDPAtAhRqXHYBeI=;
	h=To:Subject:From:Date:From;
	b=PY2E8lhWHkMoJ3rKugkjyYzp4dtTLxTXK0JePADpqEcOgg3qWn12yp2gBr6naAAH8
	 yopd+4ZguvnqDqhNL3q5HQTy/jGGnWIBv7Bv0ZkrpTFCFE6e2jXH/B59p94vMfoPtF
	 Ui0rbJv9rgbFh6FhgnAJ9Qju6BeuPwGNxjxb+2SsvCDCwFrt8IFZS26b3BHgEC46Ez
	 bHGhbS48FnPES3w4FAdSzvQXVEkjfGsfM5ZFUPx9krc+2sU2QFbSGITehNWidh/s8a
	 QacYRP54BWpdjOutigAUbCPQP/85OLkFh7k1RybCCIjyM7PYUtMbApFezxf9w1kz6Z
	 tt1v3LquPDh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2954C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211199363.3251.3617393063294250559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cc79725684e5b4a38e1dfbff531c65724267dc03420f54ab5b46b341488e32
Date: Sun, 16 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742111993
