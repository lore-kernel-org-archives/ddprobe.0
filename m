Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721A045DF4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784813434; cv=none; b=MI1ktp0MHWrYoRT8LI+P1TwAmqcPYdO/pR5qN4bZdVq52mMER39djJcdktxhwaoo+ltPvnb6AJL5orZ78LSLe0o/FYIb2qHMdrGbP+zE8rILSjL6mXiWJNbHLEvGlRimEcIuzJ/ka0mE+nWeaUhtbf5hhilR2to/eA+mjNlsAdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784813434; c=relaxed/simple;
	bh=mrm3uhXwpHCLFgaFU3TL6TmFYtnfCVjXg6BOt0wYctg=;
	h=To:Subject:From:Message-Id:Date; b=Dl8bCy6EEBrXfw6Dn7P6GHvGnzr/m4dkAwCmte1COJ6N+jo07qdO/WzZ2E06B8s+alQMh/bbzSkWez2Ul4Ucjdhd1hLhfN9+W7vmY0hsns+u+Ov4fJbjK6p0PMLiENrucWfnW4UIgBa0LAMp/RVANwIYi9jhO67TaOUhBrEDdlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuwsba+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuwsba+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9902C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784813433;
	bh=mrm3uhXwpHCLFgaFU3TL6TmFYtnfCVjXg6BOt0wYctg=;
	h=To:Subject:From:Date:From;
	b=iuwsba+DZ8wJW2fSskAzmKyGZs+xUuPxMqFoq7YVEB0kpVe0D5bO04bhyk2HmL/Rn
	 1aBemFpd0LK2xes2FuLwmgYWlY9h4TSAFWezbxd7m+Yu8rAz6YlTYO/9xvlI6A4tOs
	 gKPsAyRYnKxlx3QScECD/hWueatp9joikCOKKwIQ6O599kCTJUvjJdhcZoZPyBc9o2
	 sOvth8x5jApjKM08ollxFsgeJm5VXRBBynaMog0BCkbeXSOSwsj4FBv7GghQMZepNP
	 dTFHFWp4GKX0fpIj9GRnMvmY+YoMiNTX80RdIhmjb6dTQQyQDoA2sGq5MRqu0K2BCa
	 Hr3mB+9giV6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15D3C531CF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481343371.10828.12763154343930436168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f972e83e9e334ce049b4c5d03b8a0d36b4724118509396b06508f03cff88c4
Date: Thu, 23 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784813433
