Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370126158C
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777268254; cv=none; b=IuRyZM1YN3DCV3hRu7eO2pm7pt3Ntyjtjt7SuFmlY2xggPyelO7SY7KGXfG9e1D/2NWwEkcUrkzfbSDOGbJ0w5nDmuURDEnuF70THUXzVBIz+5sI3P1s6MrMiMn3+x7K91rwksg5Jm57IEy/4HjTvU8+JUokHY3Sv4f1m0EWRRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777268254; c=relaxed/simple;
	bh=nJnGaAS9y0TtUMMOPkEwokbOcjue5ekga28MqFugYGc=;
	h=To:Subject:From:Message-Id:Date; b=ImuVzFg+BSq1G8E9XsKCK0mtgnVZOakJ30VFxCI4Z+eaigNkjERYTmoEn/clnF3fVSMR/Oy4DnjzXJjZeFleYk4RjF7E4KC16PaY73wGx1DNwdPPX5VpuUj1R9DYlQisUZb/mBElq9Zku9zZqHyZh2P+YEclD0RVj5tPUSZsKsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWtLs4nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWtLs4nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B9AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777268253;
	bh=nJnGaAS9y0TtUMMOPkEwokbOcjue5ekga28MqFugYGc=;
	h=To:Subject:From:Date:From;
	b=bWtLs4nOGv0/7FgTC7DwU9PdfD8dbNEjLMx3PTA2kt+EuMQxJ7wDELMmUGseXrWnm
	 9GV4zp+FWZ3mJWjCNB62Hvmx4vaDoduAmnxDleW1SiFegHTVICwkltzNlMZw0+J+H4
	 DpxY6bgLQ8xJuRxuPZ7lZo2xBvZHVm6ey4Hav8fjxC85oZZMuuzFTd0isEAMZl951a
	 cE6yZ4uG8NtJSvQ9bNw941VUcZzAwjXGX7fV29aQnW4z1An5C9Fp1Ea4gA5W5amSAo
	 g424AX8Z5EUp1ZH7YxBqJ9tPy+Ek3xgXdKfOskqYjIkhezixgLpiYVPsqrhYSvEAQE
	 i+o0pXfAZB8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF59FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726825368.5019.16319017792496813834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304e43712f369667dc669ff53eab8eaea99f192f5e13090145679400db9ba49d
Date: Mon, 27 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777268253
