Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD258F5A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742325594; cv=none; b=EUUWrpIJ9bLWQETVbF2ypdgoAkQm8w7IZwzupqpetG2V87dqCG/HQe/m3jxEUOiZK+2BFva2zG31/0V/ifZJL5U6HWF+ffLKE9PiFbJa00foxblbqkYFHxn8z60i2i754nl23yVXUNe7ZDRTpmnfZ0TtS2Bn3GMjW+jamh4i/Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742325594; c=relaxed/simple;
	bh=57wanmF9Du3lL06jnCdzBwuWSpGMI1nVkbn+Rgiuq+8=;
	h=To:Subject:From:Message-Id:Date; b=MI8hsW1/9tZq6bHfqcN2OSku5Zm2uqamaAZD9lQ7DsfHxacdkGscAolqAKBrgzZJSZOC7KbTYuy+tpL8rT0B/vjNvTDcRf0Vcxp8hvEa2QHa7J34nVPHpmN5SYgErsCm1vb4eIFmkWSR2gR7UE5NVN+AIQuWi0s1A2qps6OPHhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKlVtrUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKlVtrUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742325593;
	bh=57wanmF9Du3lL06jnCdzBwuWSpGMI1nVkbn+Rgiuq+8=;
	h=To:Subject:From:Date:From;
	b=QKlVtrUnPN0EHrKgpD1wmSXTzsW8eF5Pd6KPWll55gR6reu821v06Ow/3KHz174vL
	 oBCyg60Ewk3hFKgTFK+nFeHwgF8E4O8aquUKEtKg1qi7mLmcG+t/3y3sdZh5hHzFwU
	 Ps/wCyObKlnyluadB2myXCiJ4HcleShPmUMfG+G9LO3qbmHdeyIBqfU8EUDI1P5Dc2
	 h6O4Xcqxyua5KE3t7dLCpKB9fALfoCcqGAxp4Pkdt8ZD58mQHBspH73S4OlWQ5g1IB
	 7oJVw5Qllxd8XIYDxlSsrUZ7GkiwFBtsrcvYxxWp7Ckfj4mQwYWheRQI4DxZOxo4vW
	 ky3SR3+Vaswcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93572C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232559359.29614.14244846801513867941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54354c37227b363216a3d897cc6320496bbd46f8be650152a0fd863f029773e
Date: Tue, 18 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742325593
