Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292562AF1D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769387034; cv=none; b=Q+iUzZlSW67sTXcTodY8yCIHQuHU9KWMo86pJB2sKPBZFr1YXGTDrubTFsEYZzwnI56vj8Twf1TDSFCLT9wI85W4CU+x/Dc6g2NrGeZPoM2nYQk6i4J8imsX9cnfAQydMPqQGVR2KoMwJUXO1xadEYo/sL/HnfNOx1Ry6IKsFLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769387034; c=relaxed/simple;
	bh=YU3dmXzG+o5w5l5HN3E3UQehTchyPfstdYMalJGWh88=;
	h=To:Subject:From:Message-Id:Date; b=UfP9K07P3c98l0YVTYQYvRP+daAUAKAPv7mtuFkuo3wWpmqTo5ogYp65WbmbN/oMCqXEouK9VOeOeDkEmKEaf14Q7aZAWgmF4iENHbtZYJI+a9e4z6KuMmSm3Ssu+fLjwpKQW4vR5WTgo66JAi982UMJIt2f+i3Ttamzh0Pl+EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElJPdCGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElJPdCGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A40C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769387033;
	bh=YU3dmXzG+o5w5l5HN3E3UQehTchyPfstdYMalJGWh88=;
	h=To:Subject:From:Date:From;
	b=ElJPdCGIEYbdfTZOKiwO8pn7gjsy33DlxE2FdopJNLDIuJvow9LAoOIf13tcCWz5m
	 VJi2wvsDqvhLn/9fOBSZz0xtEG6XXWbnDysRGJ8srshMnm5x2Gg9P8AZb7PjaJRDMh
	 O7NsNbU8Q/qCadyoJuJzzl/w+eOTgj9tN4ai8RRixDvGHjlvTpKfqYZn1VY5Yve6Ap
	 aW948h9daWmz+4HJVQo00ckZ5uE5v1OrOua9kmHnbh1As7fGS/CVhewH/wIWcppXWn
	 7PZsp3p8HeeXhqsBiRGkzjMoK6PP6JBUKsV98r/HqyhwWtQVjvyi+kjap7CyKI1SSY
	 1ZvuZaUDrHHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F79FE63CB4
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938703359.18516.832230235463744178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25df659404072e7cde851c088b8c856cf10c6c16eab7b8f24e7beff719bc5cfd
Date: Mon, 26 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769387033
