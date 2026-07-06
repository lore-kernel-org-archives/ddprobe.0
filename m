Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A8A351C02
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783372714; cv=none; b=UGBFjVhq0/cMVLCyVRZzILGB3jKE7y7YwnXd8rxKfawkmAsfnpItHOFuX/EspoOvYmJ08v4/0CsbowDspgjgqKVK7NejubtaWtI/vT+gfNopP3JEBq1uNxgi15dNEnKgiE/C5DaTnXxYuzcu423UPnixM78HLxwo9u4P21yeIFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783372714; c=relaxed/simple;
	bh=dL0pLYJ0s8d3h+7AALuQNR5ehypnDxS0G/0m5M275L0=;
	h=To:Subject:From:Message-Id:Date; b=lDrBUOfQ5u9rLF6iD5wP+B2JInKElIfXFKDgumxpbDMMA6woYtx8ZkVPL5Fjs6a6ddUEoJM6xq+/aQtR4Cv1TAU0m/6TKzUcwMXpMMtNBpIU3XdkLO4oZZsGCM+gZPqqmcN1TklEMn7Z5AHQodQZ5tzQnHazC9AbcAS00vxFnq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pss+xoQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pss+xoQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF615C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783372713;
	bh=dL0pLYJ0s8d3h+7AALuQNR5ehypnDxS0G/0m5M275L0=;
	h=To:Subject:From:Date:From;
	b=pss+xoQpgebUIyDuwutIhavHbqVOXFHWNxQa8vAqFYe8wXsQWf0FDRtqsOEsSgejf
	 tG3mbZ+bdJ/1z3Ewo6AQZduNDPmRABabekt0fkLIHwsICZ9WD8ylvrvbegnKFIRVMn
	 F9YNLhYYqH7l268r0AjhAQYTpd49/eIxNEfHYo8+tzT41OS55r3NWlSyEx5O14NU3e
	 kFneF24UL4rQwcwiGY1K8E4jB8aib6GGd1q3eBwK0wYVmWiBhTwRGBdj0KJ2X1iQS/
	 es+DcYHSa86fCRMjIJNG3y0i93pLXOOpULTPNw3xmOzFeoYjxXOYToGj8wGlIOjHtk
	 6d8Q/1vIoVlnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A9C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337271368.8153.5879402263263484322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d147e89ad999cb7374c5b7e15fac789c25aeef63fdcb82a0072b31c3be89263
Date: Mon, 06 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783372713
