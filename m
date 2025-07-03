Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE659158545
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751507393; cv=none; b=teuH+D4VfHicNNAYH2r/G/LYiow+ighX8QBE+gzNVpdGubVZ1B4hq13zFVYp3zqQpmC0polvsshO5SO4cjoIs2uMfGnHGKPJrN8rOFH7UrDzjWaYzxR+njE6q9wmszupE9i8tgK/tZlOCFh0A/E4telBIz0JZGATRJiVE5q6HIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751507393; c=relaxed/simple;
	bh=XZ1+LD9Gs+s8+nH+mggEawabcG4M845jgCcyINbHgw4=;
	h=To:Subject:From:Message-Id:Date; b=muNdu1oIo1H2SYx2F41srkPzd2Jp1jWDYy5TM//pqJN0Gx8ookzeLs5Jy56f65zpBfli1jRbQqlKWqhG8Jf0HdB7LO8p8vlbUNj5VH4eKb0jOi4glrDkCLbkUjGUCFMdivsS/b7y9AMjTZF+ZH4nA39jGrJwiPBvJUHJYBej414=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcyCuDOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcyCuDOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751507393;
	bh=XZ1+LD9Gs+s8+nH+mggEawabcG4M845jgCcyINbHgw4=;
	h=To:Subject:From:Date:From;
	b=lcyCuDOqQT/WzaPz9fHONBheBdPMHIJKrPhyIIv/aIdrq0/z76k6wWbV+KaFah41K
	 /dQzhaw+WSIGmBrmhZGLq8fjj+2cLLwvQeMQolHAx5mX93VN69Wzl2a1RKYXK/P2jc
	 amRK3FaipBdDv0RneKqrCA4nn7jDQQL+JZ6PAOP/yy6NIVefxLz2R191dPWc0CHyjA
	 yttctmR1zXFOcxcSWuyK2xlIHnGUeeJ+/v5l97UcV+m9N3ciRlnLayGtIgx98oq/7S
	 rl/kPYwG7pEHXQdj188OJow04ZhYKHgNpcEZYnoUWg1XEJdpiZlyVgV0gFMnLWv5J6
	 Kl65xzsGXKikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C76C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150739358.26688.801017377346053130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db03061cc9388fe1fa3be7dace8997e7c03d98fd40f9dc13eed2e19765433db
Date: Thu, 03 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751507393
