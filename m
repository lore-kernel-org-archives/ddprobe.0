Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB421EB1AA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784255914; cv=none; b=ZQZbPqBkkwPTVy6We2nKnFgp5D6JFvxlM3LyrUzXkW5oGAemKXlT1nVq6UD7c6d2Mo4o3hCJ++JO4UAJPvoBjyTn/1tOOWFUT2PcWlIQjzwrKKjL6eWkathql86BS+gjajVV0mtXImAa2Ahfm/idbkpz0PYRAfG4pUnRmjypZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784255914; c=relaxed/simple;
	bh=1ypflE9ZJIjrLm/btBkau/sifiS1I0fCivbsY7iF74Y=;
	h=To:Subject:From:Message-Id:Date; b=qijYs9ayFIUv1c+AY7cyynbW2E7/1pMyLiZ+Y0vs0HFZXxT9EmJ21QxJM75qyDKgGqx75D7QzJUXtD9shntyU2z3kPoiLU60QrJITvuf/c4zI9c63dIUsJUnBJflYJ5MzP2A//DURGX9IFbXa0soieAVFgf2WYvK8fyU3D3ueMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcrVtNz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcrVtNz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC795C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784255913;
	bh=1ypflE9ZJIjrLm/btBkau/sifiS1I0fCivbsY7iF74Y=;
	h=To:Subject:From:Date:From;
	b=UcrVtNz390V6eqNjDcsH2WB9eegGITPar4VS5y5UIcwoJmoenTSp3vvU1f6bXXCjH
	 8OiIDMGKqSlDpwqpjrEEZ4ohWMpPdgjmZQ+kS55vEzp0sn8icsPDngN4tFjE2dsJky
	 AXsQFFxVHky9ohIh/EDsb5C7tUXO7DOmHwvhaC3MEybA6Vk/ewHa7sbUypuI9Dg7Ic
	 Qj1pPlLDmdK1Ic4X4XJbolXOOBZ+dVp1Gg0BiTIMjiwjDR3avvp88J6T7K3NawCEhj
	 P3WWJpEZ6AwiUfzyYI8AaARSNOTg1F9SlnxHirNhOBwPiX683a2DQaK6XTnJSd0cZ6
	 EQJ7O0l5y5t6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADDC4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425591368.21657.18186451649442373946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078a79b5d40c6975d61233f4d62cbd01c950f8300ef432b112acf7ee3ce52b74
Date: Fri, 17 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784255913
