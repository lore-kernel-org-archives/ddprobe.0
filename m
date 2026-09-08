Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AC8577E54
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788883234; cv=none; b=YwrBlBSVzw/1hiKHXmQNd3pF2mSRaeDxmARQM6aRsQsj9TOuAfNoDgbsKT7tgL3ecQcXLweTUlHjMKCq+xvXgOgs//H+YRNh6a7LcPXu+0+UnwkvXvUF5mPKmLIbGsQTT5V7NYiAcQ9BSnyOcfZ//xdOIbiBAhcLNebRTLy0yJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788883234; c=relaxed/simple;
	bh=KeWXN2dcsZSf5jJlzlT36rzVDjJPiPJtyQiil63b6eE=;
	h=To:Subject:From:Message-Id:Date; b=bKUm4EK8cPUnEWTK/nwdjtvLsiKgyQRXwTRmUrRGn3neUz8rqwINp2V0d6oaaZSUj/EA11DSWQA1aRDG1az+pm9WCcnsdqu2FYbSOSW5H+GHv8ZzIkDuwXdIRLGVWi0KC2hWgJ2UCszGWIE01EkDbb8TxEEBd8qPSckGbiGrYq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMWAE802; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMWAE802"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86B8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788883233;
	bh=KeWXN2dcsZSf5jJlzlT36rzVDjJPiPJtyQiil63b6eE=;
	h=To:Subject:From:Date:From;
	b=MMWAE802ZGMp0shWgiKkjLEiO1l0Uj1MiCT5WEBm/o/iINFAQmS2K/muKGdNgPs98
	 rOr4yWGOyJlkNvpo0L/QavFAOpBzGmWx9CbbF+VhdPMIw+Gw5tbzW7wgDebdcNltUX
	 xJlvnlq/k6q+DopdgK8sV/QAOpSKSBHXH3A/dHhibo08nFWx2fboEPImaY6y2n3QGT
	 PKEUZEFjhCrHcGRLAOEcDIBVSkV/Yw39RTJMPXXUoMMU/BLNxkGycOOB17YPF8G7mD
	 x6pxhu4gvjmzjN/zrSyGbgQIi9zkZCGq8Sa/2lW1vozx01TptS9hvZ5GcdKhRt0vAo
	 b8TDAZF2gbjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE18C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888323375.11932.17655929236249763576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d52f23785a3f28deb0a0b615cff6861292f545fe642392884c0b617ee0399dc
Date: Tue, 08 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788883233
