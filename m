Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEDE158520
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737069954; cv=none; b=PyMv2w3XMlS1WbGKcUiM8Jgd2g3CjmmW1B2JJ/zxjIpcZr/72oirT3bcN2rUkTjzwXHo9NF27vl8y6L96YYz1lDqMa831nhKDIVUSa4d9MkxaHty+x3YCSFhVp9TiLulhLPPv4yKzRagWGdX90DilzloJq2NtQa8lKs+Ea33x1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737069954; c=relaxed/simple;
	bh=2qJoMX7gz5IuPYUu3d+j/vFK158ikcnaoGRaY3+KoWE=;
	h=To:Subject:From:Message-Id:Date; b=R106qiTuoVx8q8WEz/hA/RPFdzndrZuPFNALC8hmr667r5X2jz/r8/1Biys/gG1RJPJ9Jk1dxDzVBJ/dSwguOoxdX1gC8g2SPkjDb4R2oRZoiMvfnVbPGGb971uIY812vgwLM3O5c2JTcVu9D0g52YXBk5YZHJshuy7V5xNSybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4itbmf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4itbmf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF8C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737069953;
	bh=2qJoMX7gz5IuPYUu3d+j/vFK158ikcnaoGRaY3+KoWE=;
	h=To:Subject:From:Date:From;
	b=j4itbmf4QTerp500Qh52vmBiHPzsZN5D2VjPzKQi/GaTwYLJ2xKQ+ZJ3ZE8LtfYbB
	 BLxNOj0OmBAL7qBnaZvp/7rBkF1hUqLcQvyOH+enKnBtvDdQfkBqq1SC8ff3TMWDnL
	 fi57in5nOQnSWsk+xSYdKmGmS2tIbwWsB8Co1hZ0lcssxpl4tC9fBEv8mAXZFC8ohR
	 UMVrIj14+Ge4USy6m3Ao/MggBUzt4cmC/GsUGxaTpszcHKUWy8fBjC85C/fKz30C5M
	 hIWyZA7gNqoR42diDGk7K+IKhvLdhbeN1A7D6JcEr94t6k0gIaZwtkpQd7EeZ50NqR
	 Nb4yl7hFF+tIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508FC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706995360.6418.9253470375528753524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17fabefaee33cc1928923265a3cabbd43e46d594b8947fa9014a1f0d24975b0
Date: Thu, 16 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737069953
