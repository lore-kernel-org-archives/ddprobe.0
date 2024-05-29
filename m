Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5048453802
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716984863; cv=none; b=o12uwGrk3K+j0RHVq7pDmozk6zd0Q1sI1hhqoK9Gkv057mTTba8Adt4UZQHw7SmkNQqzTtV7XzPGxEv/71bb4I/OuGb29+i2xaLTav9+LFhepBddhYUtbFrYTO2P8bTkA4PAF3kJREvc3rw2nbIO+B71JStVtzhVOBINdl16RJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716984863; c=relaxed/simple;
	bh=J9N2/K73bIoGNR8gAZjtuFJ5cZIC+uO71PNTRPhaxBM=;
	h=To:Subject:From:Message-Id:Date; b=AH/HkA3hrjjrx4MepboihLmMVZhYlo/pqZBNkN2g8GCm8JZuGbfLGnp+irq37E1ntbfDWxkiGC7VcguZfyWP6iPuPmIsuKJc+LZT8v7MFsKmxnrAlgGYcZdpTQPTJneJVjzrztMvJTLPnY9+MDDXYUpDcMTkn4xGvwnYzYrpJXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsB9MrRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsB9MrRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF10BC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716984862;
	bh=J9N2/K73bIoGNR8gAZjtuFJ5cZIC+uO71PNTRPhaxBM=;
	h=To:Subject:From:Date:From;
	b=MsB9MrRkkWPqmOcPvo/+7qXZY4TxeJk1gHk4z5fgXy1kQypejBdqwsIvEHKNn7PXR
	 nHL5AYxoB6FpueufgNYtgrlJ/EpuxWCKeFuwK2tc2PHdlQ4GNVU1TwAJAGlFJQq55I
	 dLpeMlAgLA9Zkbc3TYwsFEfLDbE6cNMZ1tEUsCQOh8nnjRJqQc3V366+CaD99qL4Np
	 Zyq2qUd31Rzp21tZsNJcLj8M2sNnyXAa/+8v1VX31LSjSZqUa6sRXApdDVuECs4rbz
	 HUOd+lf50ydVexE5nvXGmqFM4J5yrtUYf7PHZc09hMOmCo430xDAhkSJ+EE+ygTOAQ
	 zf9Qq991UbMvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD67EC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698486282.9470.15879924034999040745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4032781b731aab6047e50f055bfb730cc30712a57ac191d24a8227fed7112ee
Date: Wed, 29 May 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716984862
