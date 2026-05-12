Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37D4ADDBC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778584834; cv=none; b=CtQI6992SGRnN92FF8u8rqPbBGkfxe0jDq3lTM5ckh/IBrlQz/SXfE7Zt2H10GqPv+A08AeDZnD7xHrT6Qd9BLrWEKx1deXHKl7QISCkvilU1rX3iZGzKda+odixGq/BEiOkXKAscKZW4r7j97MvtCnUJovisUYP9+t2737V/8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778584834; c=relaxed/simple;
	bh=tzV10QEapi1qcpuu7uwLXN+zabD2Wm+Nyia01ahctgM=;
	h=To:Subject:From:Message-Id:Date; b=GrPgravI3BQa1xJNKp7Chavf9q/fF1R9OhKVcn6siZWwuNUF2n8uAjpIBfqol6jhc42Q89N1PaPHugoxsQNwB/ajXlFQhA6NYcuxp5V2Z8a5lPFSxoE7abprTCvde3Kr8WYIMygzT+jS3zTuyTtXIISZGuRMs+R7GznRkM+z+4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy9pFRiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy9pFRiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA65EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778584833;
	bh=tzV10QEapi1qcpuu7uwLXN+zabD2Wm+Nyia01ahctgM=;
	h=To:Subject:From:Date:From;
	b=Hy9pFRiSOd4kSSB1zEiZAVIJaWJ5EBqJT3PHHoIO36W6d5XfJnkPoSQV3LJ0pDTVH
	 N97l4Eofh0S8pcN3uuS077M7KON28RGAhjPUIncfy4cUOq3f61bJyil9phTjJ7RrGK
	 cN85AZyY6rAI5yEDkhKCviIZI1q5cskvXIoaOepb9UD7PEqAaJv+kG/8zFa8e+3xqE
	 3t1+PiBWk+lPBG6yz35AwT5xPhgEtZEXnzOKIHTJKKv32AvBCzJdqKjC1hg+47j1eH
	 zarIeNbWyvfyRKK/aO03dUfyWK/8PU7Ld0/kHWAX/Q0nTdxUVQZ/XtAnV+Nv0ifgtu
	 scKAghsk/M1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB56ACD4F35
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858483369.25899.7430578093639700031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6ae5423c2d23a69dadb6ec8b1286470f345c3ea6d10ec9169dcb3f6c111345
Date: Tue, 12 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778584833
