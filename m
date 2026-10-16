Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546B7322DB7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792143034; cv=none; b=PFgUQrLHoQT+0JukVVJ6lPCuGX8nPnRIsPoXcpgNdcbRM1vfc0dhRqJqRdIGnPWktlnSWPI7tCA/AvFNZm4BUlsMFp1BO4mLc5LpfNq7omB7TO4jxnFsx009KsTW3UV6KrD0t5yq1IvXHSywoM+xYQYTiEUF9vnhgewb4VOzE+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792143034; c=relaxed/simple;
	bh=pAimMCgKCcPUF7nv7UPpshB7CmcsJ2+ix+jWdkuyj0g=;
	h=To:Subject:From:Message-Id:Date; b=IrXgD+Qah1h0RcxeMbGXqctFEBnmA2oUe58sGRzdGPMsBgvBxYjrCKeb27wI3uKForT86eTI22wSkfwD3JtNwX+qGtRETmAXpl/jhPj+gGrOtKSPCOoSOZgvwySBeUD06k9TWArd6Cbiow7wOsG/JxEyc5ZuyEXBjL/pAH5E+sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxFGSCtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxFGSCtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC72C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792143033;
	bh=pAimMCgKCcPUF7nv7UPpshB7CmcsJ2+ix+jWdkuyj0g=;
	h=To:Subject:From:Date:From;
	b=DxFGSCtChheUknW0+G6mGM5Wj0VFbdWEBl5adQw2j9tyPpqEnJZWv/r0kfwSLdWBt
	 5PT4Tk20P2DsNnTQ49jD1HQQDRfaoIzIF64/nns4UbjXfKU1ZZ2S53UmxWLl390ieZ
	 sjKiWyhyV6grcTFcBcNXA73Vj7GEnUy9t10ppXbAoqKsPLnS6eCh9YhPGb6rHdGyIS
	 Pdrxi98dW52W4un0KdF/mm24HnhpBg42vA7EqhqBVEquCunalK4tClQteaL5eubnoF
	 hEU857D4UuZeG0Q+S+XUcL1UxtZMSoIBdNBOVe/cs3R8jU5QxGQxgi9d5sNp1JhtUf
	 eiHspPbTYtRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6A7CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214303375.26078.18380174436598203681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e836f93d7e6ec207693b463aa1f25879348f141d2db51a7e5c4ab27ac181afa0
Date: Fri, 16 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792143033
