Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320D4202F67
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748641194; cv=none; b=rOU99jHJQNN/PdEp7AOpPxSby0Z6YJcb6JfBl3MKxE5PrXq4tko9f8N19tye3hGUAfunwvxEFraurMz7W8Oy4oATevIvwEmON/nMlpnoFm7PV6K0vIIrCWEVXwU0VdpuAwErf4ykuFdc6YSztCfCSnskVnTUe1zC3N+Eih7q3vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748641194; c=relaxed/simple;
	bh=pzpu6FVx679D8C+GjxVy6k0QHgh+4Ip07r66N06Wzdw=;
	h=To:Subject:From:Message-Id:Date; b=iV9grG9PTUx1PfT+NvafZLvkUvFCt0gkOrkL7VcUIdiCtNtRpeeZG313vS4yurX2njwxZO/hP1mcUruFgoV6uNNomETz5rGgqLSmi6hxtPxvW+mCKH4Wkissap7QQUW31NbLB/hI4DQgafTRCK+Mcl7w86RXXU47q0aUTMo6CNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUMnNovV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUMnNovV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748641193;
	bh=pzpu6FVx679D8C+GjxVy6k0QHgh+4Ip07r66N06Wzdw=;
	h=To:Subject:From:Date:From;
	b=jUMnNovV2EXOYRxmVXqOlIwA1qs9afRZkDGzxXAUJitxs6H38a20XhOm4lkJa1GG4
	 ARd2/WSqDi+HYWOxX6vfx0jBoKWn8Lr5vWbmE30tsl/MGd0ZoypCV4hoNX+trh4Oly
	 Rv/PI9uHXwWfsCkDU9sOQksp3lo1bLtSVMzp62EiuuxXsFvUdqA6RP9CB3kwlbPJv3
	 pT9PRwjhgAFlQTqSX5KEW47GZ/tPQvJrBqrmy2jw8Ji0T4L+eHZ0k73LCyZCA4JbIW
	 9nD3JvusSCN2UZt9rIx/mMydehD7/LQb4Ox1BKzizIcG5IIk7yNRA5DrdZSLQhW0re
	 wZnqefLc3QJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E4C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864119357.27677.10066723501208259532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86561f43485c17a3d1c884e8079af9db210bb9b7ef959b9503313e1f92226eeb
Date: Fri, 30 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748641193
