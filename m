Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB1B8F49
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168394; cv=none; b=DrPN3SUlNYzlr7tYfFoOQNnlhKsLbGaSCQDOe7fDwQxrBi+3opvnazNDwHmoticeChrGTJ7iVrogKrXvhLrtX8Ffr+T183zfF+//NtFO5RE8vKb5co3Mj6N9liJTFDUzA3/bwVT8ttHRRLhS+2QE/SH0B1Q23A4AnNoqEL+om2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168394; c=relaxed/simple;
	bh=lsB5QjBo0g4tHJQUW53HAwd7K7JrjUsVKqSrctq59xo=;
	h=To:Subject:From:Message-Id:Date; b=fdYR3HAndtiS0C6ARsvH6Ije+pBhdsFwPoBnIXNbhOYOMZa0BblxiIUIWjicIF6kJJ6UJPepp2sYFC2XO7WXny+2pATCDj4ZQShPbg4+e60zTXeBVLIWlN3LsNE18n53kKqkeKji0wecIyOYBmfSPWj5TFOp+ox9TVpG2P5NyW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyC570do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyC570do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F85C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763168393;
	bh=lsB5QjBo0g4tHJQUW53HAwd7K7JrjUsVKqSrctq59xo=;
	h=To:Subject:From:Date:From;
	b=FyC570dogcovAeeZVodOpmmlfKPTFka5VwB4faLUT3qNES6Pr01bxiiylcLvlKc1+
	 KbZwt/tqGBX3TyOrjDU5TK01i8P1fuQqEYY2/tbuWBzH68YUFywFkV6iIaDn8AKQVq
	 8Vcuqy36gGYSpnGbk6h7MzLOSd3d1NAkqZy9zMp/OiAvqmwwSNrVlAJ7D2CJaQF445
	 SvMvBcPjJQEkzENif7qCoIE2uycDIUIwimPhG4L9RbQi5FYd2wPc2zv37/R06RxNAK
	 DF7n0xuXWivGHX/u4ll/SiRDBH4YMf1hRKAvpPiIkY7PFCttqx/ihsly5NLWh9Cgmc
	 gnla9KybpIBqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94429CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316839357.19630.10625844871802961008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae361875cbaa4705e85f97fa1197956de908f3516e7cca6c9d22fc395c360b51
Date: Sat, 15 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763168393
