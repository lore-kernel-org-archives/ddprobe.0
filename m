Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E03BE643
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783766915; cv=none; b=n2sW9ZmuWHG/z13sohtmwpThECpHu/5npZZqek1/G8huMED2kMb/GaMKDqI1S7b/6E2RnqnoG9iajVwgJstLU+4ZiUIVX67sK8otrGLK+ff0tz8YY7D4HBxhXtPH+UoOdI39Kso95Ta9whP8xt8Dj7GiUm7p6j1DxutwPAPF6+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783766915; c=relaxed/simple;
	bh=w+l0dyjaYbJGdjEz2L5izwhgiPywf0oz7KyE6DYL5nk=;
	h=To:Subject:From:Message-Id:Date; b=Adm/02rZyiFH7mll2Pnpq84bmQgOUUK8Ek7NEqd1V99cJQ5u0HEJy37inBGz+hdJ5GiuWIosA+iLlQKoSv1fr4lKtH+DJvBXDGflZyuQGdccMnbI+Fd8WedblstpuxYbVbNEbt3zZTdbbIkhQZyz/fWA++SOvaI4T3oc7BWCiwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqG5lFW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqG5lFW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFF4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783766913;
	bh=w+l0dyjaYbJGdjEz2L5izwhgiPywf0oz7KyE6DYL5nk=;
	h=To:Subject:From:Date:From;
	b=nqG5lFW9hCxyc0IC8zMgAmFMsQu/t9JVw8Lc08UM0WmYaflem2nOeCqj/GjE7RHlS
	 Ah1+YnPF2gZTjXD5ZNeXQ3NKVH4R8karbIwS68P3WwOecd5QQO1WSklEtY92dI5kIR
	 9k6KiT4ylG8nNNxWqmjuOkqo/zKFtMtLznGVwYODH7jGmrr7XCt9b6xqeUkaR1460z
	 IDMqI/S3TCGeEOIH7EEClMx8aCDyzAkNb0pc9xpfyzUdzvRBFk2Bu1p+otixa4PL9B
	 PwRqhQ2dBXjlOkmVpCgE+l312YH808dKZo13AxzX9VpkOm4yK9Zv0MFCifg7zeDtxw
	 ar/N5TWyJtIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80C0C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376691368.9122.1685895445982695265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cdd30d2cd51eac64b7cf71225f09f1fab0a9557268bb89c9cc9b075eb8e750
Date: Sat, 11 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783766913
