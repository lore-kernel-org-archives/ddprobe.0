Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D0836A022
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781206594; cv=none; b=klE5TAueK9XS3J07e/E0gF3HgyTeDQK5QEJKMkxPH5nfc7RhN1a9+Bk79oHlc552ViLfc+rVz5T2dR+WbGjNJlKjafvlpa5RnAo2U0ObhJ9F/7oYB2ytWFAiACAR0bBmrwYfXG/U5mvNcyLG9vbL/K+utG/xrShIR04rP4dauY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781206594; c=relaxed/simple;
	bh=zjpIJyHHI2S6XQ0yo5GvjqTNKUVkuTgghWTYmKXNI+g=;
	h=To:Subject:From:Message-Id:Date; b=lPzk+R0RTFySgniNpcvc6eaRfKKdtkFOwGQQ1kYEDZrozl3/1XWSocUjDYEFfhjb3wHmx7CzD5i8Bo8NWI865mKgA6Et9rh4pIXsmj5FEe010cfA8Ka+TmmroOU7Y9h4IEnb91FQy8NzsxG5YT7XaaKOY3e4SScmxbAiaonjIuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfUZ38Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfUZ38Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5AEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781206593;
	bh=zjpIJyHHI2S6XQ0yo5GvjqTNKUVkuTgghWTYmKXNI+g=;
	h=To:Subject:From:Date:From;
	b=TfUZ38Lfynne3VQq8AJNGX2cfNclOZNxxYcD6VTqmdkzhlpkrGhBL6NGNiuHpLP+F
	 xGJ1BMafxmn5KMq4a9LghvltLsCYM5j+Rk9kWnSXSGJvYISMlPAk41GEj224YirAGQ
	 mbNyy0isUdH01Uwhhw2o6uoJDZpz8ahZjINMju9ePgfJNiWHWPWYzDb7xAv2Ww+gEl
	 R3Rha0d68hbMykQZQ5thFhvgmvprwHeqWS+WE4FEJDInbX+9HbRS+WZLicEZ4Q5mtQ
	 jUvtxL/wyD01pVGEVcPKqjkRUg6h6Qk++9yjwp+NqhpGu/qjB2YjlOT2jWBh/70RuE
	 XqWp71tmjgwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC21CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120659373.14135.10159145916254273349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec94fe7026dab4cfff2a00193eb8e9e7c92ed19c6f6ed9c78231462337ad560
Date: Thu, 11 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781206593
