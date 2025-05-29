Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A3922CBEF
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748533194; cv=none; b=kOrQKyrEmYCOw3IerSGtfZ3y7dE8KVI8BPHKG6BYdo7xBr0MWHJABLMTaeXjCRQ9Y5fe+x3HmUUnDhiVc2gzZYtIsKPqWxLpM8h2FZLhgpjEJkQ8znED6ak8dXQr/owaeXiCrO7vPvP1h/eKjc2ZiX1ta7OOeonzt3stP/BPnRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748533194; c=relaxed/simple;
	bh=WOepnGLJ9W2Lqn3V23UI3NmSv0AVMre5CpzbZgquQ4A=;
	h=To:Subject:From:Message-Id:Date; b=uS/ctraqGBcJSBCKT20Y5MCYy3XM+2BKNzRtMIsiJ+VzKzU9EIrvyZ3xnLdw9Gm4UEorfp18rHV76jBfOA6edKP0K6Krlo05C5LMEVaV8md2IH2mRXYGbuzaJ/TE1FplmODGUvXLLdawEG/JuZrQomlnUgStzyuK/ywH7h8CD2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/HRuwac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/HRuwac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0327C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748533193;
	bh=WOepnGLJ9W2Lqn3V23UI3NmSv0AVMre5CpzbZgquQ4A=;
	h=To:Subject:From:Date:From;
	b=h/HRuwacj7xgUw7P5E9I+nDddAqL+3WhoH7Y3KjikPEXGv5b6Fjkp/OrCk88qS1a/
	 J0PIT7r9Z2Q0UUFHhx1Wsp8H0jG6Auo63ShrdEfSG3LEjAmZHhnHZouIwqy8XtX7//
	 4Qd24YWfqgjXAcSg2jqHu9AoRDgTJF5PrJmmVO7pB20DjsSVErLqfEh0TmMJyv306m
	 frw0PAqU2SRCaPaD5mophLwOk0+D0GNu4Ll3Rs5dQ4MjWNuOl80yNUpBhcRE058X3I
	 2QqOZ89sjayjz6FynKpgTEQDfcrXvN7O5TgaCXuq7iYUaVY08fo4h+20k41jM33wDO
	 FMMiY08l5RBDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F048C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853319357.5952.14630435001654121213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fb05f6c805a6ed47f82babfd9f3af2b281bbb79a9e458beae0d481e240d395
Date: Thu, 29 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748533193
