Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206AA197A8E
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754706595; cv=none; b=FFhZ1EV3N5zYwLJKkZJOrhEkkQ0O8hNXBOFRlH/CdA42PksxvMB6ySnYu65scr0RTIvrAhOrfgU7aLEbWl4E5JX6IX82YyIDVNxyaPRruEiKLVEAlA+strfxfo4PfsNhGIAvu2sCSogeWmvCCOvysx8EzCRsRs/ppwk0FRfMICQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754706595; c=relaxed/simple;
	bh=eFTxxxC1OsWvhD5kZAD5Q8UfMlzF+dcq2Wu4e69jMho=;
	h=To:Subject:From:Message-Id:Date; b=RXmb1s4zrQ/AxvtG5sMoTwhH6LEd63TQ4+lBbl2qAi1rK5jQWBGx3Me+qBWAZRhrKUPye89RPEIvwGqHXKV/nn1L3Uh9i8urMONGYpVl7AJaiKXeDXqGzIp7R/pPuZyJ1YfjQmL4+sHIGpmCmhiWf7US4+FxvQQDx1iBMad1gz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZTXcGSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZTXcGSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D48C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754706593;
	bh=eFTxxxC1OsWvhD5kZAD5Q8UfMlzF+dcq2Wu4e69jMho=;
	h=To:Subject:From:Date:From;
	b=kZTXcGSK8TxaqkOPJ4adu9xOmd/MI52q6nx/3exOA3DrAY+k6rX8lMBLjr3Pin/jg
	 NvLh7SLOfoVwkw0XzxApjLUx2JN5ymhJtmfqW0I0NHriMQi9PnmlQdGtbTnydsA020
	 DblEflSPpJN32ZOAZvMZOsYsdsKTFkcfjS2/jYVBswQa5RMplJzAFYPULkpx/HZEbo
	 /7PPWXNOHU1hGAtDibV4t29PxnkcRLAP+KNAU8FvKdgUR6j6Fg0BPREy6eO2scOqid
	 mjqjYVWTAPxBaTOL9eVqgcK0hRQtsVAzpFqMfh6jovMILLD/qlIlWMJe8cqY7VHXKf
	 k/alkEB102Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EDC87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470659358.24759.7730732991224364034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bc862f181b2f8324bdf788314341d573247ae5cc422246e0c6edde17387b7b
Date: Sat, 09 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754706593
