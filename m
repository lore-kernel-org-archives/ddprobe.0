Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2C224E4C3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775229334; cv=none; b=qz9hfcJnueI5Vfng6b1WGRQTGGjXFkXmw6r0XXPgYDSmWh4i1kVBJqJBfTM6nP6O7B6HCulTFIu52Uum9PSaXXA1wIRfDPJmWZ6QXxl6GwXryKvYQmb5DbL1yvQPUV8XTfSJMFGoXYimbRO6lNw8DKgOy7beezsCfAe1EmG8Ca0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775229334; c=relaxed/simple;
	bh=SE5L/O1qQwH1472noqQ3Bvn9k733r7IK6ujJjlNlUfo=;
	h=To:Subject:From:Message-Id:Date; b=L6+loOP7l/lMfX4pIAXK3qnv4nQEyki9viwpGJRkjglTBi+ej3geYD37+n/CDSe0I6yOX22re2Qewh7pLTKlZ6OQMNyK8LYPoWhPpBfmWCQ8IMfSrBHJSFEs6kBTjokzwHnCPxK2IskODyh78EwjOHENC3Qu2oE/M+i9d9yDtWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGo/irFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGo/irFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A75C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775229333;
	bh=SE5L/O1qQwH1472noqQ3Bvn9k733r7IK6ujJjlNlUfo=;
	h=To:Subject:From:Date:From;
	b=JGo/irFZo61Gx/RbXbArX7pGdZ12K1rLu5vDgkQnCwu5Fntq8yT5vE6XsMPvJ09ml
	 VgbORpz0sQs+ZivhOahTKgz2aSO3RJeqnFs9ZnRNv+CdbpLe+knFr5vtumG8fZi6la
	 /Xk93sms2chVmE7sx01YpnMnbt1lXI5IxcarON2QzF9n4gnyj3VKIA9xXXByJtaZSv
	 EuBY/RnYk5B7HphUzMfIYI3CShKP1buq3Doae0KR/R/RxQB1OfiPNqbi2Mk7tJ1KLg
	 BgWkwUsv4X3qMnw3/PPoYHfNjyq/1jXH0iXTe7pKOB2vONIYM2UcuvSrPG8k21x2+W
	 XZlVjM7dd1pkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E1E8536F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522933369.32295.17803280770458866749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f30e335491341044f4a26f16a5416e2688bf538bcb33a595137c7fab314ff11
Date: Fri, 03 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775229333
