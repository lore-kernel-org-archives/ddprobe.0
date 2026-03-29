Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D702D73A6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774781094; cv=none; b=Y89BKBP9bh2DHqhFRt+S46xkMhmMSpJhViZa7GGqipCdwIUamlf4hjyBA2XovL+EDRNmjOXLq49yHl9yslo2A+P4wNrdwTW+MiFJS+G0C39RmMU2p1BH2FB82HQ4wvf6LNaBrKXFaYY1M1S1sW1UL2eV9f8xPM/lOJXz+SMGQWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774781094; c=relaxed/simple;
	bh=6DUSV1U5revsoxnadaEqVI5jwFYCjO/pW2uwKHtXFCE=;
	h=To:Subject:From:Message-Id:Date; b=hOXUY7p8y2trPiWm76VbNwC2auBMPOtnV/6l/MWDfR4dImOyCKL9H3Karpb9Ok3ayWGm1N+JIvGSZqDVe6zb5/+vKmnpjLEOhx1VCdysaOOvnsagDNkf9siXkiJDSavncbYWhifYy7hzkFgRwkiPfDQ7YWrBqoTW2giuM9wZpEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av0Y3T+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av0Y3T+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774781093;
	bh=6DUSV1U5revsoxnadaEqVI5jwFYCjO/pW2uwKHtXFCE=;
	h=To:Subject:From:Date:From;
	b=av0Y3T+zjIyFWRwpUMGoYYWTfVQIxl4Vstd3zanpk8zhejBidKY/JKZ6zfEWsDe32
	 MmzeTvqMiyUXi30dxALoD0L87c2Lxki+cC+Ge1mYuN4AIO0ACiV5F1I6Tud0aMIWL/
	 WZZJl5L/XLykti4d2a0XzsesRKShXt2JFu6LaVkua8onh7ocMvadB4XWGD8YdwsMEX
	 YpIKvawM4j2IEPW0H9FuUjMDagkIimMmvzg7lJBa/0K+D8VMCiYa5EpsIQAWp4Nj4P
	 aCo14ecN1SElZ7qfv+3QNF71aFydVULKzCbOjn1cSlTXmoxxrkV+X3DO0JCSd5IonX
	 DloFAPHA6bINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E6F3D600
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478109358.21614.8118217447836762669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff12d9765cec40670869115651860cd41c923fdb933597665ca46e5540e19a1
Date: Sun, 29 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774781093
