Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE4B405F7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782584314; cv=none; b=pLoebHXfSOuQNYd8YI63rhvyKrJQPYwdMAzeB8nqSaAGRDvVF0qhVlH6DgAhYIzTidpeOx6iyN3ZzEMPJeGI+nzOJPnCYFqcq8bday9zykISlcr4EE8+EAJCNuMlsNHm82shsWzJSk5urIktaMHJlCMiRXlunp6xuqP7zapVbyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782584314; c=relaxed/simple;
	bh=Z6dbFcM3E4ifZ/ueDYLU3gqgK79OcQoUFlj08oG/2kY=;
	h=To:Subject:From:Message-Id:Date; b=OAcJm1TWvNK/rwIUa0vWsDHM8vGys0cgINYfs6TOHesqu4ImN7OJ0gbxh+dAtmcVej+7xaqe3FTluXhq0ks30ckTmnnc5AqElqSXaayRhdnhQfEhVTIVLKIkMcCf+1+MmOVj3BjLwhsqRPhWp/bomjagV29z+mghoC3VnEDIWic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCyncHNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCyncHNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA040C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782584313;
	bh=Z6dbFcM3E4ifZ/ueDYLU3gqgK79OcQoUFlj08oG/2kY=;
	h=To:Subject:From:Date:From;
	b=lCyncHNEerbSYfytkkgqFyY5FsW+h4Y7f7ISoMwp4+FCONLXX+KFaY96ucccB3hwK
	 eoV58+bCrLaXpTxnRJmknKXvlr116MA8cRffk+9Apn6A3W1kK9vtyTsgM44Mjdw0LT
	 7LKJZgKNz+skfOSlWvV62rhw6h4yvQjEBI21uZD2x8pI9xC+3XP3q+IyXipfXUh7bj
	 OpbFNmcw0RdaXNOfdSZ6/Knp0U0R7UpL5WjrHJ80brAl8Wrhbl2KCDKxYM3w+idUEI
	 oAN8zEoN/KF0f4jYZ9EEV4oWBRliZ4GuEb2gZLnLZUAUDBzw6WlRQAQwPjxNiQD64M
	 Vp6F0VzvPuFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B015AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258431368.1962.9133293786630952394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a54c0b515a4c8f770aefabe52b0a025f611d77f85568d3ed64da2d80843a0c
Date: Sat, 27 Jun 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782584313
