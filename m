Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B28257824
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771784694; cv=none; b=aYKPA7FDzDObWq82eZbgxsVk1fztT+zQkxwLKKba1u3g+XoPsKV/JT4ebvaDVFlXGb54jdiZR/4iQ1tLwHcVQdFHcp/IlG3gKFqsMwcj4I6Ol0FZ32dyh0nT0wq5QBe/J9TYqZiDar4k1hw0z58Bs5JGg3ftbZQYqj1R3I+hfSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771784694; c=relaxed/simple;
	bh=D/Z9Et5zZsDNp9R8P+K3TjiA+bXVsbA21MTyaZJ/2fA=;
	h=To:Subject:From:Message-Id:Date; b=aW0bJkDprlTg/Gc4jS3FNio3UOWABeu/wbTw/J7Bd7lkV305usefW/QXe2wsoQv0+m5X1RYREHyJyiUZisgflYDfrNVZZ99bhkLPpVHZcwv3bV/AjzzCxepPrzUVeHWWxGGdH6ii5+uyKA0fE+ErtxPVaRv40TyhSYhApbI/kwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bx1dVPUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bx1dVPUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B71C19422
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771784693;
	bh=D/Z9Et5zZsDNp9R8P+K3TjiA+bXVsbA21MTyaZJ/2fA=;
	h=To:Subject:From:Date:From;
	b=bx1dVPUzDhknHLghFjS5HBNBvYO391drR0S0ovGfoTtsrJBtDdAI/GocXvDyuuLa7
	 grmT2yFdAQGLM8hbKluxiifr9hiY6IhdTyc0dV6u7MCfc3o+GnAJR7T1euCUJkve6n
	 v2AhGi7KHn9jWj9qhGRxdIKI7JPXm761KP6lnGM/SJRwbCiAiQMxYUURKSHtJ4sRMx
	 wJ7dRVmwr3P9Ut3PQrzY/XazuIfBsDXBnlnROmIpS42KtUCvB0nEjwUepNG/mkFxuD
	 h05eFIRyjaHwyMWf5Kcpdk3WnNsHBUm+jDkF2Aikrz2cI8Z/Y1yLRkGowTcpTzZ/O7
	 iUk+VvLcoKCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550FC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178469360.19721.7558359034900749916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbec8978a7063d2dbcff86c1de54f1180d45874826d758af9932a4811a100b5
Date: Sun, 22 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771784693
