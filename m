Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4448F4D2EE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787856634; cv=none; b=jhzWWI+4Yy2qahfLg2uUAyXAvCDSEnh9LBq3vdkzWWuO2slnPBL+w19hQgn/UZgcNaJ2IfFBr1tQt13g5smLbFzZYc5wAuQlFLhsJYI3/A0H65lrHzxRV8MOMuEU8ELMf6XBAOtda+PJCLCFhIhv9+eqMrcC1KAEuLeote1jBxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787856634; c=relaxed/simple;
	bh=h2eaO0FXWUBTDXHu65RQMakBHnSNLpkwZCzd9BVVZN4=;
	h=To:Subject:From:Message-Id:Date; b=Z/Ug6s+R0iSHLxsQ5b5/yeb+I5nV/Fs8N1QwzgZePvyQpU2GwS4hcEU+sPSZ3oEeeS3OjAgVBBodI45uhFLb6aB9CXyboyk3UiQlSBzo6eAnuPEWr9aSA1/lNB1BpGeSlNb+Dnfg86zgCRhkn/IuxHFrk3s5twxs70WOcZ/Ka4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7S7GE9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7S7GE9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8FBC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787856633;
	bh=h2eaO0FXWUBTDXHu65RQMakBHnSNLpkwZCzd9BVVZN4=;
	h=To:Subject:From:Date:From;
	b=u7S7GE9PTi7TyKAyrfsrdbK46OZKlzY6dEJ9akS7iLkGBu3lvHY2roH0pvX2wHgKM
	 CJm3NtkKMvjbq6RUe3llutgE0NgrWKvf/niWno9SAxkfVaLkO0zpNP1SE7e5Zuu7L5
	 PnTNJAViOpwlOyW9wsGiYvAzgSyPSJIhT/XR4GPrTAXxYEb6+XXZ8/4JsK8o5+MSTG
	 drcXeZCXFTM3D8RzW1rcFNVLv1bd9BdadrMI6uCBBHsfzU6KGNiu0RfqZX5XEz6hmU
	 sO6eiOd253Gk069P7gmxqgU+dfKeQQ1ip9o1P9V+34f2Ollj5Cz1FreweGkl0sn2Nn
	 OBY+iCmesBySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0EAC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785663368.7584.11751484189608168699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5758d602685a305821f7d1575d06be12b4c8ed15df5b8bbd3f58b98fe7201d
Date: Thu, 27 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787856633
