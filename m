Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF7B2F30
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731921354; cv=none; b=QR0Rtsh7jb5ej1nvzoTkQrak6VnfZy4ytM8s8k8dAFzHq2JjRU2nrB/H1ej66Yw9A2GLYo7fnFixfFWbTkcxrzOq9BsthLjgpqLFyprN4fUdedDzleetDp3iaLQi+8kznvIj1AXohvZ6zSxp/b+tdD2PGuoWAfEIoIpIsjmn4PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731921354; c=relaxed/simple;
	bh=qSkYjh9ggnF8L6o7fJPhTOlTV/JRMUC8MIr/z4EJkAg=;
	h=To:Subject:From:Message-Id:Date; b=OquLAAC3yzvdMW/LPi85+ArTpx7V7cbv2+D5S9NV9vEzihH7Bg7oDdu/2c+y98x9iZkINcpTC8PYC2BLLwypywwDChOyKXbjUraZeZ2dotbUEql8stOq/8jtq33TrTLkTIF8zsFTY1iZI9WMy8h1BhwvPy2SYYfxaMfeHq1FZwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzpn/Ypq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzpn/Ypq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC3AC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731921353;
	bh=qSkYjh9ggnF8L6o7fJPhTOlTV/JRMUC8MIr/z4EJkAg=;
	h=To:Subject:From:Date:From;
	b=kzpn/Ypq3axydvaq2anub3retbyRQxPq/W9IDRqzwjRQWStQCZkkX5bu22FoPnJTg
	 fzS+RTu6bNn02iqdsTNNmBSuBEa+1vlwDsDyc0h5iylw/7VCiXZmffRp19oFLQvbgH
	 sOnm8yjVRIXhhFjdI2IJVq1ZvV8iGPaTRMlUFAgBUvf3ginj1FxdmrLYYaPO5xQZeR
	 MuXcT+Ai2q5ido8jmw1CWQCMYwPpHU9ZDS9OY5bSm/eXrAuk3JK01xHhq1bbX/NToQ
	 8dXjIYvt/L61flHc7owvHMmTkUm040Ni9uJdPiIorQ6Ib/Xu/PQlB3LyBRImOCFX/s
	 0bvhtKm6WiyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1CDD43FF5
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173192135367.2547.5063550048591659089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c52c15ee6d75a59f4aad085902c1d23e05c0d2b7fedc6c4cba2d4c7dde1ef24
Date: Mon, 18 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731921353
