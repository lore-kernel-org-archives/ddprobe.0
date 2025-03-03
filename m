Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9E3253B61
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741020535; cv=none; b=rYXLN3Z6SRQMytWFfOZKIVb3zSN+i5zpVA/7w94XWJkYUKOAHrPZTw/FfAJ6DeMVsbBryBtl5aQxbeO209GguSVRPu8lQmOxf3kzMQRch1EisHErxYMv/5YUbthBo6yBTH4xAKVDb0h1sol+fPnWIy1+JxOOV2I5jmc0/H2eePU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741020535; c=relaxed/simple;
	bh=hzqMQ6TeWkgWtWDK5ijXmDhlCNfHTA2QVm5r00G2YoI=;
	h=To:Subject:From:Message-Id:Date; b=ERgfXcBMB+DqVzpEpG7EeGnVD4wWY+C0sDLXxoykYoLFLICOyCYhMnuF0AzGn7AQk82ATBi7Ab+sJua+3FUi2m5MUrIgKLB9KtHk27Mkxq95w78vqpbodBudCoTqXbHmmLLjAwzZwdOPSTtgS2AV7Kac3JHpVIlKLaUPJC/2NO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFfNxFuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFfNxFuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC660C4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741020533;
	bh=hzqMQ6TeWkgWtWDK5ijXmDhlCNfHTA2QVm5r00G2YoI=;
	h=To:Subject:From:Date:From;
	b=QFfNxFuVgfjwg/vm/BbV3cQMz8PGaPcBileHz7yEs063iv7D/sP6cmX54hHaijZ25
	 vezyNB1H0Hva2xaRQhOus8QOW2Rjdo7hklxziMry7nUPzp4MSMYy1vFnFowChRYeU0
	 6P+MJusfo2BDhT/Nra9O5lS0ardRO9P+usynsNGz3RpY28D0I7+Bqa0TzWGmEAMCEb
	 8yFC6rOPKjDo57gv1SHBEqOMe1CoMQq8AqakU7bFT2y40Zns1GAdjg16+Fbim9z+Ts
	 qUQmE2dnDeYt7NJnxS6wpvd2jLp4jZdh688LFjloWCWf1KPpi8mPbfmoLzeHCkHa3O
	 N3U0pT+146YdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC75C282D1
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102053361.8400.6570212045859481653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b6b48332223c2cc9894b609a6642a6c1039444c42e17f1f282b332559af2fe
Date: Mon, 03 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741020533
