Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AE3FFF82
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784841034; cv=none; b=fVLTr+KlOvxCU4/F4jm892XA0jJUx9xqX+e9WBKyCMM97LMqhSj04UIyhnkN0ZQ59R0jLJXyNszd93UjaA2CCpZ+oR+sw9/hg5OYxGgUMYHMiwELtz7CCuxy6CBiZU/gY2vAz78TsJwPclUwcz+2axImLKHyFEFAcn97TIparAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784841034; c=relaxed/simple;
	bh=iY8i6S4qsTNnZcRe4Me5ToWZ6PgQtdESeT5FuoMnyDM=;
	h=To:Subject:From:Message-Id:Date; b=FaAfOi6dV+Fi0lPCMGhNG2f153yQekR2po5Scynub7FeFQ5tllsrYanpi4/tPk0XN/8HT6/ZlCrfwzQwiCqhdohCUB5Fr915l8QK+PLXX+ipw1fpaVP4W2A5SjwVCA/eLUzLVxai78aOEvIz5ldp1rFiTqSObNZpfCcQW5Myrm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSjhn8EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSjhn8EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6F5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784841033;
	bh=iY8i6S4qsTNnZcRe4Me5ToWZ6PgQtdESeT5FuoMnyDM=;
	h=To:Subject:From:Date:From;
	b=YSjhn8EUWTScmJYc3WWDc6YRs1Aa3modVJppmVNCcrXj5ypmAFLuG0+OkJ3zFOvTM
	 JEEUa3qP/932nQQZHs/3V4p9i/xIObZz6X0fgKKaYZ6zAadyraTw/nPTbCf1PYwDzk
	 HQCpJtJucmRZwoWrDnGL9GXs6d0Gw672Zc7u3DrdNOiDexPXj6oZ0IYeGhb6ZfWmRU
	 HULpRo7HhVIqnhymMm2xPcSpwJMh6JBYhP1ua8HcvPZqEAt8sUum6c/1idkgXFGcAj
	 FU3ZcldX0a8dcMuY2NIJTgyUgtgZLLW4vgJk32ugtBumb85FdBkh4K7mIPx5eR6G8P
	 n8fM3cUvFozLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37B9C531D1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484103372.1491.5138804022995466549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85da5d63704d789ca6e88bf6cd7b33776b8213709a64dbcd3bcb10b98cc5b8b2
Date: Thu, 23 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784841033
