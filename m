Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDA4481A8B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792237234; cv=none; b=GazugG27/JPwAj5slNWvygm9/RwCHpui5YIDSSI+WivjlOjsOK2vcZNHnKDwxNlPytzDQY4+u4nA87nJJMl8T02XfvnYZfxR32M7GDZ5O0SLYTjo8KoB9+gZ7UVq3TUZLzpLz/SWc8DxnMgEAZvyrHzLahDQDUN6zC7kAMcyMqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792237234; c=relaxed/simple;
	bh=FTPbn4Oq7Uh/LmFxttkFm3lrfmFBkt6K4zyib5jnfFQ=;
	h=To:Subject:From:Message-Id:Date; b=DNV08UPgrx7WsEKVUM+ttRUnO1EBJTTyay5KhEVTpIGN2Qwgd/qq2NvLCEAvI8RGz8skiZZqBnd2FkimmR9b38arlTPHdKcuMkNOQy/GsZcUIh3tVA9+REn8amV213jhpOhz46vphoAPqFP12GazlptVAmPt28I7X3t9TGPfhms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV4xC64a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV4xC64a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34D8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792237233;
	bh=FTPbn4Oq7Uh/LmFxttkFm3lrfmFBkt6K4zyib5jnfFQ=;
	h=To:Subject:From:Date:From;
	b=rV4xC64avCDQS5TmYxJrwoO7ux2+VMtTZb0JLO2dVUPxNF1M7GfVs/shiooOtgL9z
	 HtiyLU6oOxvVEpfOxbMuIgL0Ajis8RePJA0SZZoseRVzrg+B9AeGHYRDzUqQZlvAw/
	 IVSLP+Z/uQnaeqnFwAbR+AQwACW+iLZMTyDGhCAu0iv3ILVf9JcxcSnXlwIwKuHZw9
	 KCV7i6lJPxr/FtnhCmoQ9iob+MUyUYw0XYXZonuiCkqExM+zOJme9Cqm1BrurMbOcQ
	 XQDMLwpG2vysrWAi4OAcUm4vcEP22nRdVsNBYYBr+ctzd9laTGXTeZyLOyXch9fKJl
	 ozeHcBNUQq8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FB9CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223723372.7790.7704349769420563095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763ade57a8be2cb1ae62fff78fc8adfe503a6eed380c8cfbab62c9b8873272dd
Date: Sat, 17 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792237233
