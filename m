Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9DB17993
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787536234; cv=none; b=ScnbUt7TRpG5QD+lbuX6ljMp6S/3kTuicAv25nUJ6LixvLrM7SynWnfvm4Wlk8lIDKRKxL6h/cXnF0qyspS2lAeXbUXxY6b3sztEX7R94ffEoAHfsQR/BRVoZ4+MiV0DniNGbcqzIInjC6YRPoL+5wFG8f3mBC+Wa8E9PYAyZ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787536234; c=relaxed/simple;
	bh=ZF5tHLyPzydS8gC5EpOJAGAewK9cPqpiubUfJLympfE=;
	h=To:Subject:From:Message-Id:Date; b=lWPSe5F0CtSJ5TAr4cBQgqJkYGgcyE6ab389shqHYr4ZEMPJwFIqxpIqGfXc3NOQ9pxf8gJIity5zBoTlYoEPV32WhKk2NxYX2y2cHI+/K/saQT+CMnVnjNp+DV2SJFiM+RFUuaIm/zgzMpXdjzPXxLQNG7i4cswdJuh0RLz+wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giwGRylP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giwGRylP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FAFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787536233;
	bh=ZF5tHLyPzydS8gC5EpOJAGAewK9cPqpiubUfJLympfE=;
	h=To:Subject:From:Date:From;
	b=giwGRylPS/aDbta7wGbkdT8tyh0Rz39iprKgmkkVp85GPhxzIquWnR8OmXnJU9ldm
	 MqO14845OruF8cN/evlUyT1JezXQgWuT/5eUla3Wd3TbF6vR9F8BFSs6Mup5e1sDs4
	 BoNkQrnIsZAHlNUwkd9pxfupkJpIO0GRrJF1QLDamHusJXCSawVnZveKyl7Gejaaqt
	 oOqEION6EDfkWBKGc9oohuGOBZVcp3lQkwrplKjv6v8eNpoO3bWZG8RjUPf3e9hTqr
	 RymPT6uxxTkkni8C0xtswJk+20cCjw1NFoNFzblRU7QzpBOhHUz+uhroIKPY/uhWGH
	 yuyo/E90rRnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4FC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753623368.14045.2449006476502328232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5464cc39865f980975c65409bfe5f4c587aa71bd5a3f7acbb2b8ccf5e9e10120
Date: Mon, 24 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787536233
