Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A4846C4B7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791813034; cv=none; b=loCjCS/2Y7/EDmuP+yCDM5IEK7xLVfufBVZ58KoRD0KdMo5Yhnlb+iBOTR8EuBUplABdXeGx9cqxbcI+P3lUFLDBOc8Fo2S5vsI0hej1MBQHK7MfH4xP7x7U9VGKSbEfK5SXFN2HaMqdx+RbjoxJ/MCkqGKSqpV6keu2v87xQy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791813034; c=relaxed/simple;
	bh=XYPvij0hK0DcJeVctD63X3dXqrlTcD+u0EeQ5MMwpWg=;
	h=To:Subject:From:Message-Id:Date; b=CfAbx3xlSOQmarPtbPkrDaUsDvDiYhWDAOZ0zq5tQtQR2h27gP2jAdTB11qonkiCBB73pyZJ1TN2d5u2LOUlOAaO+Pci/e/9F37L0oWtbDFBmnBhbYgpQYLfXXiceEePQaYGhW6QmXxBmxHZM6EQPaL/fLPBi9Gpchf/FqznDgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4gl2mFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4gl2mFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65F3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791813033;
	bh=XYPvij0hK0DcJeVctD63X3dXqrlTcD+u0EeQ5MMwpWg=;
	h=To:Subject:From:Date:From;
	b=i4gl2mFtish87O2cfa3oLzHWaR6VzKNSCqtz8TZzpK4HNl26OtvAORHUuZ5lSuLpX
	 v2TL4RBhXE0QvcbaUwflJitx//wuslLdZaMlu4d0p+lzPtHYH7ECttVqZarhp7LVUn
	 +i/CQ1OWcISJwDSuZH81F2sKbt8a9KOYXT56PfWv8wrtXUVnZt+cinqenIYwQZZqtD
	 7WsmTR06EDh4+REQF2TEKEHXRUkjIcG4UVsBImYVSM/IsiM/gwBENY+PJs4Z5GazhR
	 1+zeZhdUPTPc9HFGzkLR0G1SWvt7Rpc+ibsMUSlk2dUpx37E2WaLbaLvoprVfQ8ZDp
	 f2WIo4uCwiiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00BFCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181303370.4587.13568717446583109092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c13d3b2c1621e283791307eb0fdd17158a403db69adf4c62423085937cb5b1
Date: Mon, 12 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791813033
