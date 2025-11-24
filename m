Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367DC2F363B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764019374; cv=none; b=TB5EEiZ82EAfe9K8+nz2UxvOPi6efvnqZgHsFfj33ywYchKquurHAQ8PVBb5vqA7mvSg+bSQNM+JVgJxvoEN0P0sb49OF92QdqZrJdhjyrkt+EVEEq7MdvDpKN5y0yPEffaDAidvgy4cHQhV+GaiV9bEjNt6jszAaks90s/LCv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764019374; c=relaxed/simple;
	bh=Y3AQFVPFaossOTAfg6VA+oU1KnnuEoMbFN7pmsvDoWw=;
	h=To:Subject:From:Message-Id:Date; b=KYr49iMpULewSQ0otbheSgJ2JoQYRGz2HfryLXdIIY+Ap1b0CQwYKJ3fo8W9xlt4PQtLw3tTmmH+YebbX5+AXPn6+BZZWDg8JmYmFYOUTsCPNoFEVddI/W1Rr42y/2cqkH7kLkfv0+yOuVjE9T4yyd3pmTclx+Gh4tLMON7eXx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6Do3hZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6Do3hZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43CDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764019373;
	bh=Y3AQFVPFaossOTAfg6VA+oU1KnnuEoMbFN7pmsvDoWw=;
	h=To:Subject:From:Date:From;
	b=J6Do3hZSaGY6upDHXRTo30UgFm4W3Lpr7R/IdHxWFdIzCCID7wJeBNRy4wUSdbjMI
	 CpuJybDGPwHe4Fc7myo9iOSklmEYZlUfV9Wb+50f5X1z4+K88fBGSdYoth3zJ9qROF
	 YwJ8kArIQ8aHy8S8sEayTT/+1ruLUsps1+zGCxf5qpLf+L8csKYn7yybbsCuXmF7lM
	 t7dVi+fMHKIr5MKiMD7s5o1TM1OYfKbw9okwMqPlRMemizmwqqVVHyT9nHtvgfOnU4
	 qRPXAM/zVQUmy9EDA5DkMO9DW18jSSFSK9WuOtde1Gh2sUogUYQr9oJgEVz3IdSgI1
	 tTn6SGbPK6BIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934AACFD35A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401937359.9867.10612694665227234792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03592d120aa2074aa13068dea0167d95a4c59c1aa1be6ef345d3e6c6f035ed58
Date: Mon, 24 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764019373
