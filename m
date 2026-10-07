Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8A13ACA58
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791349234; cv=none; b=RiA+6HMpfx3LBahphFVzClc2MXOQfSACdwiLydPZFYeW5B+0XNtvgI9G2dSl7Y84Sjd1nYiLFdp1KzZg71nt18iCA07i7CxceQ+3yXlLqoPs9yC1XcipOTKdH0fC5c3F54AkSTo04pvPUV05ODXijiEsUoJ3/TFWQw46HgDxZP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791349234; c=relaxed/simple;
	bh=nitBFGO7FXfcdz24MXOABGLxIbWFPaecGw/Y343EkKk=;
	h=To:Subject:From:Message-Id:Date; b=bLkJxC/RwCNgkh8wxZpTz0EvD2Y/TnrYl2pwnhkRF1ToVCCP+AlHuPnxacb4gACx/N4NC32Thif8U6P67iI0Rv5FmnVD8wm9y1CKRtsweQFUSUGVllW5y+cTLpuOQzDVjaoOzEpQv501yo6NO45GI8tw5+MzQhVwnJGheWhtMVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFcHq581; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFcHq581"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA58C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791349233;
	bh=nitBFGO7FXfcdz24MXOABGLxIbWFPaecGw/Y343EkKk=;
	h=To:Subject:From:Date:From;
	b=XFcHq5817huxvoSR/bMt+csVlqWk1mxf8eoVMa1LdBTMSGmUHm90IgHJZTrKZcwGt
	 U9QDFeNQpQFxA3Q8aj32YGkjf9QEgFOqdMY2g5BxQTQ7RXt6MEqPItAK8ekDDxKRX7
	 kGpWJ3eq3vNmDRwvegjzVLCKUWBSU+oJfo7hFV3NsztSp/pZsrQdqDb7EgvGQoGvfp
	 227TNcb0zFsbXqvgtwehXoLDUfyOcnhMIQpEi+9xNDktIoSvM/qVJJR7/VG+xsXKDl
	 zzSK8wOI+hKzPqrRcBZw0/YswgIal+vgazcUvUIKd3KrS1TRoJzhFJ1ENJ8t3ZkD3g
	 3njb7btwz02BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9966CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134923368.27323.1468579182810457181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b226e819cad9b69dcf8f686cf3133bb5b459e1a2983d76b3612a31d9b7cec53
Date: Wed, 07 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791349233
