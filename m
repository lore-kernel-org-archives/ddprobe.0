Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB4B47142E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791141634; cv=none; b=RqI20xeWb7y1JMHTBVwePwduQUeDLgG6eARxdrsqqN/qrRTk8M2jQne7UH0uRKXsWpLmyg4p49TWYxpfBoiYVO9nRd6MGX5780XbALTCsLElk+KMQyqgOtIv/5oYZ3dgm6HV1XFj0+NX2qg5VhypfcL/EYwkGv3c5YcISKmOvq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791141634; c=relaxed/simple;
	bh=K3ls7dS59c1pr+6jhRb21SezErvOCol/b+8jWhndDLk=;
	h=To:Subject:From:Message-Id:Date; b=m9P8A+5/dnKTUXx3nxl8q4jtZtnFPJbKAB5kso/Ggvx4b2/1VkoTpMwXZ/p4+EXTaAsTETyxNV0m2Z7QZRRHZZ90cujxsaAZ9aIGTuGe0W9tEW00j7OpaRgb43b2sJmesqcEIpazMvhri4ZHV1CXcCTQexs2ltyatEBcTwMfb2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/Wop3pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Wop3pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1749C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791141633;
	bh=K3ls7dS59c1pr+6jhRb21SezErvOCol/b+8jWhndDLk=;
	h=To:Subject:From:Date:From;
	b=N/Wop3paoFtA5n84jK6RnXw98utnyUArHgCzx2HDF/cpgnrsKn0ua/fxrBGybLeGG
	 ybPd15Ip5RkySCyrvFn7GpkgqRmVxufQwSYN3FWNvQfWZKj64hUlZW4LzikKzWEcQe
	 KQaNYqowPUyZ96RJPeo7eiIBtObCqnC04D+2NUnibv+qj3mMa/1AWVzDsbIHuNiOfw
	 fp4iluD5/7DXasB35IcgUckgP30VuEEWWUySaSJmgm733v4vLhGiVL3YOj7CBCBA+H
	 Ft0/kbjQIKfUT2mqJEZ7PFS0rKC4jEc3HdVB5Q7i7Jhu8rO+fXHlu0JQX3hgpe8qys
	 SNbHs/ixwKJPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDBFCA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114163368.17700.11024290162889960192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d78ccfc24482066c444ab029149ae392ab8bb6d19ee4867d9c90b5573f962b9
Date: Sun, 04 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791141633
