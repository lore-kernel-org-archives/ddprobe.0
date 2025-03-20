Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DF227701
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742470795; cv=none; b=c3+LoetncE85Y68BD+CO6WTYZnMgHozgYsRdvAU3AB2k8/mpUGqPZZrOZKlNenaQngj4KnbrMmdjm9wDc6AM+lVwUIQ+TSvbXWoz4Qde06gBkVC8fcUcoxOY4uiXdUEzhQD28UpcysqN1IgBybrAeGiayWLLwLcSaA/nY6wGLGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742470795; c=relaxed/simple;
	bh=mV9RTQZe0T6e1HPjIL6KZk4CRiWwKLaMpY2/UOf67S4=;
	h=To:Subject:From:Message-Id:Date; b=P9p+Q/DXvgEibEHgc6Hxll8O3S1l9QjEe5BDV8JgWPEeVfyxTgt0eiBx04fnmiVOuEQ8u2HxO1zk0I/O9f/I1yB1FfTwcqeIVUSVuMGVQuSo5DJuUXSgExW9jc2letAEiPWWlgxeJMwskqtngo0kJ4La13QWCJPnFxQZmX8FCH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTAE49M1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTAE49M1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF603C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742470793;
	bh=mV9RTQZe0T6e1HPjIL6KZk4CRiWwKLaMpY2/UOf67S4=;
	h=To:Subject:From:Date:From;
	b=YTAE49M1y3rCmdZcjtnQ0UY01c3W1UjLgYpjd0oAigLAtSEBv5XlT0bFEw60Hly6H
	 mKJ6Jh3TrT+ueVQ9V7BM3NoEnHUIZiC61lYqzPDHzmJLNKkMeqIngOOwW25tIXXAqI
	 c1v5hMGeJzGXaV0sLfEepzrPPHSzPBaQwnQSA40A35EQ2BWxbZqmxREmF3eBsFu5tK
	 ir4aP0bbHLnEnEBNoQZbIuA4AC9CmDjgF3rM5rav9yLInVNz5InCGGvu7/EWUom8mU
	 iJQZOxvEInMN2feacXGCOa6pVRdIHDAuhSYRsREzGFRmCQAb+lgdyOF1sudsLNuZjM
	 p5cBi/w+JRh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7BC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247079360.15270.7430594554282768958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6856ea24d1d908c6b5a735b04fab3087088c061612c46fcc194e9aa245a55bc7
Date: Thu, 20 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742470793
