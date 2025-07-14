Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E2472600
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752482393; cv=none; b=gwMJIvb+S7Yz06iQtsVNmU/3RjwN+iravPO4ObFVBSneOPwF0SxyEjc9v+pIICLl1fiGUlmO5cU0wWAjJliRQRdomIyWMoXXqXAbL4scIuShX7YSJvYT9is8r744toW1cv2/0nYkWoCjNZt/3YVc6CZ4MfJE/6/F/wes1md6t9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752482393; c=relaxed/simple;
	bh=s/XfwbACnTXP9SciiWRqulH5I0StVtoC2HZu8F1dA/0=;
	h=To:Subject:From:Message-Id:Date; b=ADx4FR3nS3NCMkc9qfRORXVsk3ATkF6f+7Cskbaw4IM5OLM8lI/0A8Q0L4ekF6bxwdCujJm7Xw1dcAbO4aMKi0qm4Y+QhoklzMVxHXK4OciJUAAfwIBhJ/caE88/8GT72BbKbeOzLNnvH60ShYQIFzOKXN8TeugZOlijdtIxnp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8+SEd0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8+SEd0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D59DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752482393;
	bh=s/XfwbACnTXP9SciiWRqulH5I0StVtoC2HZu8F1dA/0=;
	h=To:Subject:From:Date:From;
	b=h8+SEd0yO7CVmmjylQ1e9A/T6rMgXd2Fa0g5X804BYxweo7MjoEAvJkzcNW/05qPo
	 prQoCYTlg0iI013TGax04+Zdk68Xk8QgX0bTZEBeBz58BzHjfwpHCuyLkAkhxQr6PL
	 dmnixqwaWaSw3U0iuGtF2XcrN1pm9e8V0j+qQxrVudxIBAsMTKkx1/3G6wmu8SVqqt
	 FSMzQZi0gvWSFkGikq6IpKfucICtnUmhid5AM5v+q8+Untwgjb4KvxhVqieu2+41kt
	 R//Pb0cUcSbhohpYa90bIrDvRTFiBDgTnQhJVO/Gb7kIsNE8jFLbbohG5kLFhzF25g
	 Qfm/3MzZhCGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CDC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248239358.28282.10112409649158381292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540351d3c7d028c13c5e0f420c61de7aa07571b6ad209de65c3e53ab14cc0183
Date: Mon, 14 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752482393
