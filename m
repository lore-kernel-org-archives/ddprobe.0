Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495BE34F467
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757074795; cv=none; b=d65U4wRPWREXg90Ix6Tldt+TD4L9SvoUkdUEEI4x9Hp6zgP2dW7TjsZzyvLinbcGuHGB/XhyV6CJ6idhYSg7Xpy64tvetkuAMzcxsWCfhHvm/mrBrJ4Demvj3R6apwKP1NaS6YLh7jXQhT6fFpsr1wfnXLAXgf52OeIAWn+kYcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757074795; c=relaxed/simple;
	bh=NLxkSKt6J1fJcUk+NFRgO6Jta68VboS5hJFUj2UF+BE=;
	h=To:Subject:From:Message-Id:Date; b=Kwwj1DyphIgKe0wGE4DoP2etcnqoAJD5DaK81ktI6z4eMJwLdE5qY9mZ2qaVGzPW+eQgsWzoVlC6K+wjTPKVQSMoYoPU2SzYasy0SNLYo/cY87Bw34fLtLY12fUaJ9B/volmKcymqZ+90sZePeNky4kgmrNsrcdByoffWEj8djk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4hJ6INz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4hJ6INz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51AAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757074793;
	bh=NLxkSKt6J1fJcUk+NFRgO6Jta68VboS5hJFUj2UF+BE=;
	h=To:Subject:From:Date:From;
	b=A4hJ6INzYsALg1FnWCt192mH4uPXpscEHgDdEjO33rLmoSSm3/EBhtJip8w5QFZGZ
	 ZcaQ6iUv2cF/eCgYkcAmPj59gWlX6gcCxhZhiNeaxFEp8cr5GhmZ4J6yHgWNy78p9G
	 s3mi8weifKQuFVfoSk7Uvuc3h9gFFDHqKzU+P1UUuCritnPXjJa+KERm3m1tHv2wHG
	 UOE5Lbo0fWJBqvCfqwbECIGKN9qWzfDxwrLP4m0koScK76VPNV7mpKU1wNZ2xhwAw6
	 WGCSn0Pctr6KJyhpeIGQPY24Jr4CKTJWEJuYwZq24lYfwxid9EO0Ubo6yvz721PllP
	 vCeuOy2wodfxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F942CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707479358.30792.17483101115750661588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f1aa939bb7d8e6f573569dea45a84d97fa0dfb4518863c70e68cf53187ea0e
Date: Fri, 05 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757074793
