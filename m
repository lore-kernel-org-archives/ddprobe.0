Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35A18D647
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723703154; cv=none; b=edLIJUt1cq3NLeww7GjtpPw7NW8L7QHapU7rGNY8CEr42+jix/WSwIiCG37qjHCjCMYyS6OkOYuQoZyikJScbfPDoPJH1fJ1j0kSvW/LDyNoGYQkuufK2tDWs6x4YgxZPa+n9Y8cpSMxqY7h351DsFrGcIIrK04ECWe5S8HiYNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723703154; c=relaxed/simple;
	bh=OnNigyuQrMNbTchU1CqL7K8Sl257HvIOElDrRSAtW78=;
	h=To:Subject:From:Message-Id:Date; b=GnsbjbDFHGvisRk2mJvSNArQEQE40MjDiYGLIjsO5hti5OAV4AiGRRSdgCNc2AFrzJcO970wY42LMs2wHN2xcZWoruIt8F2QUc5em6GvqjPmUu/mr5xECW/nlRt3cRsHshcyFNFfBlfA8JihIZsBF2uspw+v+PG0OjyasorkDMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFTdJSJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFTdJSJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95E4C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723703153;
	bh=OnNigyuQrMNbTchU1CqL7K8Sl257HvIOElDrRSAtW78=;
	h=To:Subject:From:Date:From;
	b=aFTdJSJdzg3eWBHTwhFjuPSYJdQDgAT9RQIQGhyNXlR7DHvknfh4uWyXF/xhP7m2e
	 o8HpwK4w7gdhxpPa3fBNQ6V8CJQHVVHAqamMvO73KP41TwmGfBh0xYiIz9A5SYSBpw
	 L4splQ/YhZuegHsH4LBn45TIkAgtiXz/cXw5n57z5IxBxOwxv79YEfBxoNLTwa5TJ/
	 5VnPggRczhZDW71MtbjsX1kdaz8l4QATNLKcoAOqv94pdLzPgnhpDFOUKVoZ8SRoy0
	 FyEK8XG90f1ZVJIlh/oGy9H/0Hf2iYuVh30XkaX2LD7GdN8PYDWnyMncTiORdyIdQ5
	 KQEnHhOAsuchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14C9C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172370315364.17484.2242314348101431136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d538aa9787bcf1b4f884e3ade2c8d3601c923f2fe78e30747ad6486773fc46
Date: Thu, 15 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723703153
