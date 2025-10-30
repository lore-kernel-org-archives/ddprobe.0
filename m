Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D042E092D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814194; cv=none; b=O3MRTAqs2zGj8cktXSLzIZ7ylTRZzE3vSIOqQmQkcVWVqxLHTBA159bVs2B/5AtbGD1SGHTJmDydWkKoHq0faV9mT0nhRIgTBfSVRTe0OrAXaXdtLK92TmT10ZzuZgVjHdsJlNGZzvkRAIrNhU8nHIYrT91e2CzzN3Rh9r/KBG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814194; c=relaxed/simple;
	bh=YghakA7PGNP+YKft5wbEkF3WCi3IZ1OH0DG29HVoca8=;
	h=To:Subject:From:Message-Id:Date; b=YwtTdPnqHHh0cHhnsYGk92ODTCTtRzvGuhxvjyOXmDuc/jzupnskADKXuLJny54nz9G8PXCuksW98UNvdSdcwE6slPFHp738em+ZVt7hCW8ntAiNYIaCB8AvKXx6ysbZIj3iw6QNaedNEtIUtKOiouA6XNR55B65poyFFxK2n2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi19pIl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi19pIl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFB7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761814193;
	bh=YghakA7PGNP+YKft5wbEkF3WCi3IZ1OH0DG29HVoca8=;
	h=To:Subject:From:Date:From;
	b=Oi19pIl4zbTibDF2E/cHdkkL5RhysR0Mu37yQx9xXEWJcqOpE9Zf4vNFe9nC7pWhu
	 fp7mquAZYR+rjLG+Fv2vvrIrOhd2jhsHLCZfBasPQ7YBH5MbY6cAYLnqs80IyQYEk+
	 f9P04bPwDvbKnd9JnKn0JBOmo/g8VbEy4LnkPKMkc10LBTLtAiYvGl2j2sa4FXx88G
	 CSGTKWP3lo2sTyrbbmm+WN8vtWVD/7cTcLYNQQvGiGA1g+zbM4s+oF8icEBz4unJI0
	 SloccJVpx+ZDi1o1EGmh3dcbW612oI4tciIUeU0ydfuI+IDMO4fU12LWsHaeOjoQFt
	 9PgBC10C5RBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963C6CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181419360.26702.7395357552951532850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d649b7088938809431ab7c6b7d7e9484881544f223766f9a100a4c0a2bb55a9d
Date: Thu, 30 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761814193
