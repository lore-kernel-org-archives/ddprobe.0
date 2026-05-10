Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DE1214A9B
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778397634; cv=none; b=VOlJ+jZTZVe/ZUamIomhFubCQC+mBEB+VVYMtMIumb5w6BPhy4CkQkaoAh1zSDf8BIVXNAWWjtYFFABEy78NqMrr/b39dOssneCGMyHhLC7wKTw24VKrHygbFPm4vBmZLhXBDKCAFaZ1A3LwcbdUTptwHnGLtwmN6G+2FNJgbMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778397634; c=relaxed/simple;
	bh=nER7A4vSFBLBkM+LbZeC2zUCnnpqJTbdlu+zEJSjSwA=;
	h=To:Subject:From:Message-Id:Date; b=LPpZl3mFOjszl6PuBT4JxYIsAal7GwZkBS3cnwRIZuUOA+wxenwMCD+9ICsgcZyd5uN2Qv4GSX3tFZ66o/8MH3pIa8/bjFVQ7D3Gi1AMBnz2owJ9sMdxDLK3auj2lFlzbJMO0+uhA2DwXcXuwXc+fxMbunyqQ3OCxTJ2QmFgxuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8VMLAqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8VMLAqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88DDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778397633;
	bh=nER7A4vSFBLBkM+LbZeC2zUCnnpqJTbdlu+zEJSjSwA=;
	h=To:Subject:From:Date:From;
	b=g8VMLAqOohvwWTq301ujR93o3xL6v4MORjIGj2zr7UiRmoXf+ERGeFRGUzf2BN3BZ
	 mGE3rumwVpzG2R8fTKmV/e/BlX40+1pO/LPr8a5VdEl1Hc/vAnEeApWUW+t9hzXy/Z
	 sj8QU+C6tg5RAI5CBymC/FNBujUPu8u8Z46gT99y5bnVrBQEvAeJ5ufoUj91umZeMW
	 2Q4VbquzH4v3fDedWX10Xfzhfcz2k4th4oMry8nTCADL5W9cdpzE4p4ZvzyLQ7ulcw
	 BfUG+u/ZW/ZLE8YjxPtDu9vzAS1Qb6qRIAeD+5+6Tcl5CH14s8JJru0DQE0a3lvRzF
	 75sVg7MaypvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6999CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839763368.25557.11989011850773291050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ede8674d682f7f0ffeaf3e86059aeb7621064b9844522e8b759effa5e8b8c89
Date: Sun, 10 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778397633
