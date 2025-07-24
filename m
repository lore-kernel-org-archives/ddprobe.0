Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A622192F4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753380595; cv=none; b=CPVfbXDeW8fm2oa+9J+73AlaH6l/vGFJcvBtijPNjUu7jbpyFqIaos2GHCOStJnTh1RHkMLxSTeDVDSyI9KNX6szIhLe9aQs10YExv7AMljIeIy2I6n72nUC3YteN/Q2I3pdu5F9t6KiOAl/UQKa/paG/TWGNP3kpVL9aFJ2wvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753380595; c=relaxed/simple;
	bh=BWdPtGhGZulCbrpY38sp/AwX4F99HhcvXx3qFDfBlJY=;
	h=To:Subject:From:Message-Id:Date; b=cQFvd2YeEpApDFb+RRUs4nrUKOlx14RDK39qYqh8ddNvNSz5qhjw2/WKHuLLNIlWfw/IgORzavNdZlKaK1HM4YgWMJNL2BGyqIInsVs5EcKT49BXYmhHQF9s+nsSVyEjOL0U47sj1MPLVCMN84lWdCxrvpw486AwgmQYr+gpMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ma+xl0fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ma+xl0fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7951C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753380593;
	bh=BWdPtGhGZulCbrpY38sp/AwX4F99HhcvXx3qFDfBlJY=;
	h=To:Subject:From:Date:From;
	b=ma+xl0fbb2fGASATU/LHOC942the2oG0sr+p4cj8+QU1dD9TjOWkLt+dHW5w3MD8p
	 Euemzm+d+Ppb3ieVOe+ZbfysaWWb9SDTqQ4i4UhJVlNpqLiFsuRqU5/aAayeopV/Nt
	 4vRmdoOlIzXnXzpTH6/I4ZVnzZO68mNES0wBSfYPPAVSMYFRMrh9rJBAADZNLCk6MM
	 WiBVic1ywoeHbRgvQmHh9A6rU4qP4LoQX2Vo95nu0k/dVmjqylKcX/WhAfbLO1mE3l
	 f4YJ8q059pibUcnEPmJ4/BMdwkda96/An7S0jtlGodfwOCDo/kmTyLXEwHtkdu1s+/
	 f2MTiWwm5pKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550BC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338059358.19119.1542936825192981348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6706b3ff06c4a3e847a61ed78fada0fdc30aa48fbf35e6ef3e32c01e618f026f
Date: Thu, 24 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753380593
