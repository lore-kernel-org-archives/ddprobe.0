Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C84E30EF9B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782620314; cv=none; b=EIAJe7mS152v04TljAy5mWeIMT32mZctlwRbLqclsph0zWwjWogOTzGAoWFr99B74qxpPWKIFLTi0IzJh9REFJz+jWGVbwC7hHlAJQpnPhHgA3+1RwOQb3JgC0J5TS5dQvtaXzZz/lXWf1hrrDnkL6VK1lHOpRuC2nYNNxX3KUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782620314; c=relaxed/simple;
	bh=Kb0gc8MwTMxSZcKb48xOMiiKGUyznDktzQosuEOrawQ=;
	h=To:Subject:From:Message-Id:Date; b=YhiGJy5T8IXcClEZfGPgGVSWPXjyTv9/c7YycyGdWLyXrpqWptuJlM0f1hdCjjBdC2Ykol0mcQGPySfNhHEjGmmhnTS1pHOjT3hIVxvf0wkHj+B398VXZXTm0rkMg6zI1TnJPEOu7ZnN7wBKwauN4N3oyKXH0Y/lhfxw7yQW6rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+EG/qPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+EG/qPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7401C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782620313;
	bh=Kb0gc8MwTMxSZcKb48xOMiiKGUyznDktzQosuEOrawQ=;
	h=To:Subject:From:Date:From;
	b=Y+EG/qPTnY51h09z16q7ehp9bsNq0RPFWOCqMyyQ6Yir34xoUaEK6KloTJecy4slm
	 abPl1ZxdT59Vd960kmuzC8JuBafto0AV3MQ6XZefg/TDIi60QXQzF8SEUDnwbORUdg
	 ANxFdegI91iEoE00dMJ0QUxD3MjIrixKtM4n/8WoTsFfRGaiN3rszLGkeV25+ZXK3e
	 7bXfQqXD8PpC0fFmPk5BLQgzCHOBEsGq0K7z4+TxCEoAWtA5hzpoN5WJ037pTPdF30
	 5RmIbhGm45lHTYPvIuYygDZoe6Emi5KKfWU9CAvI+1YHs5vYpKy/5HV91hCrpttHU/
	 EOBPnpYRxJsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ACBC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262031369.7851.3828906748847994907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6307ec5ebf01e34e42cb323d32fe8b1c4438e30ef3c71e43b43c34e43339c1c
Date: Sun, 28 Jun 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782620313
