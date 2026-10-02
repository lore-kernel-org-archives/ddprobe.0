Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F631E0DE8
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790900434; cv=none; b=RFwpmfiAZq06QsP7aBth0tbH/+eBtjOGn4kWkmqNsEhfdOaWGk91FAwyLRoCH7T1YMppJmLyK7Xmc+IiYVrTNWlC7sc/Xt/a7OyZiC8OZv8Iqu5ncSyPf6ldt7iwdea/tjMrdzTkJjqbXmnnfJlUau8S422zIefms3Crm0h1OKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790900434; c=relaxed/simple;
	bh=YOsCVD8es3sKI9VdwXBmnRzKJMnFIib3NNMLZsHOLZg=;
	h=To:Subject:From:Message-Id:Date; b=jm+ZGpeaUh1N9QOWXahxIwynXieLAP66ukjBGVPYy7Ctx5y9f5uSkMoB97oozxZVkgkBJ3qAhzCoVADd0uEjG02S1Ve3QyPehj/kiRf1xr/HL1CzjfbYYJw/9MUbwsL6RIPCN8HIb6WNJzQaJZ0//C0QOp9AHoBStq1tRjvuGCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+MhaLRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+MhaLRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D814EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790900433;
	bh=YOsCVD8es3sKI9VdwXBmnRzKJMnFIib3NNMLZsHOLZg=;
	h=To:Subject:From:Date:From;
	b=F+MhaLRoG4vQ2LBfVcsW2+o618jOIeGrE9Zicm3OO+F4bL8b6uqwTeg2zAptLHrp1
	 s+gNnEMx/9DtDlSZb6JZcz/GYyQClm/5en+NbiAVtkeZrIKKPeZu3jeCxlKW4x4+0B
	 B5WH13n7AfJfTJVunStyzL4VgqEsGESd7wc7ewNHLHlh3teRioTgG1aItNet+6dut4
	 PoTmR3Tl280jQlvsthbCNwppX82ypbubtapq+JIb5kusB3daujNAo2SEFOAIy3WScL
	 RJbOn1VE5xkHRaYRS9R2R6NDnqVBVVbhHm0haZrH6HTh+10S81Xr9fZp1+8WFoEYwT
	 oZNlwIq/fj5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE625CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090043369.28686.4407601298446368098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa0b61261a9be7bc2f12047fb2ffa3c0004173603f5e66a29a551764a0343cd
Date: Fri, 02 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790900433
