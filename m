Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B6A33E1
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754243994; cv=none; b=NTf4zV7gyC0Nah7JeQKJJPcZYXAMIPpCe+y81cWdyXEbWdAvmGh2OugDfT8cTofZMFJuiF455zrVBmSEG4iijqLOGV5DISpler+JKP16ApaDZkpICszZrOCxu7DNe21QVzkW+/WVPN+sc3/KXs/EuhxGK46j03QisfO16zTyT94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754243994; c=relaxed/simple;
	bh=A1bOksxbeHFudQx/9UqBL9x3Nlz8vwnEQFqTzOBJc5Y=;
	h=To:Subject:From:Message-Id:Date; b=copQPVcOxwYG7I/NjoAObY6obNVQTFPp3+VtzcLfDjVDIiKg1K48DU3kJJtv6IaUx0SJor/x/jhQsd14tkLhjqUc0HKlSe1iruQgk7x1ZGWjccjQR/DG8FPJ6LovVazu5m4PyZ2Bj04od16mECJ0uWFiPhDVW2Cyu8ZiGxRujuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPn370Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPn370Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7069C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754243993;
	bh=A1bOksxbeHFudQx/9UqBL9x3Nlz8vwnEQFqTzOBJc5Y=;
	h=To:Subject:From:Date:From;
	b=qPn370VyPtX6BxLOkFbUAZiMOIpai0XAn+ohLxeoHvkSdEaTmFYNALd2LbXO6vBKB
	 rdtvkQCfYfi7lCYG27FxAC4/65KiwWzrmIbYFIc6hHyxmTOxnIN63hmtfkWd+oFami
	 lW9TwqEzpT2/KmgQLRs99rEwWyLooUMdTXI5+MF66Evq5vrAgwkzJfbnkGD0BmwFOU
	 aGAmB8dag0scKUpzT8Bly0/g32RbXMfQN8+SiJmZ5uxT/PJvKkRt2FTuI3Wa1Nh99W
	 /C6UGFB63atkkBdP7+iAuYGAgqnmlIjaqRwWyNs+TmkpwZ2RZmzUxj+kYZSeRrMhMy
	 CTBhFHTA1LGEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7DC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424399357.11514.15593080613384953460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96432099ad5fa9bdf43de8ec81e67a740fcd878e973ed058991a67b45e050657
Date: Sun, 03 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754243993
