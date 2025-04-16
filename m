Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4736D2746D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744772394; cv=none; b=kdXnPbwfpvayTNdpdFHFZI27cYbpwvASuvacgrqW/OJXgVDznth8/NSf83QRT9l7+b7LrNaoellAq/XUwEIOZpeef3+OWWkkNo0tfqbREvwYBEr8hTIuthpSOdxJ/S1wWTjju8sQRZW3lodjG2DJhV5wF5PBkZ1XPf5fJMSOdLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744772394; c=relaxed/simple;
	bh=RwKVQdLT42fwQ+ZAuWPtZE/mPoNhx0ACCVu3M39mrkQ=;
	h=To:Subject:From:Message-Id:Date; b=u2R7bzyi0c93ixfC3MG4hM663lPddvLjXMNyrxxhXpmws1FAa6IqpZz58aNpuqf2pnopGXqfqNgBy4+I0bwPSV4CL/qacvVUH8BMfPZwwsVJQhrkmi3yu0C/lvhChs8nMINBk2nA1gMCspL1xWt9EXT4wmV337fjiWNWuheNR8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx+MwREW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx+MwREW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD61FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744772393;
	bh=RwKVQdLT42fwQ+ZAuWPtZE/mPoNhx0ACCVu3M39mrkQ=;
	h=To:Subject:From:Date:From;
	b=rx+MwREWfQS9SGlUtvXrqakHrFJf/HkjiOmnSIXL/ZWZuUPtRbCWij74sE1u15Xa7
	 5pVMYYJAhiJajw672lVs0MvWC+14vjoWXaEuUJtflVJuel0YBb9LcuUHlfNm8xjGT9
	 x6CH+6j/I8rZKzox5V00HNvJ2NnYguJtoi/3p5pFQSqjheAcQ1lBklqC7fOhBZK8qQ
	 uEHpST1IlUSDNTtwL3yCRBe5O24j7x+MCVGzmI8iByYR//9UImhLR7AJQ6P4/P/9io
	 xDWzJRzzO/NnDn+oJTRyzykWrlIw4xi7PznKp85eK4D5UI7y6vMvraYEIVG9bU8pZy
	 lwKmNsacvq9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D153C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477239363.12983.14870478950709653543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c1967a953af138783eb66b7ba54a05c63e37c86c00bb4c8bd4180ae479ffce
Date: Wed, 16 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744772393
