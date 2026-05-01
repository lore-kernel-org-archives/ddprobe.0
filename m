Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8A93D16EC
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777664853; cv=none; b=POCj4/0oYmbaeNeDYDxnJxLu6WrZ2FibGxhVgd7EcdCP0NN9L4cs4RKe6IwfE6bAuFB13VlptfS40obH6cptETrTJRqduYRjLwtHaKYM0rDcRs1ujgNFBhkW/MOlVDw1EhDsPhlQwBvcuz0d07WPsxlS22imTDgLj03KgIRVt14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777664853; c=relaxed/simple;
	bh=AMJwpMh2RhYfLmum6IRy8HnAxdQUtTDTiauLnnagH+I=;
	h=To:Subject:From:Message-Id:Date; b=tGCCz8JMPt8Y1Xdf3YOPY1xFTDshx1fFABEykdVHS6y3RcJqB5yyGsSsk0fIj0tgZDJ7W5UO8p0hSbpvgMdHlrozDs5IfRI8+TkMjjQMzaqbkHL8fFWcxu3HqSiIT0bt/6bNno7mVdJ4CbSwA6xm1bC2gU487OnB/kzrDfqQHkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLa5tAMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLa5tAMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCADFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777664853;
	bh=AMJwpMh2RhYfLmum6IRy8HnAxdQUtTDTiauLnnagH+I=;
	h=To:Subject:From:Date:From;
	b=DLa5tAMNA+pQrX8Ofk9PKsDUP0akqTvIq1mUM0RMKM7NUbwicR2MhwuvYAI8eDxZX
	 8hReaNBBoYzssBi7jmbKAgtLtI+wq2bofjMUFuXODzK+sMW3eIPn1qmpp+/a90q2T6
	 4WYdtt/gIdqgseLYE2zMApB5n0l2J45uGRLfH9SWJQWF9qgRjjJvt7Ojy/UxXancsj
	 ZOouTiyiv/OcBjV8P+H+LUDKQp0SWILRv3kiMpl/GZiazkqG6GUQAcmOUInIWd3X4Z
	 tFf+R4h+X3yJW2H2tcU/LcQED9nw29AwZ4lAT4B4rPKjwe0RH3Qm6c91beYsGl0uWv
	 7hT5LwrUP/tZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84CCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766485368.28397.10890286574667787876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8ea2ad05ece90da7c6a8cc2cb9e8c026a8eea19e30f2ee757010797edcc922
Date: Fri, 01 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777664853
