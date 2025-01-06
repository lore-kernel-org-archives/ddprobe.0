Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5713775E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736188554; cv=none; b=QAfuHfCMpXkrMhA5GES115ke8yFJQCGU8OgAA2yvuIWvYYP0Y89Lkyc3Eh2q+GkP7wUnVJPbty77GMeyDX/JSP8HWorKT9IY+/T3eNtiwWX1Ta8cAYYr4O+TDvDBthSnsHwxQ7HvrvWT5Y/1g9eZAuJyv73R+PyAdbkhuWPe6d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736188554; c=relaxed/simple;
	bh=AF9IJnHnEULdZG7P+4oWfqYzEEF7iJrv5I11CwydRyM=;
	h=To:Subject:From:Message-Id:Date; b=lArzsXGm0cf/xet0fiy6OWlkaImcfjmdIcEad72OHnh+5IBhmmejTUpGTdjhEnHZjWmHS9l+WHrghzEG6pqpxRv1ER9pGj2ze+5jw6tWkS0ClT4T01cItIqwdsRxbBcvpvwOCRfsM7E5+Vi91LL0nFcOZv5iM00NM6vJghVzBlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3BzjsUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3BzjsUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1DDC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736188553;
	bh=AF9IJnHnEULdZG7P+4oWfqYzEEF7iJrv5I11CwydRyM=;
	h=To:Subject:From:Date:From;
	b=s3BzjsUrE4vuKAzKmyCX6k91O7s1aGx5/xsz845lNK19pPQrs+NiryHXCt5hCbnzX
	 2c2yD5nN4DXFWJbQGS5j1EmGJOW97ZlEcS5+4IKY1qWjcdrLUgnCtxgdsqPlIhGpJA
	 euLIABd/n0HYM7Sd+HKcnhwz+F2s8h2sCGnm8ba8LlFMd1v3QExCt3+c7eD1kWzElV
	 QFzXkKGrPMi2Jwb8UceBLAFQvWix8ukqvD4KCNUluiFKDC2MPhpBhB5XAhFQvuqOxW
	 eK/SlSvvRqYJHehQ19mKOvyd213gyOTbV2nIPWtwylfKIfKEBYCdurVPJU/FzAG6iP
	 SDcJZUGdl9hTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B60E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618855361.23953.16919310808884069803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7592928697c3d77886e3c1ae2053b53caef94b6a8d4a1ec3660763e6c6e4e7
Date: Mon, 06 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736188553
