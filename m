Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DFE3BFE3F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780421674; cv=none; b=iYT2SgyhlKKXRXcZrnhq1eEXZQcVcGKJSHaS4tutyCQXU0cVmLMNGTLK2gu4LOt+QmiizNLuUmc8goY1/bJOZ76U8DTRkfsjFqOeu6bTKOQ3TQo9QNV1GDFcnCRWkEUDj+oM7qIOA8Bn4EM7MFGOZR8/zJ39gIwNSwC/e5wL5kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780421674; c=relaxed/simple;
	bh=cIquuSDBzsZ37FSlipbMMmRbAyORc67Y/Jyx9q3InG0=;
	h=To:Subject:From:Message-Id:Date; b=dNakRIjUD8gCnuX1YQkk8tINzjP9pdquMXdl1VX1nhkWWZqi88m7L9JpQgKvWma1IfHAnc5bSfOBkUUIt2GpHHwTw/jaTgIKaneFlP0Agb3qbz9ppm42rJOEhUvyQaZ/ESa1l0SSXz9rV4JEBmgb2hXdjbHMqKVtJZJJbDsabs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCnH+i3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCnH+i3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2B4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780421673;
	bh=cIquuSDBzsZ37FSlipbMMmRbAyORc67Y/Jyx9q3InG0=;
	h=To:Subject:From:Date:From;
	b=GCnH+i3grkn9JttXZT0BUL0aD7PUxOSuxcIIUH4KX3bNblzDwT349ZfqE46uwjhEi
	 PY1pAy32DnB70kQQBxGu4vD7uwiI0RE9KW4meo97OsyFrCZ9/pTQKNnkKUoJ+T9pwU
	 lETcniUptWhTJDZfyFAAevSMylb7XPMAzyfNfHkhj1+c0jD4vEjqm0JRYP7ffVR82t
	 9uhCsDAzxSfOBXz1Pw5Iru0+yosPCFVYyWa5CAbggsEF0vXQBZQf94yT5Kc9ouUsLl
	 dEHar5chgqPxJoT4oUWoaVXWn1jk2ZsYByNs714812ZlBjW4IZ2DHrVMUlGIvtN09I
	 emnx3CFMgcbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB392CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042167369.341.14223137953589880843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d541048431309cb35ec123adbdcd4fab2ebd1fc5d23cf272ad8a0e71d32344a6
Date: Tue, 02 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780421673
