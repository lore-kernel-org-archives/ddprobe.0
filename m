Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E6F30507D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755780594; cv=none; b=imZyUKcWTkH46Gr52Qk8d2EnzeNF9IKvYp3mBI38xuUrUvJ+Gx3wj2Iz/O6lUO6EhqSL2tbFOr+5nRo9GaF6Y8CxQjPON9TMpcy0AdqlK/Tv7Bvm06aKfSRbIqe90oN8Yhd6d8uyJwfcWKQ0tISbMYPLavr7yLkYdCYb8AizvKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755780594; c=relaxed/simple;
	bh=TxolmtsSTFevpExEssw85dpzC9nYvNd5FAa3brNhj60=;
	h=To:Subject:From:Message-Id:Date; b=qkNDlR8MCG45+eVqz5UKtECgg2yRQkO4OiAqjFFSvv8/dVphD8Xc4Jywlo/HLjy0+EdDGi3V6Rdflp4Txce4itpCIA0SGc9496hNwswScgj+BDh7aEG9L32c4NhmfgefJn8dvcvNlJ2P2FclcykL3YfBrB8xHV+1+3xjKBxmb70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/M/XlFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/M/XlFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7B5C113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755780593;
	bh=TxolmtsSTFevpExEssw85dpzC9nYvNd5FAa3brNhj60=;
	h=To:Subject:From:Date:From;
	b=B/M/XlFGrJtG8EOZPmW5oVZddLAjrIuVhb9NvklL/4bkD6trhWU7+OxGPlGYeP0NP
	 IlG1Ddm4xzmqDkJtJ0p51Xq4RY6UT36Y93FMB0AjbHka/QZ179DHcB6wErMia/2M6l
	 zkR+Bq2crEEogSVa9UWudrHBOkyvOy5+YlzQHpaNGrts215nQzrjxF8ng6iPhLjFxT
	 Ym00IsC1qDvH9+9qW95HW85qyyyTtaOYxrY+K8LsGbQFos0UzE6YnXyAvqsdgBniq7
	 RsVskOCUVZP5h9i6/EdMM6exOak1JhhzuQKtAO4eO6nX6XoZtACnswB04xkbqCRM2L
	 MXL3Um7ANJPCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F9CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578059357.3831.7138229814573743803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa6bb633908d39edbee1a6101466b64b8ace710032527763bc038ec13e436b4
Date: Thu, 21 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755780593
