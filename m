Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DBF1DF739
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750963194; cv=none; b=CGpc3GjOw76urSaJOJJ4KaaO3/eDPHhcIa6PBaIspiKgEiKWkJLJZfkorZTwj9KXSBcml6ri23gtCeiWrZPlKBWMmT8PftxYI1uLAkwlgXh7I8SyJMVpFWCZAs3BeYU0Mlc7w8c3OG0mfcbjeZ0LYh96Bb0SWV9Dwgb+0nxXSQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750963194; c=relaxed/simple;
	bh=PAuEJ+c74+EI4WgwE8MoDDZkvYAqmZT9NJdW1k9BJlM=;
	h=To:Subject:From:Message-Id:Date; b=WZcMNDL5Ba86sKksoPo2gATX0dE7Wegs4sTsNyWiLSWZjr4+/urtkNRHLNlEhF6xKmOqACdV8alQ49fVgDNMn49jHljq9cBXLF1+E9MTV2gV4UnKyzN7Yj0Cao2f0X6hnsyKqpRbdh66qsZ9gAZwRz+o5N9EouIokdsgqFZ6JM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9Z9le1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9Z9le1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7B1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750963193;
	bh=PAuEJ+c74+EI4WgwE8MoDDZkvYAqmZT9NJdW1k9BJlM=;
	h=To:Subject:From:Date:From;
	b=Z9Z9le1QbCqhN2iLfXLU1moKhRuEUw6ILRjTJTe0diIgXj9PDvGeYu4p4Qj/e6HUY
	 es5v2GR9OQtBA4OQqbqs0pwpvh5gS9kuYHHPx7kfUmPobGNDYDoK+Nx2xw3SC9+4jY
	 T0/xXI445gv24Y7R7IKJLVFDBZWTHm7RB0iwZrP/Z+dhbFRaCFh4ZZ84GjxkckJ0fU
	 jNRRpoFxvVBbWxmPbD8048z4csFMDm+OOwJazkpv9J9/rjXM4voLd3SHHqk+3jfarX
	 zpYp46pSnJUKCttp8J7/QsrTbSOIubrl+Hey8vaHqOpCWBRmRuz8mYners6b1ZWhas
	 9ThQPI7grUtwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EBCC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096319358.24504.10763744031425889687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a513d618e98cda3e6682f8abac277e6fe359815e0d6e47ba3c424aeee43dce1
Date: Thu, 26 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750963193
