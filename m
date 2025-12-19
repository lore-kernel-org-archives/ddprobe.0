Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A182E7F00
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766133234; cv=none; b=monaoF+1aFoXPLkmG3ymGoCdq3sHneFLt2vF0OopBo0XAL06cqleRNNx0yDyGHhThR2PHggErxmTGp8BhzkMyiyPBBBewYJE0u/q7QITzsvqNqNCva787N37xMbK/1eIr/YoqgCGd11lOHVA1QGJoplK4QXxDTWm3ZUhetkN7ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766133234; c=relaxed/simple;
	bh=Nf/PD5joP/1LVooe5+jYhQoOia36XcVALLRGxQAk72E=;
	h=To:Subject:From:Message-Id:Date; b=tKHHi+oQQ8iQKaxeoSHhGY8GcDEzodlhIQQ1mGQk82AJtyjR6zIc1QOfU4OBaGZSGA5lmJ1EKPlaRNHo897bBPY/Zd8O8451A5ZDtTAIklgCKm23oIBphYlTuUYzUrHo2U5n2YMYudkGofmdzsaZs2zCZpBAoc+9KfEL+OE/G2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaDESpNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaDESpNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766133233;
	bh=Nf/PD5joP/1LVooe5+jYhQoOia36XcVALLRGxQAk72E=;
	h=To:Subject:From:Date:From;
	b=YaDESpNfSowCBu3ZbIKoEFep6hbtG/r24lR4VsJr/p7aIQQCbEn+pOf4N4Kxb6sLf
	 PLMb7NUzxA5c2ksl0gvfhFUC5tEPTi0SQwrC3Dg0S8mZ6aHwC1OmE3VFHbrHeH36lD
	 yT5gf3ZINBK2gjHOMnwMkdmwP3VUGtet++xUnPq1/Rfh5EEgAq93MWzYbj0AYMhn6l
	 yRyVPvqnne79jo8Bb5EARUnuYLqI07pJ/yPu2OrH6F35t45efP71kjgD+gPhTYF0s8
	 SLwe03FGrMvRhrHmSvYbo8q13am3bXbQaRoiboWwGa297iL9uuPVnlChjkzB1sq2jt
	 0C4h+nIHFy0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176DD74964
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613323358.20918.16189762049282174148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d17d82865b61eb1cd1e7100a249d2c44e35815c330a7cd074daff1f3513f0ba
Date: Fri, 19 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766133233
