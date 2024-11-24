Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4018837
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732446954; cv=none; b=RarAZ1ttSDEtxILnHIPHyiqkCj3GZnoABn6uvZRVl6JnHS1dC3gBPUA4ARferERgvZe6KSW7Yyh4svHloUHa6u3ZO4FxW2GCsCc8xe6HIYF3bP/klC8xM64TuzWntjB6wv48FzUl0A/SoHY7eoxgN6B2R2JcBDzfsrXvFCPr0jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732446954; c=relaxed/simple;
	bh=fqrw1uKrDu3bW7GAwclgIJpVvCxou5h5/7WL1Vp2ABU=;
	h=To:Subject:From:Message-Id:Date; b=YQM/oyfgDBXSxsfxHgCFdO5TyysixpPNBhfKYgj4o/gdlTxQDiixI8s38uCpsWV9ANF6pJrz/nkbaYPspQvniFYE8Ocue2rRmgHJRe7w4ef0QCjLfeb00HJIAs4pZzzqiMFfsBeRoEK5FBvhR3b5B1cAROSknOooBoUDoOr3ns0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmxZPJoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmxZPJoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB588C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732446953;
	bh=fqrw1uKrDu3bW7GAwclgIJpVvCxou5h5/7WL1Vp2ABU=;
	h=To:Subject:From:Date:From;
	b=MmxZPJoBhN1Fs1xdaIQIy/o1SLekIL7zAzhsyCbX3Cii5ncaNRjYXN+DCmcn2lAXm
	 RcxKHGPHGI1wBw9bA+YzVZlRoFy9c4UDACrnmYTQp/NBQnECwxOjHMl+oLqRt8eI/o
	 TUe29eg8nSVuWjSggn7hWotWX+vn3i5wUxURn7BYRZxU1LC4cIIDwAKyzlF19TW+Ur
	 uv6s05J4/BjjgCOERAsg2Q10VxwelZXdVj25pPqCf2o16OlmpM5ynvnfa5acMkQUm8
	 LPod9jNiDzXssd4MIaqb38DAQBLZ5MVl0UlNMom8FLKEn5Mc/yHbao+zZaASd+Q2cu
	 81U41JGV4CRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF4E66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244695359.20045.2573842280930560941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06fbcb99cedb64d046182c01d04caac55399a61fb957368a6b7e8fc9fe4e5e3
Date: Sun, 24 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732446953
