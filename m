Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7342FE074
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785216034; cv=none; b=V6RvIJtHnOsw5VenRBk01BhWg3TJkq71oQ7NiNzqUYgsDk2FreQaHcruH7t+TD+LLfSlEAuDSwuDxOhWHy952srOfJqxXZl6E1WtrEeO4jzQPC57xIQUPSviJ3Y5F9al5ckBNEunXAsx995Y5hDJ4J89H+sSBN4nQJQxvngmdUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785216034; c=relaxed/simple;
	bh=t6iCgxIRNZf/s+aSl7kOaon0/Hz7l2voeZhATf/hU5o=;
	h=To:Subject:From:Message-Id:Date; b=k6wJHyxyGin9EAHqzmGQIG4FYdodBr4Uwrjj74KkcBJ8fAYfmImb3eRcbIrQgSusKxSqitYZf7qIfnw9Xt7R4Uug2EDUprRzaT1tKXOI0TNyvZe6660QC7Wd2Xkcv6a/8H38CAgApXyCd0ucf4z6xY78+lfJxslWZ5ysbSZAt8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooI6fG5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooI6fG5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A65C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785216033;
	bh=t6iCgxIRNZf/s+aSl7kOaon0/Hz7l2voeZhATf/hU5o=;
	h=To:Subject:From:Date:From;
	b=ooI6fG5oBbZqgk+ycmPVdDCwPNySL25IMRzlGy73RgKe3TJbxDO+cBUwurAH2YWLR
	 5KX2JEjc/YLIV6KUwQl7whUAnvwn8MEduQnl16p1hLzwj1tkhgHUsM33/YOD05gbjn
	 zvla9Zqj0boTB7xhlK7k2ihCGtCR8fprgRlDTE30No6fyw/6lt0fLAoVdZ0ZRJW6Rh
	 foTZKGjZo5/Ab6D3fsF9/Kpbo99nARR410D6S4hKnTXXMPTLe56XLBez2ancgebKNP
	 lfLkXLwJqQpVEwn2SmattMGqL0I+8UJ5IuoFHe4Ywa1wSYGVCBntitEZl/2OpWpQL0
	 sBw84xZEYUILw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09CAC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521603370.13961.9027900553410805382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fd258299790105ad39748f68704b3894a5c0cc8c7b798460ae55f46777f8dd
Date: Tue, 28 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785216033
