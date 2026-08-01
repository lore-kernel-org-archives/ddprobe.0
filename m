Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5413093DD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785549034; cv=none; b=X88MYUGT3UzyAcJMohhFui/qGWaClz7H9yasUeXvIHyJMFuTKRFDVglzbQvV4VuZC9L2ypdiwOVnLoW39/1ecM5SvmCVkUOwCluNOw2DxT7wmXc7xv1auVjGZ8pH4gfLlhAhx6uO0SmSAWATbtUKE5U0PSKbdo1ycKtDV79gxYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785549034; c=relaxed/simple;
	bh=7zQlutMP0PS8qC4SGceHbgMvgli8toK7izRlEMnuyZM=;
	h=To:Subject:From:Message-Id:Date; b=G25hhgVPVxlg4babPWHnVXv+9P6bQrWV0w3PW0yMXb9FKhbMDR0Imd9wxx0Y6RpUGwN0sHCOENlwyPRH4c66Ev5u/zj80vn2K+otME7B9K+Zx7SUxLdWOCvoOh60oVm5qWKD7KzgHaCULC0ef1cQNDCCR0NUFUuncAXFTZtlA8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta8YevOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta8YevOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DC7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785549033;
	bh=7zQlutMP0PS8qC4SGceHbgMvgli8toK7izRlEMnuyZM=;
	h=To:Subject:From:Date:From;
	b=ta8YevOC1JhrhGw6EBrSNdtHdO+7BszBVCokswmQAM4/CQv/U0g9Is10Q8JeUfF5i
	 vwlcGOxS/53zUQeW5TAXTr1NcPwhsJFYmnhEhjgVpT+tUlMnnGMYbazjKkl3eFeC5E
	 X9/EjbeNDWo7ejfXJlqNLys0wdwX5x3jmnuJ1Etn2lILjhkFHPEF280yRneA6TRPmW
	 LhTJIGZ+qbmyaB0JPkd3uQsTWNw9F4105Fj9W3+N8aXBgfrbtWX4qA62sbebpQXSMj
	 FuIGi15Rw3AWXjmZCzRS/GGc0/+YwS+OeTN4QMRL9jk29dsBZMvoLIjEeT+VWQvDfZ
	 b8c8IB+bNXujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC063C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554903368.29690.9494986968331962486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc34e77d13da2bdd9ba1efe1e41ac891b2e6162558e5f81b7a7246bdd4c728f
Date: Sat, 01 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785549033
