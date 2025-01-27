Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7A47603F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737978954; cv=none; b=dPCJt+iuuC7m8inTaoRa4H8DuGOpYGCJ/eZbW5OG1NGEUNI0WuLR4gFerE1NqWFYKu3g+vMJVZOgP19F5sQoiS1sc0aeL2VreMejvQlT1nk7gofMq67IEw6sCoTQQKfBODDgnxgEbfhTA/b0FNb0XznjzaM5MegR1U8h3cPIw/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737978954; c=relaxed/simple;
	bh=zdTKljvcEXYdgCaLcKFZnqsG86jdtUWZulDUIVEJeTw=;
	h=To:Subject:From:Message-Id:Date; b=mWrLR5vJYqaGcdUY0rA+S86SnTIwPYFYYQqHnfEGUba/6DzTA5GbhghgBzw9g/jEEs2AB2L4qQPixn1EVkKEUuBXhB2A4LepwuYRB0I1x6JLK479SG/KFG1C3V53jvKl8uSkAUO5r3g0U7hJq/EoZnr4loG1Hhcft+mWZakBXLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su/5l7X/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su/5l7X/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7666C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737978953;
	bh=zdTKljvcEXYdgCaLcKFZnqsG86jdtUWZulDUIVEJeTw=;
	h=To:Subject:From:Date:From;
	b=su/5l7X/1WsHtEoZcyVIqJmn2vKZ9m0JFhbaR63/xhHmiRC7dcM1rMTweOQsQfACp
	 i0E4CEhKFpFxHcfVrtn13P3yknSQWfErUb4erQ36Oyl/6f5cLii4bpwdoVgwwj4cLq
	 Cwb6KNPGBb9g2TZoCWQBccym2g0CDW3uwxXxQ9kTx1tbZyCgTEsuSWm/MXCt7gXvgJ
	 DizDBcor5WCUBrZWxkTeLN5krZlwKBNRy3xsppbanN7hLzwiNkuzN6RVb0dDQ+Ejq+
	 L8xoL5crymI2KxEKhdzXliA9mgTFvLmAD7u3SKpczQ6vas5NQKR/MhOyaZKE6bj7HJ
	 J6lV3j0RH3n8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90020C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797895358.1545.11261038014341842892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c48c37fb10e9f31929c1f58be2cf76ed502c1bf896138ef136f69f081ebad1
Date: Mon, 27 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737978953
