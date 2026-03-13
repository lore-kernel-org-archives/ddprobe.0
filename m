Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DBE38BF94
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773393294; cv=none; b=WXKIgYBtUWByIB+xeSWwjD0QkUGal9vyRRgkPoo6dDLctxlJdGWJpF4xBylGD8CQRrPc/Jb8aMYbMtw0M3RxJf0/mgvUigwLimlsC21f8zhMIcIa8op1cjBXgUfvdVZSJqJDDsgOJFLktrsgJLJxDG/FSNHzpjwVsIR7uBt/LCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773393294; c=relaxed/simple;
	bh=8/uZQ+SCy6iYBtEgL7fR5ozCHzyxvitDk3vDKncZ+yM=;
	h=To:Subject:From:Message-Id:Date; b=Da+Ccz2Xn4SfIoM8f/CvQqRCbFtZYAnbsMnPqwZ5mqXUC+O8t3o+KWl+pJVjHQKj8UtibbdfArlz64F8Nj3k6AfFfEFMwZqyAiDOKgxvBaqJb4KMNnzR0lBMDgrI7toYSF9iS13p3+XM2HxO9xvCeK2N9F27w/iAl1eDdv0Ng84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqopzJ/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqopzJ/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E2AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773393293;
	bh=8/uZQ+SCy6iYBtEgL7fR5ozCHzyxvitDk3vDKncZ+yM=;
	h=To:Subject:From:Date:From;
	b=GqopzJ/CxiWp7+I2NucGWdGUBnTo+lsiZUrnusGgzR3V+ZeTOJNZxPi2izPylq/wh
	 WnFmFfqjoKFFm7o+J+J5ocMFXrgCR4aynpjB/9R38C/HyLcFcu5M+cy3sPTuThPiN4
	 WK81SWD1y0f+BcE3L+sf+zmMJou28DX6XcAbDluMggkVAiAkYJaF8s97zst/fli5mT
	 cx1QsUudOqaxC/SeNI2dmuZm5YHYzZgRfDhymOQq4EKLHNcfV70V6KEPNgLF4hUdZ5
	 W5mAuHpKP3t7+6TwWJKda9eHFCeHRI1oIh3C/Ku+sAApSb1ZHAXz8VfeHwGM0va7Dw
	 c6Q+W9PEjhwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D69105F781
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339329357.28048.11096392038534156840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9c0baf8fe1657f1839111bbe36b5e5f1048fbded0e37ea29f8c41630838b0f
Date: Fri, 13 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773393293
