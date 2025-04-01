Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520691E7C03
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743550194; cv=none; b=N3ghqzLXwGtyYIQLfGfetkfnFIsjPsHYUJe9G0c42pg8feWMiUSsjm633iW15qXzOOmBecXeFC52GqXba6u/r1xeOsn2yVnxRcZFpWq1MuLimcKY6KSC1IjsgwiTZ8lI57df9DpvyRYWSbpbHigWVnSvOasGHfFqT5wulJnHRD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743550194; c=relaxed/simple;
	bh=A2YiVtBp68y4RbW9nA/gMGJwDk9MkMqC7qJngoFYooo=;
	h=To:Subject:From:Message-Id:Date; b=Hib7zTfndkbBn6OyzcXU7yrTd1V8CntlOdF66dbOXR4S7UGiKzZ3MS103kQxHyZpLMpODEqCtwFU9hx+jx4da9ZDSlapIykoJswPa/1U7F4HsxLhQpVzUZsr8r3UL2TYRUPxb5qZuGhhJbTuazWOooyg6joLPqp1BVTaZMbGEbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+JDzKuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+JDzKuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87F4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743550193;
	bh=A2YiVtBp68y4RbW9nA/gMGJwDk9MkMqC7qJngoFYooo=;
	h=To:Subject:From:Date:From;
	b=D+JDzKuXoJL0eTbb2scru1cKLJXPjIQUsV0P7PmOX1+xUOjXtbZuOqByvOybIcqRZ
	 8Nc92YBT9/LrZzkaUYzj89HX5OzJaa/Pj254v48e5GqbT27mSwwj80pHd9/UOyLQwL
	 +fZD1nEL7qXeW5KE44ggx+GnRy8ZtIGSW05Ga+4HMy7e5WwU3c49qjZYqrHtdRFTLT
	 ZIw53KlgZnjloQFmaPJHsGFM2rcxe8uBC8svEDyJvHzSwBCwMv3ppOoyQdAm5o2krG
	 5jVoBXcK/czvsVwLGgLU9+hFlMWTVBVSHnsuunmJWId8S3NUmvJ90iYvOp+Uap0czU
	 hzndwzX2mktog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B0C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355019358.6977.876848288088704145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3baec5b2da90be5d25ba41be061803fe21d9af8d43c70f8bba0069f87523b68
Date: Tue, 01 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743550193
