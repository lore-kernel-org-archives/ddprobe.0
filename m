Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0092343C0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763728314; cv=none; b=rdB+xVuveHNkT1N5UexiwZIzOjc+YkZV5a52PKLNsvP4SOLcsSg+afOZWEn+lm9q8Z3Et9W3WTo8MQKFEDbBE6urZ8lftPL5bpmW1baONGqUEPTVtAAP+/ub2fFm1nDGIQIuf5M0PbehNFgjtxdTmtSWjIviV3S68Aud/nlAuT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763728314; c=relaxed/simple;
	bh=LW5PjrRuUbhPL/CBhLZyGu56uxc0ocbSePIqgMGnAwU=;
	h=To:Subject:From:Message-Id:Date; b=CsPSJAKw6qQTENivwdteNmzTuZTY/Tuzp/X3cxLpbUUAO/iLnsv5hrnj2WV1SZVAwwpeWVK6OHD/3DlOf9gUx8fWG6WD8kmYuSFyQdv5UoOwLkZgj2dnT/CSnewS1U1GRAcAG053Vof3nd4wjEM+mstwSkeHmVcrdLiw0C/t9EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtXMrt0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtXMrt0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763728313;
	bh=LW5PjrRuUbhPL/CBhLZyGu56uxc0ocbSePIqgMGnAwU=;
	h=To:Subject:From:Date:From;
	b=XtXMrt0x2cGHCZzf0oiHbLCWnwn+h+vr+PrahWNyvSe9GGvPfS/goZucaMZy5+LJW
	 uBBy4jft2pzYN4VXd6npwQ6zf3rxzccnLQhGxntQesYOGz7iZukFV6NlAeMj+pcA/I
	 tQiV0QkAYqiYmI2DohmyQKv7vMxv4W8C6dQgeI/UM92LhocGJYCs/HL1hmJiDF55hg
	 ylBUVP0egQV8fdqljTyet2AM2G2Cz3UTIHzEN9qru38yI1N5Nu4UPUGOTkPbRiu+dn
	 /bSL+oiZFLoS1HmgIjrjY/u41mlT+uDiE0cYSAcg/NYInzX+9X//ERWKurXaWmtAkK
	 kQ8vCjgFN9Fzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FFCFC266
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372831358.16713.3826831175535567508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75d0b8605c99eb54cc7a8b3e6f66db8b9808dbbe2b80fbefc595a4639b9a595
Date: Fri, 21 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763728313
