Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD021264A71
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753994993; cv=none; b=pjPgZA/gRkrAQy6FT8Qi63wfWMJt4qXhomiHT4a2HgAzV9Ozhdrbwb4K4lPwt3NBnCfEwlxzzBPVRQSgWD3THUBErFJmDyjP72QS1L2EAnQNcT76OkfudvvMZqdazl1efCKaSnMI/95q06TXFwvVOY4gAX+eHYuzc/cyhg62zPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753994993; c=relaxed/simple;
	bh=qTWSrgDo/1yZJPy4P8P3YG1Rmw5Xjh/0JnQegOhuz8k=;
	h=To:Subject:From:Message-Id:Date; b=bYd4hm6AmybCigSC1FKIXGbujVLqe/ow2Wdqn3szLWfYIbCsGvG6BhCFDweBWEEqGKIFQLooOSEeqObFVmSXA3pC6Eib2pEKA0olsSmmMslNKwZkg0N4DdDiR0OF1Ua3nKOJjOcoDPGSXZyHFdEREeiViuXq0g80fLbV8Jz+iac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFW8+xFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFW8+xFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16CFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753994993;
	bh=qTWSrgDo/1yZJPy4P8P3YG1Rmw5Xjh/0JnQegOhuz8k=;
	h=To:Subject:From:Date:From;
	b=QFW8+xFDmvX78nQbUtBOw0PDn7AdS1cQ2o+ZhoOkiL0EPBY8FO2n2efIa7xGzDXH9
	 OySf2vWjS9GTPFV/vrBLSwod1QnHzmtPz3tRnRJI2aHdKQ2KuCAejvT4lMtdYqQf11
	 gn563g0xB35ZDuzUczw/sO6VIAcvq1TY2IXDQEO3SzYIcijabf8sN+0y1Bc0p1bOkb
	 gRRAJUFdNB/c3Xl1KWA6f4wQdWfkhSApv/x0g+w8ID+Pa+Jek11xK8RRmOf86bwQiI
	 ixpU+hUTLJOkCJJmXKjqub54rT2LuK2KEdh4SWrj1YakXObUPg/jh1Q/5eohUv7MM6
	 sG7/2Z0GG/H6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEDFC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399499362.10106.4807677142913468495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607d5626d0d83378c2b847268d1451b85f6c75f14b63b9c0af20dd1c7407377e
Date: Thu, 31 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753994993
