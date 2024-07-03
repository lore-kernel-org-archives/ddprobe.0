Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70711139590
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719999923; cv=none; b=JJSlt6yrnUcLvnnQKVcqAzJeLO/rT1ODXpIt/Bz13vThS+pfgOFdEBqDkpd64v/P8UAZpSCx/YgU8+IpeKTWBrdrVoZEt+W3DFMrWzopwepQN7Rm02xNLjp4Vc0bbWZmr2OXWnzSlAn1QJLNUw36JHGbQYwW3JWPrjHPDwc4BLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719999923; c=relaxed/simple;
	bh=lFkN2lElMM491A8LUjLyGXwoUbXoQ9tYj1v4P1o/s0I=;
	h=To:Subject:From:Message-Id:Date; b=QxWAptpX7ZW1P2HbpVYS7adNzK8EtVO8+0jcWX8sNhHfziNNpNpJ8lk8T5BpocGirlJ3uU+DW5YNNHe+QQ5W22kL+pRicAN2qduuwhAlwwsTe/5zug8xLp1fYQUfwWuf6f9YrGsbZj6wHw/WqL+miCghNTEya7UiXJiPvuXK9NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy+2fya9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy+2fya9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F044BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719999923;
	bh=lFkN2lElMM491A8LUjLyGXwoUbXoQ9tYj1v4P1o/s0I=;
	h=To:Subject:From:Date:From;
	b=gy+2fya9vVnPv4jsMXF+J3a8P8FvaMSrhRtpmIptjcTkGh3vmGLPguouAjgOdFult
	 p8ndLEzAA/1WjHVwxCjpjzn4pu5yh2q4FbZpKYvVZKT1ItsDRnPOTcVME8xZB9OfIU
	 F6zvsI4nwO+GIjw079XeIKuA3INtEDeJ5EhrxH/d0YSvsjpczhT7DlutnY3dtZ+2d9
	 8WmO2lH9VxFD9sMcdj8PIbdXmt/5X0pssZmWRDZJQivYe2FkjVSWyTR2VrG8xT84SE
	 gdYD6etrCkVopbAw6iJxKMTO3BMi6MyeRS1/x6T4W6EwtGNp/K/15QAc1+8Y5+QRIS
	 Exf1LS8t2CPEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BD2C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999992286.20721.16355575986277686330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955cc517380576c785e6bfe5dd05763d6375612aacadde07bf1e1c742c33a7a3
Date: Wed, 03 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719999922
