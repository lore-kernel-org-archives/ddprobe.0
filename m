Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAEE241686
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766543034; cv=none; b=Y+5KvsLlNFugig4dzlRbi37M6z7C+kGGJZ3y8NEpdguXgXj/6MSNRH1P+ZH3JdrTZlQ+4x4qY6uBKNw8xmloBjDdP7smgrewQXgR1yLfHzc8Nj0FT4fLDuqjRzfFhW9neKZcAK69T7VV66IuGyHXDYVBkFIJUuPjMYom+4IXArs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766543034; c=relaxed/simple;
	bh=4fO3E4MZq0ox/hXkdQxdx+dFzRz9kCyw3dgjWgwq5j0=;
	h=To:Subject:From:Message-Id:Date; b=rvNPjFqYHRTxqGlhX8ao2qFZmJMPyV1R/LB7BTh3ZbOgfy833Mq3GEKegpQZ/zQn2Xi3+GUg3p7vG9UZPtr3qDF5IcHs1LdDDGU+n7j8vXOmMJJ8GuW6tLEjjt6i8PJ1g3QghGxW2gHxjaBzrPOvwRIoum0o7AAMXg+VyEeMtTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO7Q1ury; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO7Q1ury"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F3C116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766543033;
	bh=4fO3E4MZq0ox/hXkdQxdx+dFzRz9kCyw3dgjWgwq5j0=;
	h=To:Subject:From:Date:From;
	b=IO7Q1uryXt9WGHrdsB3KUBjDsDWzzIiZo9raik140oIhNc/AMGOJaZVSMoWC+Z+Gf
	 OhxZv7uIFOnokRgVdBN+z1ovt3E+gaZBWBLNkMVcR9+64AtlGuRtJ8JdFzwZylUjlu
	 ju+a5+aNFFacf98DzdMvWoKuz+e0XHigrmkf7gZ95w4GgH5PNYd49/7uzXJeHEpt+1
	 3CZwd9xE6hyIaa+R9ibmZcIWH/BoclpiL2/NRwd3iduXUjSkxLwE5M+Aj1xVUAWtnL
	 HL0Ktm45HuEPIaA3v+skxxkgGtVsvHX9V6ZUbRdGmRBaDsCe7ODvGqaHknDHR+3y0k
	 2RuSZwNnjGhNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A41E6B279
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654303357.13225.12911492322226280003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a9360768f3afcae057e28479b710df75c6a19da8c30707c1a20055f6452785
Date: Wed, 24 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766543033
