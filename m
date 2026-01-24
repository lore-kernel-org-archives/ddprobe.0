Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1931391
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769294634; cv=none; b=N/f9T6TGz5lK004WtiMDuWSMxfdLcL/dSKikvbaP6XSNWHjXac45hNtvu+sgFX7nhxT/0sfp+cGgtBXHk86MH9qIBucH/kvGaxgnc1IEJ94GlE502m5Xkqcrtekxa2ZkCSqfUcNUfourt3Gmf4XhCTOgXtXW1ctS+LfZoDgQzos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769294634; c=relaxed/simple;
	bh=0ORQIGBHDj9TfKRR5IqhBeI36NWQ580EIFBxEbamn0Y=;
	h=To:Subject:From:Message-Id:Date; b=PUHfDm+ZNS9QFqjlaXKzGfnLGJbZ5XmTaNiZ0/Q35ThtvaZIf4rqnngGjT+WnGTzWOyP/+qehZaBpRFzVCv33YvLQ6UZGh+joap8qP8OeSuPptAepeJTdJyDVq5MRAU8xtCqQl5lwYIcS/G/CgYLWvnlEuQgmPZ0aP5++qL2ti4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOK6hAg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOK6hAg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CEEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769294633;
	bh=0ORQIGBHDj9TfKRR5IqhBeI36NWQ580EIFBxEbamn0Y=;
	h=To:Subject:From:Date:From;
	b=cOK6hAg7cek65rSWyMJPAxS9Cut31e9k6mQIJHRq6QxMCNhFgZgxjOFow0exIg+QS
	 t65ay7GvARJQv9lvgRJHUxX0XyMkpApWx7DFD0Tjj+jE+SEx7n/ZBbCDDuXO4vJNnw
	 +BfyWxiTu3hx+o/yiwUlaj4ssii7StOq/QSluEqvc5iVmtyhFt4y8JO7gQU5+GPpdG
	 1TgV8ETSbJFrpP2fg/uaBsA6+kP3qvL4qVfxTinmQ9WujPnpfG5m4LP7HmXLfgVGiC
	 lVswttowLpUgBArTKpi0x3A4G/GKy0ih0tiLpen9jCKXj7UU5orIXBXFySrftW5f2I
	 /CtUcNfWxRcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B5D715FD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929463358.28962.11264616364432002074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8867ccd54000ecbb06d7e600e3deea9774429002e84dc72beb4438e200ed115f
Date: Sat, 24 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769294633
