Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166741E9919
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755057594; cv=none; b=FGgYD4SjsqPlcUKbtnIIoYciPE8odnbAgwO+4IauuUi/sKo1v/sgvu2rqxpEKWndbY95DbYiPj2NnwxIRI8n/SSIAa6quXXdQ1QOmmcVWh6JwBXZtKiYCYKeGXqvaYnN9z/KTu4G0gTHzAN5mGJ56qDkHBvv4UF/bL/pkjTElUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755057594; c=relaxed/simple;
	bh=CQuCovl+18K83fTAPP809rbgBv4/PH9ivnitFQ21xaU=;
	h=To:Subject:From:Message-Id:Date; b=n+1noPCT5qUlOps/IZD02X6oM08cceXKFerqkd+6h9L0juLdO4DVPh4WAdN7Hrs4fuxi0AjXpIohsivbxXXuG6fafmv20mWmHRaXoELwKs1zFaBKJUPYNeafMPhuFhNC9JlPA5rtcbB1wXv4NTK/PyHQV/X+SQ1O/KACdz9X0LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWexhTQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWexhTQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1B8C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755057593;
	bh=CQuCovl+18K83fTAPP809rbgBv4/PH9ivnitFQ21xaU=;
	h=To:Subject:From:Date:From;
	b=aWexhTQncAC2hEsoTNW8A3SBjGccB6ykFSQOPI3eD1WHMjcpr5ulfLbbmRDiDcmAM
	 q/URkUqbgbRSEHq9hHX139+K44cMdWyX6BQGNLLhgSRveOmOqtYjdlmCupwSJ5B7jT
	 rQyU3FcHMKaONfcEcNr8p/2DR+8tMD1fuVQX4oGYUBtLsMMQ1Wm2IvgmTRWlMJy46E
	 L/hOqS2gxcvSvqtVOV3RfvYe7wk7RmX5IatxMLSYfHuIHlL8RJ7MpFGWtPuXqItkID
	 tXC/Of+gDvt8XZNsIwltmdVJx4BZ5UkS6DkwL8vumRGIgqtxepDU/qT8ty28yTGugU
	 /syVFECEkLPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A6CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505759357.22145.14408081608438156210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0257e305fbba075be1f1190affd4985882403ed4ae668c27a0daf9720aa3c505
Date: Wed, 13 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755057593
