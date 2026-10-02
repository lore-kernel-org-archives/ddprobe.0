Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C662DF13F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790924434; cv=none; b=j98tADjsGbllF1b4BAeAvRkVXUPVtV23RFOYLYedj4TKHQ58guUXpbbCbwxJgOB5K+j/bEg+mCug7R8GykbtFAa+DjLrleKSYIfeihDUwH7dq891fg//3lFWpT2+HNuCBgOMPuY6Ag3n3PEtgw6wwG/kNuIgQVf/WXo4SJHZaQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790924434; c=relaxed/simple;
	bh=JkfcsY2cwE2tOBJClx+L02rpQ2rahLhacMJyBV4UB4E=;
	h=To:Subject:From:Message-Id:Date; b=bJSjwPLbLX4hoPwAGPbvsC6S47pq6n18q3rS/PhgZWw8gAUWocVf/T4c4NpKXizLMsBRg99qvx1x8VNI2OBkRqSWMmjshuYlKz9EEAOMawtBKziSNYEIiFZtgwb/in4RZTshtRVRF4/yAi/ocVN5bNl8LoWB0IKq9TylPSCNVYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/VScXsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/VScXsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB900C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790924433;
	bh=JkfcsY2cwE2tOBJClx+L02rpQ2rahLhacMJyBV4UB4E=;
	h=To:Subject:From:Date:From;
	b=T/VScXsfKi5LZ+pC/9wureKeDXxNpfqhyIdSXsu4mwgoNbaRxECyIyUGr0AncUjfR
	 xsRfhjs7GokXcLZz1Q7rgVbvaBIHTCAoY2XFA/sc6iEUO+GhStonxQ4MjcQg6YLF93
	 Vt4Hlbph1UBS+uPqE6rj8Kq5aI8Ge7eBKKLPNk/K7HKHMyA/x4KXwBdORCjEk84J7D
	 DolSI/I37oTmgXAIM6SVaqBtQLZhjyZpmcy9M8PQpgJRFoOa7v6AU3bZxb8v15Q2cu
	 ydMbfjv5f5z3PXAevyV8KJWZf7mTBm0yrHSa5nbQAxXeogfs7wIlRubGT+dTEOfH1c
	 1RYwRK+oXgZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4CCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092443368.25099.5630850401826023303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270e344b704e865ce85f2355c2076cbf4bf82b90d41dc798e2590ecfb9766cdd
Date: Fri, 02 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790924433
