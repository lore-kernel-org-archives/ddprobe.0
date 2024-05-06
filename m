Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E09615B0FC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715031143; cv=none; b=dE6H0iNMPxl0CSk6FsZVWyh2i+Q5wypP7PoED1eUHVt5B1IdyXh1nf8z/7gDZSQbxjxO+1l42Zje5PaPcnLLhCfNsuYQgFeL1tKErr/78UBA+DFdC4exwD+WiwHBjCbZGn+2025VDz2J6QJrembQaWxQZzngiMDujsBLFxb7HA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715031143; c=relaxed/simple;
	bh=B3L1lTaeYYL3zWsDvqudMQ98Jl3tu70qeK35/JNJ6hM=;
	h=To:Subject:From:Message-Id:Date; b=gmBLgnP4HmnDom1e4cX6XUSRnmduAzrY5NTyHvP2h51EMYvahcabaN/Qb2DUojeJUUmDbYb033szoHoRZ1ZP6jTdc+nkzW2CLcIKEDBeeR9PyOE2xTLcp3qkkTUIX2TaIP/5f0R5R6+zm7RFSoqlTX+F/TaSzstSYDKRFDAJAR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5zFvzTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5zFvzTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E553BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715031142;
	bh=B3L1lTaeYYL3zWsDvqudMQ98Jl3tu70qeK35/JNJ6hM=;
	h=To:Subject:From:Date:From;
	b=p5zFvzTX6DZJgCedfDfz9ji0MRZ9kUIkuY2TlOqngDGLgiG3VwgXtIVEm+1ETcn7D
	 2oTh9UD//nDStSlPe3/JwBW3Keqk0oKmQ3dqY9lA1PsG5ADr3UaW5INOYyluwkPeoM
	 OceMSJiIPyQ0GaozEkYzKl41LtqIr9KWOIRs7Adi9fYSjwLqT0BgJlXdgH2m+H8FJm
	 NbBAOZezu6g4jXghG8RgYOlrR0dRrunINhv7dj+Sonwxv7eg1O0pICf2CUR2jM/Keq
	 +4VhWCz7VOf3EKN9VRuecdr/MYUhww2qO8RC4tr00BU6LTMD9RlBaEb5TCpqPn2L6J
	 ru05G4BL+XK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC9CC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503114283.808.9477988755158977296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af01a945cce2f69dc9d68452ac32d6d49fbeaa3ca7fe73551b52fa8d7ca5cb2
Date: Mon, 06 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715031142
