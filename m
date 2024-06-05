Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A656257B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717581983; cv=none; b=HyDgHtEt8dmENA87HqYDlXeQfue0q43DqI/3jR8bZ6lCZ6tKaFMLTuMMDF6sq6g7ncjGdv2M82m47xmVf0gXG3smCpro5VIRrfrUxB72Cybn7CwpXvvJ8qVDi/iZU7lZ5wZyetCsESq7S3LjoT9rIbo08+M9m+xMLs3yNyvCLs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717581983; c=relaxed/simple;
	bh=CpDp/eEYIyfUjgJt6FiIyol8K3mUDs03UgoNuoohrL0=;
	h=To:Subject:From:Message-Id:Date; b=q9TL5oL3yIuHcPCfCqoVcWSW1MzdTvzXc+9gCdkyDGJq5AYUhvdxzx3yKKM7eE7raDY/cqlpDwVVkeYug7JMtNdwzPm7MMDx431bVJPMfgvIoK9d47tCkU3fgmiQ+xlyUTuf7KLthlJhUjfRlrrAWue5P/P5c9WO1E0yNkwJkPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrtrmVC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrtrmVC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF064C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717581982;
	bh=CpDp/eEYIyfUjgJt6FiIyol8K3mUDs03UgoNuoohrL0=;
	h=To:Subject:From:Date:From;
	b=VrtrmVC4i51acPDEJftYBt1fEqvvEdDfJSCNGiX2ikdBMJAGCqaX3sL//2irs0BzN
	 4zL4ADZ7B+CK9zVkiyH6banPldn0+veE647zW/AHNp7V8BKjw7PTJYmb1M4uC1M90p
	 vPQ2SZ7lJcOdknunlNbNkox4qYKvJaqxRU162Re9/Eg4CTXRhheRWtsc3hkpRdiymH
	 p06HyTFufcJnj3zrRq4v6JS3Fh6UF+g2JSD91bSIVR7+z0hes2LTYleTRcDLak7E18
	 IaO93ISy21JAbTJB79MDdP6pZ58T+Wk4v8DXjV0LNQDh2T8vAbh1IoOlPpPw3JN+hz
	 25VkT0yC3lGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8395C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758198279.18237.627968869489560048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1251379b1da2db779e395f3c1255439b432ba61339ecd245e59fe00f2975816f
Date: Wed, 05 Jun 2024 10:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717581982
