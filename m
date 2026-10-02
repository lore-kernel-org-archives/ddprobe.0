Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5081B3AEB32
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790978434; cv=none; b=MmL8E2CcwQJIq8Y2tk6Sz5WRJioIpXtlQI5PDmAqg2y9AXfoTSmZI1wE0+o4FcYH03wjmkkJNTaAN4TFU7yoUZFUg9d7cxfJFfipfNafLTGmleTYMWZ79HOkITdE6TeNJCURWaIRxrr/XrhBhCdB0yrQfSY9PQY4j5c1PPMtHdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790978434; c=relaxed/simple;
	bh=OiBBr+acrX3DAUul5Ba27WSkic0TFKJTI0p7YIauA4U=;
	h=To:Subject:From:Message-Id:Date; b=cI5YhRLVVAQywrXDNFF/CnhTIckCB95gJtHTv+J+kus3CUW3I8sfHeeYBQuAp/le6lcqiHRtLwy2GfY83j1pEaVE7yBOO3x+9JOs/vF3AwR6mO3MbFFAzOZ1nsuPAJTrcSwLkrf3LRq3BYr49fpzexH2a73Qgv75/BwUow3QMs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA3k4bwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA3k4bwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFE2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790978433;
	bh=OiBBr+acrX3DAUul5Ba27WSkic0TFKJTI0p7YIauA4U=;
	h=To:Subject:From:Date:From;
	b=BA3k4bwYWg9oQ8CUEI/l5O4ioTzNDVqE3565uaO3dTmPkb5GAlamCOSeGD8JYqu/v
	 vjn9CFRmkI8VQB5Gy3ezp1BYuwoP9hsMCHhg6KGVnLgYSrdVWAK5c5hP5q2HTKCufv
	 WD8Zv8qe3EXynVaLc5AUVfc4vciN8nLSzUM3lEpi2nGR+ofw4ehWw/Mvm0VXxVuRwr
	 +0ZkU0qNAPvwQzWfwjVQPyE6VZ8ln8aQozIjz1gl4GC5Rmyoq99WNJoRGQ7sM7st/S
	 3cFe5br/wBCorSKYn2rnFpzrQQnV3jxJNOb8fCxf8fLzKy6P4A+vGGUWKD4QXqVokR
	 sAAOGqntPw2GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF8CA5FE6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097843368.22815.6247442487769072296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2e9f801f59b82c6732d964fc446f72a7311f00654f09530ff769844866ab87
Date: Fri, 02 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790978433
