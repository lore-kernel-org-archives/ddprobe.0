Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E4D2459C0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741184934; cv=none; b=fkZtQP9RgURKeXg/NNJYwP52h2vTfzWu/yXPwyvgWTJDR4dpni+DvuEA0hB2HVjIZYPQdd4l21V6ovA0V1AUshDxtq0Jzewe2lRy78qpCzoJ1tKcT/I6+il9JgTixORANpNCsElIL5b0IrikBB7zRooCeFT9vAL4vlBl7H1tW+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741184934; c=relaxed/simple;
	bh=WCyUzfUUv/xuw7K9nZphHjZp5ZxWvKZcHBDoNKa/iIw=;
	h=To:Subject:From:Message-Id:Date; b=X5cTyuvzbCBZJkEpQl+vTaTQKjxGhmXXp6ui8Cl8TvQ7PAZTFc/siahVEg9qxEJLkigV8O4egGw0vb72aEq2dOJ0I+QlqKdmAvetK08oq8Vcalax+UmDX9HoMxKhzIpJ325N4j7MebAZx3GGEQso1wo57azVivJCJ38lvg32lts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG90qexm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG90qexm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD6CC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741184933;
	bh=WCyUzfUUv/xuw7K9nZphHjZp5ZxWvKZcHBDoNKa/iIw=;
	h=To:Subject:From:Date:From;
	b=OG90qexmhpKSYcJqyL/9LyUJF1JZ0ycP+stjYcVk+MYO5rd1EJZ4BTrgL7gTPelJy
	 KgOI5pHF8MHx+Oi8Gkby4VrWf4WRw83TkjU/NopTHpC5+zv2zYmIEvGI+J1glY/og6
	 CKkFb4vA+pblh5NzKR21lG9eIc7jkg2ey7vlTbVYhi8UUSGO+TFOBRdixzSXEVUmjT
	 wWplDRBg/Gt7jfzzmC/yVLgiFzmPwTzj4WxJEH4gRwkFix0Xstegt27k4EL2SRjPu3
	 R6lGiX9szGL3PjYQ7QPeouPLhWq+TP7ns76VOxz9EQkVXqGHHhNK6vLjNcBtTSkv5F
	 DLPhXU15N+7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FF4C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118493361.18134.3429912111455953828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d435d1c0f949319b61247fe34f2dd3d3b59302c3bdad6b135105e4ebcd00c2a
Date: Wed, 05 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741184933
