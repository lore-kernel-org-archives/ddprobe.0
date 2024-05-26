Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A811A2C1F
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716710663; cv=none; b=KH4+cd407MTBqY08Gr1UBT5Qsmij/bzOFEeP/IBDS+SyfhXHDpdk51YcZ81RWgThCtun9PM+U4Gbq+DxJzmj9FvVU8853izBELSMbjYeFxFYZPkeo0vgOmhlrtBvqYrE2F9ABS2UKzoDH/DCvYlHWahMqIeS6DJpY7aNKGNZVnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716710663; c=relaxed/simple;
	bh=FJ75wO5ZrmN9yLLRqbuiQpXHtsNKvco9dXXCVnsC9cs=;
	h=To:Subject:From:Message-Id:Date; b=jT8sEqez8n+zBQLGRNmURnStJqh7ILMjBwsB5LoH9oLWci+g1TwJ92BYL4xnQ1dkGnCPGoQXJJqzL6DvNaBfTxDUDaIYTQgL9mLOebBkHBCIgYW21o5zhFn3T6W7OM93FMIHRjB2xy2Mx9H4ekso1nAJNXHYYl4U6rLKNtGZDZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx9zLteJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx9zLteJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716710662;
	bh=FJ75wO5ZrmN9yLLRqbuiQpXHtsNKvco9dXXCVnsC9cs=;
	h=To:Subject:From:Date:From;
	b=Fx9zLteJhjFmbXCoKQUi6l88yHYK9BoaykVbGOiMlFEnVVxWWq7EqkoqMpbl38DLu
	 f6Aza1pcImBcNQxrLfSbvAJ6mtFDej3gxG1Uz+UeReZjMcN/qrQJYMiyJDeO9UGVSn
	 Hi/qK5eC0aABq92FErEV6iVwzHyw7wBKfAUdleRonda0lm/WHSgYu7x3BKhCfTfatV
	 OvwefJgl4s4zyPkMbkxm6ot5JiAwlZlyYMelu146DShhPJ+oSpOdIB5bHpkoNoJA1P
	 40blhW6hxwR6ewsgJdCv17cLEpPcaWjhvDUVBF13xsOy6xOD+dD5hsLU2y5JZpLbhr
	 5Xu0Y+u2/kgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3703C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671066276.25848.36057425102771577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc0614870e16fd3d1db482c069eb708dd4bef2f1c944bdc2a7bca0c9d57e051
Date: Sun, 26 May 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716710662
