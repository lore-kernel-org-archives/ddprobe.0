Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7CE13D891
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788046234; cv=none; b=X5NgzXFTsNIfPiVhe891N7qHS9xJwPWT18Wtp4u1xLD41wagheIVlnX0VQvIOr2q+djN9gxO0Wo6O3YAE3TPGDZOL8p0/Llh5xZRk3V4rqi6crue5/iitqPscmwKeuWEiZaBCxhlkBpZFLxjV/3ntaY+3/TjXkhmCShSytQlqLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788046234; c=relaxed/simple;
	bh=5tiq0+JiW69slEPoLjKagp+Y3bZnSyRLERmNVf5nO+E=;
	h=To:Subject:From:Message-Id:Date; b=O3GTxZYrrB/BkshqPhg6U92/sMtGG+VELOeSfhY+cHcd8PlJVRHvv5Xj0EsLTJPLenIY29YzpISonNQrViWXQ/5/3DJuj4YFDA1XvZgbPr2Fh6Kl4rpTgozl39eydvOc0DgSLCFfLOxZ6Q7Q3ICYPaEntZhdaHci+kNPRbs0NFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6cSZyct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6cSZyct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788046233;
	bh=5tiq0+JiW69slEPoLjKagp+Y3bZnSyRLERmNVf5nO+E=;
	h=To:Subject:From:Date:From;
	b=l6cSZyctH9ehPNkOhQm0bPzsAnBY/kM0mXQtQbHq+Z3t9j5KgIypeKliEQSYmdfKY
	 B/tFK93qcEPVpZSVUwdVNZhqdBHzMOZWIfjnwuRkAbT9Oe9g4PlIZ+q0MgmtOQMIpz
	 mX+CzSXwe6qkP5NUcMHlXKa8bakn8/KQnduiAnAEXTU9QAQU8wEycHHM7EwhuI3Feu
	 VSJECcJGlR+rQOq7IOOl+PHtzhFcJP5ciTv2WemDCyP/0C5YWmF5pN1xqgcVFomM47
	 Dj6hihAYVNCPvLLguPIh05Op9wYIlX8XCuexon/1bp7dUDMKgtuvq5g/xyoYbe0shn
	 B2jGxlvDF0Lsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE8DC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804623368.32627.10280121913597418369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cf9213e6e6ccc25ca99ad5acf9933dccad1b77e0444a4530c5e6ca954d7f45
Date: Sat, 29 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788046233
