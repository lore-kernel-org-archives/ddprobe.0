Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E93E13DDAF
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712824097; cv=none; b=QsL+PsP5Yqi5bYNP80+vkR+3MY7cSryj1LqfeCosE/mQ2bahostMpagBOmfyvO2waiHRNLOlGaNKU3EWl28JYGeC6PjP3Cw79CNPBBGSjr7VkxPQJwR8oU5IiCAJ9IP2Zt7x0L3ggcGHaEvmFIAT6i5flw7tW+cqPorRC/nkzss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712824097; c=relaxed/simple;
	bh=lmAIeLC9Piyf0VRqfLoEYPOt8g2E7Tc8twZrLQeM45U=;
	h=To:Subject:From:Message-Id:Date; b=H6553Ov2KNU/PRz/DQHEf7IhPr1v6KWQFcaY4iwqXvOtzQyreolVqY0zYycKajW7FSOQ61TzZlBZigFlTcujEhStq4VHI5GdZ+IiavDpqEFzrwFxrLBBu2rXZ4GtOlBWiIgSQkTebOzkLB6oaP/H5jmb6HXoX2vL9veYBTKpZk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM2oTSsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM2oTSsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E412C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712824096;
	bh=lmAIeLC9Piyf0VRqfLoEYPOt8g2E7Tc8twZrLQeM45U=;
	h=To:Subject:From:Date:From;
	b=rM2oTSsyF+a7Ab9htXiZugxmZoUN54H2JuTA7NXBKjx//SaV7jJU0I3NRzh3c0/So
	 QlWqOGxNIuPha64ezKn8np9lLW94ahLQhGYrV6YSCIsUI+V/lzE8xrg1sch/TdaEH6
	 8NuDh+5LKWhW/38S7ymdqBuQ5fc+7JvPMTjZCUk4vvljE3SxvJEYnVAZi/kgnohS1Q
	 gC9lx2Pipxg639FnTQoqy2zDMQ1IqXY/mnB86cDMGyItYqbvLUZc3XR7qKFjdB1GAU
	 EW4pVqlAQxEqnILZ5kIM58o6N7OqN21T+MXMAOIQR5rob4sZmsonjZlKz0sGgTyV9G
	 WRabyGahpzflw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D46ACD1292
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171282409640.19462.9429576764024385901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520953b7308a1f3abd71df115bc84b24989ebc3427df9b0e7b0a9fb63f0262dd
Date: Thu, 11 Apr 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712824096
