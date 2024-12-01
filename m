Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5594018EB1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733039154; cv=none; b=Ket4dlVsGhw5ZJSDGBHFX/uZ73vyJdotvkAsibt9SQlpB2XSZYCofuvRIvVMUAeRyWOCplA6a1vKANi56bCYlyguQH4EVZylIeQD1oQIHNEkndv4KReyA0ODrUkLInDVZK8izuFsUykePciJRiDQqMlb192vUOOFrN5iat6KMqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733039154; c=relaxed/simple;
	bh=ATjNgoKFy3Dgka60uDYKfH6wYwNoe1fxuOE0EiebmpU=;
	h=To:Subject:From:Message-Id:Date; b=YlhatwLh0qcI+AQG0lPvrjQ8E7YtGguBQBBtWG5QfBgoXzt0BxXnC1eQfzJ9/+lQrKUTfv422kOlQvB0AoVQnQ36Zn9Vh8ZXfeY1AxzX5ZYtyxbndZ/JJt2kC+diCPfEK62Ht4OyIPXkapxhUEkm3K86Tpa+JPMEl9f3rCOnAZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfjZKKiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfjZKKiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B07C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733039153;
	bh=ATjNgoKFy3Dgka60uDYKfH6wYwNoe1fxuOE0EiebmpU=;
	h=To:Subject:From:Date:From;
	b=pfjZKKiXh32xsq9XTH+5TIJAIknnF03bdZKWMxiZQkP3Hl26YopwUukeznhuGYpOI
	 dNAqVdxAjm/d7/us0/96v+EGev7uBz/U28mpDm9oMx89PTJB9/s8fTbL8n6UwAiD5C
	 rlo0+JM1K9td0MJW1kN3/Vj/jwlGyYpCsj5dvzaDVZAg8D31YnRzdqqWp291HBZMxt
	 V+UPyROv+NLhtaMkdB5x1QEr6Xp8qgDyeo3w3moUPxf8VejA98QsH8rtEjow8o/bvr
	 oDOjsF+e7eqwM/+BciYuxepYK0eJ+wCmCaRNk0XisbFMDFXWWOBM8MIKeRLbSKyWbW
	 0WClZrohle0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A462D7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303915359.12634.8723193724245655757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6fca7349607c2cc1197b65613c7a7b4f13fe9819575ce6ce8f1a14033707bd
Date: Sun, 01 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733039153
