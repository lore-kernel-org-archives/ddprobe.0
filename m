Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA7081AA8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761787794; cv=none; b=Nm533BPN+eN7GJrORBnnNTuhSQdhiSdo76bfdOq1cB6mAHlNuMRJeBUotT1MNov+Hyy8JXJk3dX9M9MNu3VdHRAfWukfjB1pXF8FH1wYgA3woAaoKQCJmVKPA9RHt5be9SIkEOqWfRahR9SvsBDx4Y0S/DRC/SRzzxXArYGUKIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761787794; c=relaxed/simple;
	bh=UiXHnJz4HqDNO6WUruugvsHfNNs9Vls5wkeO6DwhXDI=;
	h=To:Subject:From:Message-Id:Date; b=sXKzPa9EzMn5QDHnKLZ3XsPIo1W8xDCv5cxrytkgkW9eT66AWX+Gdx5USY+4GgMSvhjW2jOn25bAATlR9+j9KwPllErDH/sYGM5oI95uCd37fQA9uaDqC905tJhZuuZSf80MpuswOOMehfYMgQsO7IpNmeOw0UQrOaeKI65rzyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8pMPmFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8pMPmFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93CAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761787793;
	bh=UiXHnJz4HqDNO6WUruugvsHfNNs9Vls5wkeO6DwhXDI=;
	h=To:Subject:From:Date:From;
	b=o8pMPmFDSKYC/72ZGPJQugJYEArQJUQFHii07kRPQZB+g1kedLzLQGY00gZeOYUKU
	 p+bxKFhQya/0TpVgrFsW/AxQnok/PKPgC8sqOBdlHilBYXW/7VbZrNbmnEup9JEjmX
	 UJE1OXAMmXEQrbaWN/A66rPKRr0f0nQDNqTR+8aE3ObAZei6bvgm+kstppPmN6LpaA
	 3DDQsCo57g1eQjVpGfMi1TVma27Ff+hz2K+P9rXBUuR9n2WSKvqGO44cSLeZu59H7z
	 extWmxy3KKu61dwVgkAOAmbSyY9duGw/BBmheLMsWFOkcHHUfSJjQoN61pnDwh8XRf
	 P9XXe/0aVzWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9916CCCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178779358.11405.11661617217928427034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131500f560b2ce54167b24e680e085505209f86a3e8a9ac57990a1fdb88e1400
Date: Thu, 30 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761787793
