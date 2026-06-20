Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E424175A66
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781917594; cv=none; b=CD0qQGi7VJSuyj76sF3/coiQFBnaoqUcXZ5bGOxXXK13Xs0WbEeacdhNZMtcJsphQqyukkdZrq+cxTac1S/wmd5UTcveUOQEkQj2Knr/38y6zpll5tXN7ebNZk6ObhZUuQ1RXkmfGL9izm6fDDnvKfILotR0O8PPtBFXIwYiA84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781917594; c=relaxed/simple;
	bh=xzGsr+lx6QctVybrT7RVKW+1TGxe09wZ1ZmgbDX6lvg=;
	h=To:Subject:From:Message-Id:Date; b=jg2g/zZNj/s0nch54Acv8UliP61O2Gj0lpycSvZJVsGP/162/ueFQGA5IaXsYiB/RIDPNy/u3gySEblv6uP9beb3D6bHrnhI6TcEo9j5fj3EWF/obqoRNXT6kryI7GOzFVZcbPRrVmA3IBbfS1j16zApLVAIQxREZ2WdXT8AXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv8RGunI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv8RGunI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DAEC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781917593;
	bh=xzGsr+lx6QctVybrT7RVKW+1TGxe09wZ1ZmgbDX6lvg=;
	h=To:Subject:From:Date:From;
	b=hv8RGunIhqmGxZhv6eaTiQwnfgK48tvXiSDdvt9ucC5XgfkseL2MIFzFXqsGZvC2d
	 6cpxZw5TqULz2TCieWY3kQTq4YNYBtDU1eBQcI0owBA5OLPAWwqb+nTkh8hu3kg/wv
	 kxLMglBAEsqYMheDtH4dZhCK6etZgKu7piRAgYW9EVLxaDdu2E81HAYnY6ox+NNe2V
	 qhOWfoxVT95m1DytWo3YU89lFYmlOuVVBpUFwtP0Rlepak6rSFBjtFgHEAJk7Ew7UR
	 k/B55PAPry1iopg1Lld1R35w0PIMpeHk32EoG1qsbgZFHmpn8wU2Lsd5HU/wfn+Gmn
	 43i+5JY6BfDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9B8CD98FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191759369.8077.7515891341596374429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2faa071a8cb471b24d40c6157b691d89725f872987e38915a17f4f5898ed34c7
Date: Sat, 20 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781917593
