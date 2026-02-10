Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54F72749C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770740633; cv=none; b=an9kyvz3a11QCz1BZNFJtXSS9KQqBM9jgcrLE7v5XYVfoEGQzUgg9Gi1dUZEGxzXxFe+uKlq/75im0mreaLUEtQNrSiAWQCdhlVEcChZJRCn19plGX9ZR9YjTwoA4bDcOSc8XwIqTVRAw8KGk/nd9y4hOWHKHGnMrYKDayODq00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770740633; c=relaxed/simple;
	bh=TXiuezpLZ6J3WJNiL4ix0PnUn28azW9Ju///bHVGimU=;
	h=To:Subject:From:Message-Id:Date; b=p2/c+SMx91/UkxcKCh9ogUKp3bVlp/L54355rT9cfcEtLLLDHGjlqJIoRHUzv4ADHS1TWIOHzwYDNo9WOvOIzdLTRDiVkKUCCHDGw2YGrPqxolpLyFJ72pUvvb5YSro/CgCkV9vC7Iy749uDoRC9jvsEvPpM7OnvHjmETSbt/zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBs950aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBs950aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D7DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770740633;
	bh=TXiuezpLZ6J3WJNiL4ix0PnUn28azW9Ju///bHVGimU=;
	h=To:Subject:From:Date:From;
	b=VBs950aaIEhbK7SjBOTv0v0Fh84GG0Ch237T9Wzw/zMmFJXbVZkMJrIBZ7M1LwzlL
	 shWINKB8ISfRfEYqrsMOfAVWKpWft7XEzj9gvulg/T6UrkIdg55nlUELrAmqTrzRgH
	 xABu2ZGx0yUPIwxDSf3DdVa9Fu8uCTsH8HEs6S18xdQzmI24DKj7897+hJkxUViPMQ
	 Jx5OIofApo3fH7ymqqO+wTZBu8PeRDoC9GOz6oNc7O720qMzMgK00C363cYvXkq+Bh
	 BR/irsVjDcANsABMALCO3p9T+IzWXKr2nGL4QHA29kkXYIAMhs4s4W3+wuIncZR9lM
	 1d0JggUV+EScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEBEF0704
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074063358.9394.11581295265527862642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09485cac64a1c2aa2eaefb55b68b9accb07d0d52136e79d9416d0b5bc192546
Date: Tue, 10 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770740633
