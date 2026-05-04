Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE3031F9BA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777882654; cv=none; b=XMX50jTtvQKqV0eo6UwvIHZBfOQUB1ETQdayxxeTvdXGuKT9Ja+z+3/mDU+BT9eOfbG/Tb3laRg5D3yY/K9IeHwgF4tO8E3iFKcPTjV0G0piqriioHF0ye5sKjdUbCNKnWjQB/AtxWiXaltZO98hwQN6x1aVcft3FpI12ZC0wVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777882654; c=relaxed/simple;
	bh=02UvXJGZQ2Kf3jLkTsP67zmJacl4g8yEjUfwgLxDur4=;
	h=To:Subject:From:Message-Id:Date; b=ivTFw8cCiPe8I7jLzedH5pm4VgO+Vuu/SDjEM8OmDRLwQHxXcfDv92+LKqLmCL/tXHHJpOsiJ97+5sHhsbO9POfLZ3AHw4xskNJl3OuBXXPZU3cNxVmpS4lgdk10pLoFL3qZXX+sWHnVxtacFqWoY+PH4xE6MfY91esokVMou6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRu1e91w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRu1e91w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3CFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777882653;
	bh=02UvXJGZQ2Kf3jLkTsP67zmJacl4g8yEjUfwgLxDur4=;
	h=To:Subject:From:Date:From;
	b=WRu1e91wPGdPG1napPmHHf/AVVjHz5ZwqN8cs1AQOXuMxm6SVj5ySXjhEXBlYlBqJ
	 PJgztlWcNbIZqgZ6s569hmglHKX0duvqKkpzJ3H+Fkq8ny/6GrSB8d7sSZLbCE/5Q2
	 2lHsIR3fKFQRW0jsPW7ls7WLrKUZ127b3L6esusOV5zch+5fV1HECTUg4LxJEAvp8l
	 pYF1PH60VH7VCUN29yeGBMmXy+2PCtkwoIuzhO35SX5WgV9XCLOZmlXHXs/N13FK+7
	 HQwCuBCPdprT2PTYU49c6MiLnPyrZwFJsAlJqTbQwWqsTYUmhXG7KaLY6baRstutgE
	 o2K2plb2EXOzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D0CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788265369.19725.8095219615540286228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c699d940b00256fcfcd34dd64b61ab9d0fd828c937b8fd22e7569df54a0b7a
Date: Mon, 04 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777882653
