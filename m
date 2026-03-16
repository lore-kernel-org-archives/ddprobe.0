Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C7134B1A6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773642894; cv=none; b=R6eYR9WnVPMIyXEHASOOxsYAn+VYaTF+WkvT3EJJdG7HhA8CTx6nlSnnwCgB2pSSeZ9lrgiOyx0Y7Ix0XvBC7eJoPV+ZgHE2SfzjleI2hPtAR2Io7oK7fCALBqrpSfEsV3fWE3d3BO27/M9KmeRF/qsdU4pZCkdWKO352EjmOQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773642894; c=relaxed/simple;
	bh=zAQ9uU4ypAtKOGDmeX815GmstlJniAftZWiQRDQLwsY=;
	h=To:Subject:From:Message-Id:Date; b=WMoLpnZ0NkMktFZXdXTpVGIymF6gFlj7JiSBk2Ol/OQfgGb2DF8LP8801vPyS0p+W0nqzlr5hiBmQ3fJRrwRqqwjvNyRRDguI+sHn4QkINvQpAiCfDuGWMQcYve4UqLtMUplTOD9MR3A2IS2HEWMDjqMwlU50Ief94ryr9ZTPTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvJe7pin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvJe7pin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 989ABC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773642893;
	bh=zAQ9uU4ypAtKOGDmeX815GmstlJniAftZWiQRDQLwsY=;
	h=To:Subject:From:Date:From;
	b=cvJe7pinIe9NZCeHVeer34O1WgC+I4Hfo5K2S5of7NRiiH538sEoPoHqRT5aePEun
	 L/l0Tt/w9naZ7I3QWnYZNMynajguIZbaj+D5qF3UQUAzZEKtzK0bU0E7SjJ8Fut/UW
	 uc+ZcQUREdg5AZrFraKcJgsVDopxKexbfy2BXusl1SjXu0gjn6vuz49yy9PElOe7Ez
	 ignoS17Y7YUrY8du1wE9MbLt3xdJCc84fRO4aRhPlklxDdqfymoZxVFzofcxWw/863
	 /vkTd6OtqpbAl3pEYAFa5jg2yY9xwzJzpgG7nytgaeHlav/KzJ32Gu6Dkxmk8f9fjW
	 5Zc1X4BrsZ/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA0EFCBBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364289358.1763.18300293374093475598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ef3f2f698032b157f5e9a301212da8a852614a8c46e9c56abd362728736e68
Date: Mon, 16 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773642893
