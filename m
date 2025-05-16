Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CED21FAA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747372194; cv=none; b=Pvza/5HElGhqMe3tuS3fRFIk0sVC5k76mE25ab1wkKjAZfX4x3c3A5hHyLknk1VZ7pgaKYU+ZnoTHSCisGIEKnXPiSD9d1D2EHmbqIjAKM2lJXMXzD+XUbGzNDeJb+Vo1+K0Zjk3jJ0zfCr3Ij6+wxQQdmpL2O5OQsskRnXceC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747372194; c=relaxed/simple;
	bh=5U91GRUyIaXNwEsxoRKCh3L53HhEjMW/59C5Zx1egPo=;
	h=To:Subject:From:Message-Id:Date; b=dsQ3BX6WWaRiD4LdPR8jPoxtiL2sGJNSzltjaIW7ONcTdFY6TYxzZUhFcYWjY28WkXbPKd1/xITagcWNWxgn60j62FUEp0EyoAIZ2rkgHhCTDYdf/vsS1mgJQEAtSs7omU9w3FBuMBzkByk7JaIiuPrSbdIVKsdRaPo1lptKLB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3IxC9n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3IxC9n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66AEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747372193;
	bh=5U91GRUyIaXNwEsxoRKCh3L53HhEjMW/59C5Zx1egPo=;
	h=To:Subject:From:Date:From;
	b=p3IxC9n7QbpJ5vvkNxEqTFXK93NLkmVVMUb2fTbP6DYSqosAPf5bM2CGXAHHHuGQi
	 A6xJzxJEoTfmeC7bzhCnfCFvMMrqYgmbzGWrfl6aMg8qh3wB0QY2HoW2m1QbIEsOsk
	 14di2dJ9D4vT9of62hKirmUwRT82gXVLdCL1GsddSkYm1N/kWvv+wkCFibS7KJQ5RY
	 jwBsDSfRLv3trSTahvIbZdbFUsfLbZgFghU2smTqjVziCQpOuPXVnfe+bmj+v4exAn
	 EqhBFMObxX/iiNaz/9N8hbwv7uPPRtWRxe5Ht/GsU6V6eUZQk2z7mVdogoAFvjHwdN
	 8NxBSymp8qJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1AC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737219357.4614.12389597768428219623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fb2889d02033a1a72a7f983eafb86d6cd3361308ad4bf59d290f5f12d0504b
Date: Fri, 16 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747372193
