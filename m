Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E062D0C61
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752556194; cv=none; b=pOMXlWt5LHQAGhwyXJq3XjWJbAINhVTGi/xYVjY01cc9Bp/CHRlsb9kflriruoMwGLDXz29b4RwuVyisjge5AfeOAolPTXDH3GbSP8eSlythXrCoNF/WWRbsemedeX4PjthnYVywR0tN1aOX9VH6aUgrrJV8eAiWwTmXKAA0W2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752556194; c=relaxed/simple;
	bh=NngsW5VvsQLUGoBw8/AtldMYvrUf3ZVl4Q5W30mVBEs=;
	h=To:Subject:From:Message-Id:Date; b=R5RqOs++ADNislCm1N2efsEP0q4fYRNOXrM1qumxEIoAYGh3u2BhMjX1XO6IJC5M27Kj5WME0ZNkz7UpeGFEHQ0DnLT4IqOm1Nazp+xgKXkBueLThKWSEHQDdziCWpm//RgkmGWzpS8rlyBM6sjDiO+Qi+OirPrXWGxLTIhDnvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQs7sDa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQs7sDa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F96CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752556193;
	bh=NngsW5VvsQLUGoBw8/AtldMYvrUf3ZVl4Q5W30mVBEs=;
	h=To:Subject:From:Date:From;
	b=dQs7sDa9fcyqUuAAnUi1pqGSSX4fd9kXlTgXUWfu52ZD10doFJvrydce2QfNXqKMi
	 NAZSELYwhKccutKKa/jEAEQPVolxPCpHKyCLaf9ctDgfQ+GkyEHFpkoTo5YT8ZE9mT
	 w3MXm6RmnAm7Gt2/wtvYLKOuf5u5aN8dtJAb9E2pTMAk6rn2mquZFV/G9qGjOWkZVo
	 8EMbcaroB3/Qb2fAf5zBUU7aJqZvecUBveJPzU3D8JGpcjU2YS/PqOtDmyADHAs7W+
	 1XDbQT7j75WkXiP31lcSIPVa4lkNDsOLNb0YUpUq/VegHfaKrx1+PHkaeFyt7yIImc
	 1P5XHtUkO+HbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F00C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255619357.25575.14034576716673154081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506f738b1a0fd5b435fb10e57768226936f446fe2e21e4d5d193a976e43761da
Date: Tue, 15 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752556193
