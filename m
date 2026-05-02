Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2042318C2C
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777688254; cv=none; b=o/KBiprFGd0V6qOgtadYgEiFnnNk5gh5FfzpMCMz8wOyo0mxRGRB/aoHEvW8/VAnKvlqPKhFwI3Aw8UaxP+UNQwyxLx7p4YST3tEzoGNJFLVd6ZYaJ6kNPc+6EyKcIZhH2vjb7U+P8Zb0YtROYDAuupAVjt37qkJadSRGTrQdRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777688254; c=relaxed/simple;
	bh=Na5O19Ia9mA9sMEC6zokzialnbU1Y4fUsg1S2UAGGdQ=;
	h=To:Subject:From:Message-Id:Date; b=rwQZ+cW+T6cDDZ2xaPQDRonIEr8IHJYQjEEJLS9oQmwys9P6WvkrbcDh89ofrzEGlmt9RtWiXXrePYzfsWKR4V/02ds97HuZHJMRRHpBO78VKMr2zsZwVth/pQ2libmPehYHgHORYyFNk6ipAx16mMhQ1OlJ1NII5O0Sv8XqQJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4uMSauX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4uMSauX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC58C2BCB7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777688253;
	bh=Na5O19Ia9mA9sMEC6zokzialnbU1Y4fUsg1S2UAGGdQ=;
	h=To:Subject:From:Date:From;
	b=r4uMSauXdLRtbLMR9TfAufSkVXYWW5WtLGC40PFxlL1VAI6XJJLGM+M5FHDaT9K+8
	 n4lpHwLGE+eFAbb3VOVoXd4/MfdJShVU69v1vDY4AkpCCJEQLmuFpWiDaGrzYDL/Rw
	 GePPTZIJNDnRf61Qz9FHobly055q+W+LF68WJZYkIoZQeg95hbyKbNQbcQf9JKi+nW
	 y4RYzewUT8KBxF0ZJ8qzAG87fubOfmrcnHPrGbl3142c91DBb3x/GMH1JjQXsYZTIq
	 RYvoxPyTSP1qxF2xgYTOvNS6th8UkRxO3gk/L416MX4cnJmeaBs/Y/O8OKEVIPC7IQ
	 svsWJvYPjBUXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768825368.10316.16424193924543764460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ace67f9c68689f8b5946c0593ea0e225173460798986d975faf395ff0ac35a
Date: Sat, 02 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777688253
