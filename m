Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366A72AEE1
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775240734; cv=none; b=h7Hm56CkllVxnoM2TY2zD7dD9tWfWZI+v9CyYMRIQouv5EZdfNMUvDnfH+bd9iD58/nyUb97bcdm2jvwS36twrDBW7rMgFZMT5Gx/BiBrybao2usRUyQEz6CgNxGSdF/wsekOOyeyI2WM5SYzo9/F/wFJmBKcmxORpyhmSfXitM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775240734; c=relaxed/simple;
	bh=YBd/kRnjN9q/5GYNrYzdi4JgYTs3MB5vrE6ZjWHDK48=;
	h=To:Subject:From:Message-Id:Date; b=EXDMewarpFzgPOvoXFckA3yCsOdyP7AlwfB9+KMneLlzb2q2q+KlPeQPG5LneRuKiHLGLM2oxT+z503FHn8cJ+lJ3H9dehAoDIXa5w55QHLyYePZ8TDHhEQuhBegsgcpAXDDA0WQ5Bb93C+4pgvJRkExg1+ePFj5RwocSiEmVq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgGLMYUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgGLMYUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD349C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775240733;
	bh=YBd/kRnjN9q/5GYNrYzdi4JgYTs3MB5vrE6ZjWHDK48=;
	h=To:Subject:From:Date:From;
	b=sgGLMYUfpZ4diN+I7NB64uQvSHc/onvO4/i8nFSPiRbdzwMVeOOKTZGsW7fXnueMG
	 CY09Awm8uGVhxt3P6R/Gm9awf1fqkkWXp5dJVZ9pX6FtGHwM/kYlPuoIvqH89vim4g
	 Ms7HTrZY4+asLV9GaCDP3szpjyEDJ+nnPyROTraWojCdrQYPXMtnTDatdwCjkaxBLG
	 cDVsruc1YyCkHKpY4UkVM2HvyZ4g3Pvh79G09rwY9mvGtK5w/CF7MBIQn+mQlWfY9l
	 HHKPShONLFoAmmh9BDkKWdbc1gy5a4da5uAq6NJqU1Fx166CAmSjZ8f7qhXDSOEX+H
	 VC8evpt92Fv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0389E85388
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524073368.21952.8530202097878837405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b235f3167e2f54a96a7e18fb6d64d2c6bfcaabdba71bc8553794c1d52851515
Date: Fri, 03 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775240733
