Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDFF186F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705648097; cv=none; b=XZ+T2H7hLhGr+6heXHDBY9ySkdPKwauWpQOQ5qrsMLWj9aCd+NzIEvk6Xj9xgZsQe32PefSOH5SGRXFX+ZLXAJZvdLdFpZ0Xx2QTXEKkow5rv/Q0EcPyC73WP/gkBNdvVLBDyLLBo/BGaKDdxW6UXLl2IvMVPLwXmBMzW+dcVig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705648097; c=relaxed/simple;
	bh=tH5D/TDbC4BHkta70edsVfn5ZK+c7UHTrjQz598nhfc=;
	h=To:Subject:From:Message-Id:Date; b=HcXayI0y95NPV1TtF2vAupJe24NfUZ/jkjmBejl4qpAAkLb/yuwAJ7nG835hVZIcNkSqJrPEsXdn3bVu818FnmmjizK6CSLssVmrhlqCl2RMZ5w9azxqqw+G9zP8N/qgpyolhoBs9ryA11KhAb4Gc7Wp6Vqc4FX+ThMG+k5OWkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhsUKFa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhsUKFa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD8BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705648096;
	bh=tH5D/TDbC4BHkta70edsVfn5ZK+c7UHTrjQz598nhfc=;
	h=To:Subject:From:Date:From;
	b=lhsUKFa7ytDUd26jVNyj4RrX+Bntnn7fp7Hh8wrJxsnZpTKY2+tGUkTdiioJPN6Re
	 4gO/hU0YWnyqYcgSFgQha+6oALcSviY3uDssWX16NwdZn8mU1QPvzKR58a+WfaJ5Wc
	 ikXZYxOetgU7Oj9qnbErOfg5BzqayJuoMDQWxnzD1d7KmMpJ+BwfYFFDifTxFlIscz
	 9lD9R9MGF+gA6Rvey0SMz9Fz6SjKypseu+JGWkgG4AHKGh5MyepY3S+xEXoypSzLWJ
	 blh6SxyYFXvbnmAA5KWgnWpMfxAGKsi9kcpeyanRdVw9ZWTZp0GTeJ8e1ZSX7p3cqS
	 02eRXxoEfqd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60461C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564809637.24625.16724992646211879144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146915d05ca10288a61f18ce3675526446c2cfc8967023a5510c6807308d9d82
Date: Fri, 19 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705648096
