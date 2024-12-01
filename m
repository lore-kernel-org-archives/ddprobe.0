Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C3B1D1F40
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733061354; cv=none; b=BWouephmUsKmG+rGXvVa7xeC5hZ7p0k2Y3HczI1wwGOciiX7aJ6qIgnqSR92Q0snIg1Vb4b9w1MsWAGN4OfBdM8XhEJVjAn4z+dQFKAzGIM/HZQRauoRB2KsJNpbpfm/fkMmqhVzdq5b2Ort7StHqcJW4eydKflDUBqnjwldnSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733061354; c=relaxed/simple;
	bh=5846Rwuo8ciMk37arjgd9wUiy6nSri8fJcQBWIc5+6M=;
	h=To:Subject:From:Message-Id:Date; b=KHmOBlp4b5RsXu6ddu/6/XAP/PhSNNg7Pe+6bWW9crNPt74IXaQX+7vENvAyP5giSPvCsmfD4WXjnI5HczFAdasgXFLUBg7dwVDgBnwoFHduuNOHgCBVdUNIYnFOC2gwId7C3IPdxTS2HN9cz260DV1bL2njdOL4F2vPJmQTzVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYCi4+Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYCi4+Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAB9C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733061353;
	bh=5846Rwuo8ciMk37arjgd9wUiy6nSri8fJcQBWIc5+6M=;
	h=To:Subject:From:Date:From;
	b=RYCi4+Oaqaj5RzkgzaypOGpsmQb1ifH46HiF1FU0hxrnXj9fSrMVlX9axUXDGT93w
	 RdNX/QVhCnLXV8w1bnscw5MXKKE8nQO9y3cUfgaLPEAuR3nqZix1nsksfK5tmy8YXy
	 2JjcAP/h/alJVA9g5T5IeWJ+8uS7fvw2F4uQft66xdc6AjPjsgR3cvYnXTxirhcX4j
	 UCSwadfMIzbn+kcrGUF6mWO8nJKj2AKdF4D3r0dZ8k4MVU5XlqLrtk/iQVjI/brZm3
	 UjX4H8bY9nS6MYuCVNSJJ1+WWBgjsDkohp8UVYQ3AaXw0NiRTGQuNlvRdeOJJdJLeK
	 OvQgeOH2InBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E2AD49773
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306135362.14976.9985784305953568330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a04c348610126657c50d91ed6b690f4449d8431af3a5c1e04422cc64b236298
Date: Sun, 01 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733061353
