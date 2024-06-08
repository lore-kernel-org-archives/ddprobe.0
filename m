Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FDE134DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717873043; cv=none; b=cPB4se2AdyDUiY1qjlvBef9umeVbgudxu2aSQ00iBH8A4VEd7Kk9EdxbDPV4UHZtvu6jaHc/0Fv8bXYQhRw0WnefKnT8aPVFbEw/u0ZBjnWucrIMGYbA7rcHhat/PhhAi5AY4LgSiGpgd7deu854aOMmkrWeyAZ4qbkXKh6xuFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717873043; c=relaxed/simple;
	bh=DBLG5dek7FP9dm4GmAPaFnOqrAP38fQfq9IyUyi8BzI=;
	h=To:Subject:From:Message-Id:Date; b=KBgVfFAM9FovoXCncCwLtTYhm/+fPbHl2rzDs+lw/CnYBCWVm2OYVe6a2Hj+mp5Yfnr4nz3nIyj5KIvTN4c2dD7W5Z/RnqIG1X4G9Jh7cdS/LpiboR8j0niegt6HpXlZ50QqF9Aymt4YJEQL+z/lp5a8y5X00Pvobser3kcQZYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myRfViAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myRfViAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE30C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717873042;
	bh=DBLG5dek7FP9dm4GmAPaFnOqrAP38fQfq9IyUyi8BzI=;
	h=To:Subject:From:Date:From;
	b=myRfViAfaIcwOHhLw85l+QclJ19SX+VBtZvpAiekChgY8d4zPbTjgym4P1K2VweiT
	 bn9T6WTbJTmmQ/H4ApZNL56mf4zHWugoOd19+Idi2ID7VQJ5o3HsyRd8Afnam0E+7t
	 U18pfWz9PwUgKS7vC1BMq6MnV+964WS8+mczMf5oS/iAdcLtLRvUrR6cOhzthAlqAF
	 w0DaEb+pmD8s2qBp1ULEBueyg8zlNyqfuDidII/JjGx4w4+fboSeHykuY3E9rEwJFq
	 N5b8x0fG7stj2bEfLjPLhb+TU2Q46HKX13rZHX+B84TO6BYIQrOzVqjaJeIRfpqrF5
	 r1bzCIr3junKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C01C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787304277.19574.9718575775951047983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9402f8f95b08e566371a0f8a7a077c881cc660190069c1eefad416c705b71da9
Date: Sat, 08 Jun 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717873042
