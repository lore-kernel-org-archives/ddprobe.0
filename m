Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA501E481
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730465154; cv=none; b=WoosSn5vp0XgWriPy6daYhnXAfBRdNb5jcNDo/rdVKVLhjOMmPB4jXKd7kg3naz0GBwKliLn2syYIjD4aEn4qcMr6i6LM2u/eHzCROyMVUZKij8brlQ6MzmDaep/eKbPrZWGE3l2NE1N7I9zihFXpuq2hpW9Ibp36LhLXZdYAH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730465154; c=relaxed/simple;
	bh=GaWDRpbTHlEwT2PpvJCTDcun93YVsW0v61IbQQF2Fow=;
	h=To:Subject:From:Message-Id:Date; b=EtK8VFQdXY8V8ZpZ9aEENakSR+4mo/djTzcr/SVu3ft3OteBLD97ob1RoqVBH24O8Yad86iNwtULkfjeFoXZXK6ktVYt+OdODPjyLyvu/ag/itOqVx23lSph0+CmVrW1/tNIySAJbYBFs58tuBT/CLzBHu00ePR75oG8osZAcsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VU+W9ylD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VU+W9ylD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB82C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730465153;
	bh=GaWDRpbTHlEwT2PpvJCTDcun93YVsW0v61IbQQF2Fow=;
	h=To:Subject:From:Date:From;
	b=VU+W9ylDocFtN8TX9SYpZ4Sp1lZ4Niuz7aLys3tmJ+qFETLVzXP/s0ZjckgIlX72U
	 WGkwEdlgw5OfAAd+MgrGa/qkpwp3saNnSEuPpXwVQq/VijX1PvQ5U8YR14uV7bjQ5N
	 8smbDATapIrmlcgW8tx/N8GreNvyNXG/TSU4keezCLk8PtG69qHzqSmle23WGqAkiF
	 5kByM4u6h/DfZci468A+HRYjMX5xD+GVuItOtxgJeC/9oA6Kf4i2Rk5hudjeUv67uO
	 dYfj113XBzoaLQYXjXEBnDW4M3WzQUv0YfekEVkxy/nIKr20pfWqMnljsudai7yuH1
	 GFpbynEMQj7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9863FE6B255
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046515361.32442.6554027962420464870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6eee8608d5d5f00d108e88c8c77c81a27b9eaf3575ed1d9543af5332b67e55
Date: Fri, 01 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730465153
