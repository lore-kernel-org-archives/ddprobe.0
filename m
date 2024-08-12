Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1526528EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723430754; cv=none; b=QbopACGhKULbvzfgZTwoxTCQL6DblyEgc7QoocBa1y6LP0XWJHZ3gh4PqVN8660Gedj5DYAydnLOo/4u551/lG6P79u6uAnUmyHOvUwS5bpeWpFhmtFg29OQkIHFvnjSrOV9fMULzVzYKxlloAjpJncp0rQRb8nJS1L283M90XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723430754; c=relaxed/simple;
	bh=gaBfPjxYs6CBIw1KOWFmIHZqX3a9fewmuL504wRIEIA=;
	h=To:Subject:From:Message-Id:Date; b=bazI7oBg4IVQLbpj97W953UT+tINiJ0doi5d464AvSPaEMAATfcZECYgjsoshWMfDA7c0rMwZwa71EJAjiDuNgqjMr16yY9BQMBYP2KgnqAvxuulmSFPjepEnR8+GK5CGaI9gWzSH6C7s0VX+JbAU1wb5dHLxkOpCRIsJCaYUlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otSKEjEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otSKEjEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB867C32786
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723430753;
	bh=gaBfPjxYs6CBIw1KOWFmIHZqX3a9fewmuL504wRIEIA=;
	h=To:Subject:From:Date:From;
	b=otSKEjEjaUwcJVKetA0DawKJz9yk8uYyYaYscy9EjkrWIdBWFBHnL1jo721v0dKqT
	 SY4sPS0gjaPruO8SbGLJ8Sv8TKdUyz7xr3RSjbZIfc7kOvSaLctTgUmtVdjVNAlYc3
	 1YMg6vazlBFse1i3bl3nwIL9tAzbX3dgqyXyubjTt0f0IhgxSUL0cYNF7IQOvKeSzT
	 gi+54xhrtr6PwXGDOYCcuewTUB58/fPehgvSeAmpOdJrnmd13Z5lefi9PSCmFAX5uN
	 IiSRipSs+J6aAgf3Qdexae60YwB1D+xnvJQrnTR5idVW7sGdC6QItm4367YTDeL2ge
	 z8CG0Ih6VWN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB1C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343075360.29986.12876053117174970393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef102135466387499ca4b972d04d64223ec53c08a52417d28e36575aacc1dd14
Date: Mon, 12 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723430753
