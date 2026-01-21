Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA03EF0AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768995234; cv=none; b=nsLn3W/lZxSbaFbJc4JjvE6fzmqEVFXI9L2oUZWo8oeCm1hPk2bHdqK7QkNHz3k5jqyzT3gnAlKu8WNsNb13VV42dpDqfsSj1WJJI/1b++isgMuT42RUz5ZX2XyUDecLDv+erEh83bxFzXiELPjrIppC+DJ2tmo/yZBsplJizak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768995234; c=relaxed/simple;
	bh=DBQ1vW6espZBjM6ajMzPphV0nWKYLCHVmVyxD7hY8JI=;
	h=To:Subject:From:Message-Id:Date; b=g8IkAprMI6wU18OJiEKnE55nzZvmWLIr62ZFho/MclnH+niF1XAh1gs8BYZc6TAe/2QP1dM5ldGifriigsVo3NflOMgMYrOjfJ0PaBar2WXqapnNxkCy9X6QnyUSWBvrxU5C3A6R5CxIXRk7YEaNpBDjew79gfnZndf2N77hF0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9lp2J3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9lp2J3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D1C19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768995233;
	bh=DBQ1vW6espZBjM6ajMzPphV0nWKYLCHVmVyxD7hY8JI=;
	h=To:Subject:From:Date:From;
	b=G9lp2J3PwWuMnsB3MrJ1s+VQWEMEWd05knWGr701YwJpOzg7GYvWmZcKbkirCCIXZ
	 lJodoWlquQhAovAtEPNeanz332FMuTJAMxS0RzNK4aW3Lck/O8hlVagYHbYgcmZDoj
	 lpzbyAYDc1suc0qNSIkoZ1T1nGASJk1tFuZGOv3+J0LiHUWxWD4C5Wj002/tqnHMox
	 deC1XlEToXHcnkDgWuxIJkoMwtYvyRaL7E3eeB1KzUUmblDtqMl3ySu2hFBxNtjltj
	 r4Zph7gepwrdkYswJNwOGbSsB8/D2si8BXcfbgVEgxp66XWbha4dhTM03i63KQluF3
	 ODxYaj/8heqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E54C4451C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899523358.15430.1452603660382206805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89507fddfd2dfd490f58b2f9f10cf13223c1a67a958905b9135880593dd128c3
Date: Wed, 21 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768995233
