Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC503612CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781615194; cv=none; b=XF7QfL5gWHDXG8ql2U1FoSbgUaaCucsrfu8pGx2YMRFMMzRnkGGrt26/Doxl4FW6As2aAMZ8fFVuJPbhRcuZaQr5cTUVfroyHZAwVkd1v/GjQ9jHfw1I/+2FsvT+afPzcoN7K9xRMWuJosWSDDwvfw/cYE/Su8JAGiRCLpuWYVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781615194; c=relaxed/simple;
	bh=kyNbNEHjCoPBzFKZ9xIHo0lXlELDCbqJu5ETuy8ZJmM=;
	h=To:Subject:From:Message-Id:Date; b=Y5/jY5LC62ImEMHCcyquldmpDP6ZMX4d8Ne73wXQkfRHQ6uOgX1fRKqgDgtQeGjyWbJzefGYnP176lGD+P0aBZmLGXXNor0LJA3A5YQZYnhyNyfHnR56nyUsAXjW7Vu6WDUTJHNCtibrHccmtKy0kDrnqv0T6edg3F+aYOjyQmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VW9kv20e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VW9kv20e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39C11C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781615194;
	bh=kyNbNEHjCoPBzFKZ9xIHo0lXlELDCbqJu5ETuy8ZJmM=;
	h=To:Subject:From:Date:From;
	b=VW9kv20eOSrUiDCGSDfE1HIcxfZ3uefs3Wy/5RxCh7dOOpj8qKOFB4XMqZ2UxrCFb
	 r5l5b3PGLyfrbmbG/TIrVBSkPEMg/zb1w9qkeVJkbFdb0oo0kwfp/jUJhIrXI+7RAr
	 xbmTgicd3bkJiUN5gP/mr8BlzvdFS/CDNDlwYmY97/xNo270V5J8ZOnOipIbIqqbUm
	 kwP3bbR8FtqBjoa1TDS4NjGeND5fV4KancU4vF0sq/by5tDPdmZaW3Qa2lt2+PTJDT
	 +fN47Vp/d5AzpLgLn2rNi+tnxPqdeddo5Yooyw0k0BBK9tPxRJf+/ywJjX6+u3fsAs
	 RiX34TVSl7MBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6059CD98E6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161519391.10473.9632677367448442968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b649cb582c65700e93abc5e26d1b18a49fb26ba044f5cca17f2864a0838410
Date: Tue, 16 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781615193
