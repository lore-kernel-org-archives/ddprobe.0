Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491711DB356
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788720634; cv=none; b=mbzGY9JZi3kNnABUkoVjMWfEjllo/8l2LpUQFO4VpbLzvmtL852hB9XpYQ4z1BXErCczb4N6b1EtnMbuPi8J+E/eqatGdmXkYxMAHzIuDuF6n2c5RQl9oIxiNHEpNq7tnWuUCUPCm3VcYcsU8FIXXNZ61x5aLMbOvmf3XKYnEx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788720634; c=relaxed/simple;
	bh=mQP2oqdVdGhML7qDDLeGVwnblyWhILyeqAkTHAtU5Po=;
	h=To:Subject:From:Message-Id:Date; b=cCa+DyUQ6LSJwZt85MyeQcaWjwfe+C3RRQq92BasAIKDANbyt21p4moBKTwt7Z0oL8/+9AIMqXROQP/tEUZd9/8p4mokwZzg6v8Na/8RmI3j1zFLssRT88v4bZPOrYpKD1TWEw55XBnoS/PoUYo6FIhbAISLu8NWZOK9lJCKoOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3Ilnm3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3Ilnm3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31EFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788720633;
	bh=mQP2oqdVdGhML7qDDLeGVwnblyWhILyeqAkTHAtU5Po=;
	h=To:Subject:From:Date:From;
	b=C3Ilnm3fKEeZZaBFAqi3eH15ctxMz44GVPGFeiR3mLt66A0oJCRNlrvwxu9W51A3g
	 BYXVXfCyXGKwxtwGM40o6k0w3U3kcTwIfHJjMI6qYkRVwIk7w1JCwJ2bqFQ1g8JgEY
	 VOEHrFgxoIH3GlZkZVaJH37f0Ht3bc6upb8gZS6kVMI/Ygo9CBGiAY/QKteDbXjzKG
	 WCUUQ/kjH0Ie/i0JccQeqtjUOrsfI2/iuA1g2FAiCtnqQxY7QaJif8ZCfxhhuvAVxi
	 zHSZY2j/QwXvfTh9EtSwWrBC0MkZsDk4CSXJ8SJjd1Mlxl3KR3HcXQaF8bKNznLuD4
	 VNesW86WoaMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE950C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872063369.14100.9827099294972621015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaed11a1e2ca9558293f86b6c1b995733952a9366f0ef76e748b16690be048d0
Date: Sun, 06 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788720633
