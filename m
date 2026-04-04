Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB213DDAA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775325334; cv=none; b=DnpdspD9iLepdY6HftDRp7VH5ZYlMF/6YUQ5DxVy2Tf8VJoOOaRF/r72zMdwkYVuMGh0rQQRa7j/2WTrBVQKPsMymiIYY5fp/cLOiHFWTnEXFnlkesBYBT2pc5uvXdAJl7d8CcR3s9Ys9r6ZTXmE0oNu4EDuuXKUB4beANhLSjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775325334; c=relaxed/simple;
	bh=3EdoD6nrlouIe1qerVv6GKn6WNI0uFYaQHBCegAJ6lU=;
	h=To:Subject:From:Message-Id:Date; b=CEq+Tx59FsBEYOYGGcLFj5wC5xc94KIVb420EYhzre3PyjlsE0ZcDNRcUrp6ThSfWWLQjiX8+WSaqmFq4FVFwEBvuoGtx5MjXqtWW8sYkhFYxLsmoJ1O8olV2zgPQU7QndkIG/7AbE7jjK+JI0yfRLwKjafZH0tgldrNTpleD+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsXWIeRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsXWIeRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC0AC19424
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775325333;
	bh=3EdoD6nrlouIe1qerVv6GKn6WNI0uFYaQHBCegAJ6lU=;
	h=To:Subject:From:Date:From;
	b=OsXWIeRaxjFA9WEFKaQRW2z9XI4cBeF2a4hx81Pp/ixDxpG/xzpo3xGt3jBNIrXYo
	 dnDoVVTtiS9/LAcPrYptEX7eiErNJFjFyn2nIFv0MIEiP+Aw8SSTjjQjQ7O7Pqfpu6
	 Hl8NZHv5oZfK68k0VDsN54378flIB3D0+SS0G+wMQKQu83cmT/6N1mV2sAfBHCMD3L
	 RvRAv+LzJbhGPeNUyRrZ4qeUEv+Mff++3iqjFO4c8O/CJhzFOpnMd45d6Ou5Qlz+Ox
	 G1RYlaj2R7q24X+qfGHQKJZRgtUxBa6uwzqjTwspCl0h7eghObKnLDJqTSCgykQ0pV
	 J8S9bZMXwBUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9E5E63FE5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532533369.10287.11391161170541171346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c19453a93c17f7e6393a124be10554c743b2888c64065311968e345b34ecee
Date: Sat, 04 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775325333
