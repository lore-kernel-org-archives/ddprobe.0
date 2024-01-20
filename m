Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB1A8BF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705739897; cv=none; b=rcmqWoqC4uyuaZOVu6K6SNL/IoVYIsaX73itI5pZHVWHrKRgM1GfxFkitxkVgcBRrD84Fw5VuixeeUKFfC0qF3NjUDicVr/ibbHs8gvk8BFZq0H39lU/KzFoT7+LQPUSQsiSi9FxzaotCtfuWfhcPcaa7THd45/xpmTfHBJibFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705739897; c=relaxed/simple;
	bh=6RXxRbS5dv+rAdYm6GCHgTRrb7ed8jpFjows2YTHpo8=;
	h=To:Subject:From:Message-Id:Date; b=tweAfkWnaXQmYztIx0AAVOjdki60mHFsbiBkztdSe5zQRUeVC5zEigtDQX5dIsVJaKRLtIz8Apo+ayDYXjzxgBQg9jvHjd+dCqBHXaOsTxAjPWJg4K3HEiaOhXNxQk9Cv75myicOQ/ZCFVNEFuGGaHftp43CP9e1BsSeZYz+yXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6UBms6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6UBms6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E60BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705739896;
	bh=6RXxRbS5dv+rAdYm6GCHgTRrb7ed8jpFjows2YTHpo8=;
	h=To:Subject:From:Date:From;
	b=Y6UBms6ePZgi93U6a5fdkwdNcN2tOVpdrwu8TgoyTMqF5KknN9yNB9v/cXqmS4PZE
	 MgpG9i3EkpIkPsY0tQiNowv48ux8wUM13JLuBcBZLYHcUajYqZkwViV84+pxfQndss
	 omqlsqbZRlVXRlhKzY1Ogu0kja+HNLc7//RNG+1MavwLauG9N+myzJYKbBFX4izC2F
	 kJhI5D071vVGOA67ospCkn+T4qsrdkWJ/gRpeSf4dHr/2oZtXDzMiU3VjBo1G9tR4D
	 pn0QHOg0CzaFO/RdWo6jZk38Ezepr8G9bDCJMgo4MPb+9JBu3oA+Kd7HLSueDxOyNE
	 Gru3yWnhl7Q0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF80C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170573989637.3442.12252431545296078244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2794379a853df86cc0e06f128775129a818208867c08d1a30c0e4e2efb9ce467
Date: Sat, 20 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705739896
