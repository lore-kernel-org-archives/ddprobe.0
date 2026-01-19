Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113DA8F5B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768781634; cv=none; b=YCx17M2b7ERWWdRHDscYsLh/oCtZqixRBhanFxecEbM7CYlXF4U9Vzyel916v02eWVmmUaywwj5XkrJ4JiyLn9JnexSyTXp2HOeGZpOF2hCVAlcun4Wmg1UI8Z5hroJ60Pec1xYeMKAYdhOjFFmcuBDLeiLDEHkoS6kwB5HjpCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768781634; c=relaxed/simple;
	bh=SDqkwug6YxLVrCpl43l6jKTmuhLL7Rabuxp4auJEi80=;
	h=To:Subject:From:Message-Id:Date; b=ZJ9RacnEa7ROu9uu28wFekIHGR2MgAitKDVb9+GvIu4gEs0zIraJLgsfRaVUeOwavhA7HUAwvy+XVIAbZBW+T1OwN2SB4Khl+mz3LkYAw1mDjlFSUai//FTFnveEmPkF3wAHELDOf484zbfEIlW/nZaP2sJSfjdzBuC0g4qhAOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/lPwzxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/lPwzxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FEC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768781633;
	bh=SDqkwug6YxLVrCpl43l6jKTmuhLL7Rabuxp4auJEi80=;
	h=To:Subject:From:Date:From;
	b=B/lPwzxAECfIbbx/Ct+T7sdUBtfo8a7mCCfClh+sjm3m6+TpgIIW5Y9u7Dp7XqEnB
	 ZRAs17PHaJtjAksq0A5fX3A2ufqS378ckQzorzmjPDerGD/Jv4D6ekUPVuJbhQU133
	 Hl40qX+hH4O+O3x9NwMPzYkwzMeo/3mfK6VYgAatVMhzJcFPF1FIYB6PHw6/vLsSvo
	 Bvw0K94grQte2fz0EAFczGxHEq0X9qkPNI4m6JAJ9dZpfApAaxjoDJCFnwUOe1EDTG
	 IurwitWRo6rWjmxtxW8qm6fSuXj3QhcFbqilZfUqyLpH1dCSBuMuw0Lw4MBNcJumxK
	 WVEUvxji2SOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90596C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878163358.10035.1718265086838494239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57998d6fd49dab7f56a17ab5199e7583b586b8140529d088b0511e36b89c24ee
Date: Mon, 19 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768781633
