Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF9A3BADBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792141834; cv=none; b=joE+JqNEsWEEazeP9AaOuH2gcFZMVIg62vHWfDxNg1BET5uvGyHuJB9OTSlhOTl95S+ps1rzhoQyBCZfEW46fvP6LI0IiUQDhPPgVIx5zkv5MZNHuII0a3goODh9YTX5LpAi/AQ9Q/VqpdIRWazvxNEj5pud8GYkgQapu4+Sabg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792141834; c=relaxed/simple;
	bh=cuu03Qom/0Tub6iy15QBJX7F/1HGF0xhUSkLNd4JDjY=;
	h=To:Subject:From:Message-Id:Date; b=GO90VakiUsUS6qpyN5+TN3J1hfIXV73MbgGyv/gBOM63qayggxel+mKI+hh8MlP1QUMk1HGJskovAPGX6I0YGMqFWUJDMpwmhEvKR1Qh8K8c+tpZ92snBBQgW1/0DHT+fqbHrwqYPpP6wqE1KrrePmadikTfOcAF32vICHn+HRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6I53kA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6I53kA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA03FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792141833;
	bh=cuu03Qom/0Tub6iy15QBJX7F/1HGF0xhUSkLNd4JDjY=;
	h=To:Subject:From:Date:From;
	b=g6I53kA8ZqOHw99N+/vS8bWdGaoqcfOY97TMblAZah9oU5p1fCUH1w4yJJYchr0YY
	 e+mtVkd9CNlczqDhoBjw12R1VfjL2+lHKYa52fU3m+aP/VqePFRFY6dh1HD61UXNWJ
	 VN2KQ7OX7nHFEtYZ0WUqLfaWds7z4D4WIX5JVcX0bykhl5vXqyzYVBJ0IJV4PAzzs1
	 y12WBX8zJ8O7SxheULtbq9y80TyEWa44PTNXHYPGZGZbD2ZJwL1erwQOLNkcEQxH/R
	 UmGz3LMB5Gmk6RAppbbMvNgY7M2H3WwSx6K4YtemH2E2k0m/bUsV6LHYmDwjJvkRXB
	 NuQwxXFaD746g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D0CCCA48B
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214183374.5552.5597994786942846726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ca7f5a3df946d050f0620f13202f8ecd61da81a3f988f70efb98eed4fead76
Date: Fri, 16 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792141833
