Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636832904
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719154343; cv=none; b=A/Gs8dFfeBqVH/XImqOTHFC/VfDvTPhG1BFlGXzwgcc3xe0Q4PpbOtXSW4XpBMn0R85KEg3DQS8ya3hjlN11OGPQsfVliMOJB1rxWseG169tDGGh7ussNpKZ7wk8TIZ4ybt9aFiCJVtparoUjqraba4zE9Cq2EsHyMP2QFgilGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719154343; c=relaxed/simple;
	bh=GZPhsSuipHNumWqxAIv1fEMoKg6tCnt8zfujXvojPkY=;
	h=To:Subject:From:Message-Id:Date; b=IpXhltnCScXJ9hjl7WxRYb3J6fiP89BNRW3oy+vxBieLebgEIUuEDWbyafAZBklpO1HmKb12M7D9It65NTO4ApgDRDpfUEyTF3KBEeImFsIer52c/lsQ7rAWt9jD+VqW5YibVKDJkZ40VMPzKw3O1pahSHHMPhy0D+cQGgi3zcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYCbZ+GO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYCbZ+GO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31D2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719154342;
	bh=GZPhsSuipHNumWqxAIv1fEMoKg6tCnt8zfujXvojPkY=;
	h=To:Subject:From:Date:From;
	b=oYCbZ+GOPGNyTXF6YWfP+vdOy3h26OjdKNqCyDYeXntC0fXmZgmFwNEvLP6hV7ezi
	 89qkfOEfhB4ptcpJ4KuPwL3UCNdLjcXhIVxPIfudkIYHiMVRrYB8Q7QoLJ17+P/GqE
	 xZxwXJDuOlzcrWXwIUJ9MiY/ZxA80PPiJ48oStEeepTGiCRARzKoHCk0cTD5fISLLp
	 GXz1PzA6cKKKPZ7p7DZIze3OAkG841L1OzPOp6SSQOJV+q2TKXz5MDkCSlkrWF9pRN
	 wq2wXyJBLWH+6Nb6spykWWTfrXjnyQ5okwYhBYcYwh6Dl78Az4Fscw2JaiJrFQU91k
	 4E9A9mpF91wiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90BBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915434277.24278.16556099717982441226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c846277a57e41ce63f472f1b8081289990a96b65f1ecea9c48395383a8821e
Date: Sun, 23 Jun 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719154342
