Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D314C954A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784719114; cv=none; b=o6nDz4XvcdNKR2H20wUuLcSMFB2RhOitewtcaZrtpPIBg8cdbMQlq7mnlATOfdOvXTtdmpz2cap67bc6PO3gugIp6dFgvZnhsyUOvH3eVCT0pQtPlQ/NpmMdNb5AYw4xlz6AcqqqVwMijsgyReFtYlNh2CVSZFj1pW+RREZ69eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784719114; c=relaxed/simple;
	bh=KnPG2IiagMbR8LZXXb211k0vomFriK3vBYiBymiPT14=;
	h=To:Subject:From:Message-Id:Date; b=TT4Tfy8c3Ce+nfdyyY1oLW8oQ1lPmrQ7GV27xSVmW9g9HUhXveTVZavRjUxZMNmplHtezh4ridS3gU5vECdeE0X8duxb5NqtnbO7NXBVnf/oASROQnmIZJ+saoONamd8Z0Jn1+hCpXjog6jh6Tc5UgM8VZK3p0Uar917YRGCNx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7bn19VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7bn19VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C3DC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784719113;
	bh=KnPG2IiagMbR8LZXXb211k0vomFriK3vBYiBymiPT14=;
	h=To:Subject:From:Date:From;
	b=G7bn19VRpjRm0fjiXzM1dupKmCze2k1aIpY5QAR9ueRNkByXu6XUWZi1GTQSUdU7/
	 +5xtmasWD3Lvu1k19Yvm/GsnUSR259U1eHkklp1TIfsGr3yXDAFPbsUyvAbBsEkwBO
	 cr63iC02RXzNxEGD40lowwY4Z7Q9uhfhBD9dpFXLRpO0BpbCWbNgWkIlTQBVhmW558
	 1YqL+pUAOWilaxP66kxsyyBeSl/JBOrUnTvUDOdaW8J6n45dOs/L1k0O6u4jFqJVab
	 MQuoskgKHPaxg0oWlDOwpg3fA/XCvixn2jB+TsfgW+C6HiFVa1dSGupH+wYEMxbkLr
	 n28E4FVivMrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B628AC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471911373.18215.15140727620323901815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e1c9917a73de03b5b373d3ae3602fd275e70cb2826b6a47dbb74983a9c6a82
Date: Wed, 22 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784719113
