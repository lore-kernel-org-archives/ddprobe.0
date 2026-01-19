Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062C3339B37
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768836234; cv=none; b=eNV31AcNdpj0MZQS+j1DK2ygKOr6wmWE9WxyIBkWVtFZb0ZqGqIyd2KwzXZ8RUGm+3dQPj1PjTNQ5imoGP//sI5CYDakg/1Du0Og/XlhaZGtP23MfOgqYwoO56UPNWxAUkBY8Gl2IThTdqxzqCdJ7Yv5womyT1LKSlUaYzXkDWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768836234; c=relaxed/simple;
	bh=519taw/3Fu/spxdZHHrsbZ5EPWys0LU7vf40fCBKKGw=;
	h=To:Subject:From:Message-Id:Date; b=L3K2//QJ8zaIKP+AaSSCrF8349zlI911jn5eaHcYxe+LNszrvHi0pyb2rB5bTqsJz3wTFSza1kOkV5p+Kn41j9ksY6inMdBiLPGpVrEXPraQWQlpQZoDPilwB7g53piCmctmGf3scL9lRe4wgaBZU4tqbcHL8QGBymBJFftRjdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTtRkixU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTtRkixU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA0DC19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768836233;
	bh=519taw/3Fu/spxdZHHrsbZ5EPWys0LU7vf40fCBKKGw=;
	h=To:Subject:From:Date:From;
	b=fTtRkixU17UgG3/OjKHLYxiDWVTHTAAdgip1RuWjz87oWVCOWxvryFet9NQJQgjKy
	 XcjrIRulMgP0BMmd2T5aZ2aIhSFNJGTNHr3Clps0xwEZNvO/Q9OFQxE/diNKjlyTxV
	 eW78YIz2TdTfA9DJaoXGjRmBOQ/wnOyU5Ac/VAyp6I5TrnPbZEEvQMUQdalB9+sHE3
	 kyTOfiHgIIrDSZ/sgsjszJccUvyy6prtibByRaE3aFC4BNKpZEh12GaiA04BGEzMvq
	 8mjMbC96TDFnbOUNOWA6I1H9XunA8dhl+El3QpWo6GUNj7TCkCVUYQzFdQsjTcVNx5
	 JSMKdSV6bjUDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE4D29C33
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883623358.16601.4604806546094003909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0cb7fdcb98c3fd791e33f128a713704a3f4e2a60474efe07d86f865c3ff19b
Date: Mon, 19 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768836233
