Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4D641754
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777778254; cv=none; b=aNYvZyk+ln0fIX8E1RjlQ5rUdME3zbZsaPrMuFj+yufB8xH8+RIo/IT2AgJe4FTiDU4x6dsD2GiaOptsEgX7o4qhIQCpz+4JUGoVg4MqRxRU1krhLe/98qlE92T5/IEzvVaNt6omqLudx9vSJhqfTZmaLQR2VusP7AXJ6tG/zx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777778254; c=relaxed/simple;
	bh=KTq9j/8j048CV/ODESAaqy3haSMtRrxLujcr+gM3rtU=;
	h=To:Subject:From:Message-Id:Date; b=OkI2iy4SPSQWcKURJO+zGO1JKcdEYmo+kJunDTgnB/bOLhratjzfHViHwcciGe1bN8UnYmG1uKyjXhsQPJLnVXQojtGEnpkOtwJCRhFMRW+jkU06GUARFzatomfEABPR5ZzaHTrFDTDkMcbpq8xK/3dpOsJVxUOYFZrOkg1ST50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX0RPXki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX0RPXki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08B9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777778253;
	bh=KTq9j/8j048CV/ODESAaqy3haSMtRrxLujcr+gM3rtU=;
	h=To:Subject:From:Date:From;
	b=qX0RPXkiZ1512VHww7kSi6afz6WeSiut211KVGgAeOYJX+TEx2d07S/pUJHkOBDff
	 RZdTc3Uo6+5YHRKbxb0oGjf+YMTlNOZcusrWJMQTl2cDYxhmaUBfdvZvJskbKsoHPH
	 yUcuBMG/ut3GQwSgFNxoKNgxaRMHVlYuzMUbiIu6sw0nMHbNTHzwbe8uLquroArHYD
	 trrKpXdpdzq0cTbNmuU94VWCT/f9TbGtPyJ52aSw4lAkJd6JmV1liKrzvpOIDU0SQF
	 zAaR/N062PQJ/epwLHXZqbr7tQDVhSrmLnKhGtpPq6idIz/NDNaP+/Z5vezCyMezMe
	 EZuMOCYyAb9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC09CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777825368.3478.17266777802995875771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69966f846a35209a18e91d871a44815cc275b90fb4ca6dcae9453b240cf4c01
Date: Sun, 03 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777778253
