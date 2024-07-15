Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2F52421D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721064323; cv=none; b=LEWRvXQ/BSHIP9FGBPFWzvPKx/lFJcDrsQAAj78CNlTZiKIS2Ra4omg/t+D6zV8rJ4XxkzjrztN6Uy4SSm9QArOc/4ApFNkP/VHW44ZYauoEkznJM42c5J8ojDdRiwIrqACWUYWwBGiVM0Jt4x2E0JF4IlThHASSDO18RGjrdD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721064323; c=relaxed/simple;
	bh=N7lk7gC3EI4PNyvIgJ0f7rsV+HhysQEwvLCSLe7BjLM=;
	h=To:Subject:From:Message-Id:Date; b=pgKroCVxB7Ei/aOFvDLIliNF2Qol1BuTyven4SXIVlBR9vmdOohcPDIGlrnXf2//lpp7Ui+wMX3Cu0XkxflqofRlVpq7lLC4zI4XBKyjyCXHX5v8Kt8WtAOl/sifNvQ5/CtCaqGjdZ3KbCXjS3+pcA9BPOq6Jnc5J0TAV2pg5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r28Akgi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r28Akgi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4824C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721064322;
	bh=N7lk7gC3EI4PNyvIgJ0f7rsV+HhysQEwvLCSLe7BjLM=;
	h=To:Subject:From:Date:From;
	b=r28Akgi1vPIYRSL4cz4IRlJ31Nxb6CbwmmBNOYUj0iZFI5eDV5rNfaMblJeC7ia3O
	 acfVaWP532G+G6kkwb38CXGlSduuXq8/K2V8rRdR70uJbIf3TuITuvfObILW9HN1yX
	 A/2QYkdjxHSZhXb68zksMQE1PWNXVRef1Y3bgJFdJAZaevShkfuci0/FvERS1zHThh
	 mJykudymYDZVYjB+O4CPEZLrIfVivuC3Tg3EiadiN6kgWOQKgpAFU2qNRrZE85AUtU
	 DNMRNFpZbFlz0abSqm59djrsMQqwIb/pnQjXPoSfxvIyeCSEuzkuFVPKJ3aqQDL4bY
	 H+P/wdbDrMkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A18C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106432278.4383.7885545693978049381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca77df7bb13ecbb54bd35a91d286328111db4df8af9d37b6740465987265c85
Date: Mon, 15 Jul 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721064322
