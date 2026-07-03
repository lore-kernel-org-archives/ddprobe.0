Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB1740855
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783119514; cv=none; b=RS25C5iRS+qeN1GcuF7TU9+IW2ninbiJJeTqExhfskJBowvK3dFyB3ArTBp1W/dkyDB4Ogd5hSIDLgX1TzENZfOXT4DXlht4w4rt+KoDdQY4T7DSgj/aZYTSoQzAUccXGLlqW20WGc1ek2TPZRcfANhr4Kl1SUYWRWdOeej77t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783119514; c=relaxed/simple;
	bh=ncxGZPbE7f0i58XPnD+tLOPmjQwOuFvGYCPYpFK0djU=;
	h=To:Subject:From:Message-Id:Date; b=NGBbhuCajek9RS7XESavPu1m01XphAjMRVrds8Bk3oCA5oYrV+vp1qO545CZ2dPiM8vdauvCIsiAZXm9BHCOFftpcPN8uGnuRINJht8pxHUbQlJB/D8ckHe1CwlGTU1vnvuSD+cPH4ADShi9kmMieqrj5TISX0ir96t6DXqO7Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxy4nRQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxy4nRQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDBBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783119513;
	bh=ncxGZPbE7f0i58XPnD+tLOPmjQwOuFvGYCPYpFK0djU=;
	h=To:Subject:From:Date:From;
	b=jxy4nRQLijq4wCDWJmjmV/tM3vFCDBXYnTyYpK1qpH3YQdBh7oj9iXtjIxWqzVRT+
	 ganqZIm7+W22WrrUNlx0J6lDp532b6rZYVB09GwIIaFxmKi77LCKG4j3UgIeMPe9q/
	 jZ25FsJzWz9zJLkotcO09+1S6k3mCHtMj3WrmX0YKtgKL8WC2M1PbBuJzyBTVywIbF
	 35rA3bgc3FzDwvtyZCgdAT4AKk/KdDVjhhcRBtug8z1GgHqYCCL3xPwQeG/fvlhXCT
	 7dC/2/d9LHdlKUwTmPOUTg3O2n21NZjbM0kjLWaHKkUQBuV8xtzJj+K9V73I9N1mTX
	 T6GgvEGYP1/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE184C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311951368.13350.9906715514469727715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8a67a10c837d68b8971466d14b0e58161b2d86b5d21664b304bb480dd84ca3
Date: Fri, 03 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783119513
