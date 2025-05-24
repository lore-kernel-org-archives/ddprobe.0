Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6A1A08DB
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748083195; cv=none; b=mEP8T9mfWh0iPN5MTBtq2wFHc5EbFHfo3k2TD3SvhHJcoBFDuVuqDgG6DIR2R4BvarAPrwzF47oJDslolk4plgyWXw0N8b8HnmapGvMn+w0RVhoCMj41DB/ne0/0U29Li56inf4r4TvB3m8ZIfsJ8g8fi33FaVmAbHneYsN+aJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748083195; c=relaxed/simple;
	bh=IzRr/T3877c/3ReAwmDxhz7RL7RmjATDswjFA91cc4Q=;
	h=To:Subject:From:Message-Id:Date; b=HK0j2DX0zXi6q/XvU/5KHaIKCg/aWUpYBqb08Py2ySLmSht+0yhu8XC8CbrllvTIE4pR9MFMwOzfRv+uUlkw1SNj4yfZarbTRrqS0yqZuv4LdXT0wSKiapTid3Dffo3TC4dI7q6USQ38PbR4RB4r25D4FdBa96H8CjG72A5w39I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5MwAR7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5MwAR7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF0C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748083193;
	bh=IzRr/T3877c/3ReAwmDxhz7RL7RmjATDswjFA91cc4Q=;
	h=To:Subject:From:Date:From;
	b=F5MwAR7mk5syez4LeK1ZWZUXNq4dM3aqHs7A0eqzS1bJPGfue9AXd682yqH+j6+W6
	 qtFiw51naZ1E/TL22HD2qzvUvb78rck0/m8TcFu0/MgAgBRlCJM5GHbMUMhgHL3jWz
	 JgvDncK7vwlPQ3XS4Uw2NgugkdAC3lvHQZ0p593usySpMEhCI2ip5O6XCIIKbuzIgy
	 51PzHWEIH2giZaF6HKFWgwmYdY1n1m+yOlEwc/ocjzPOJE6BV9G2Mjoi9PbTBIup1p
	 P6db4GHDq/H6J4ftjMuVTpBlHjWQpq/InceSdl0aDuMTGzadf6ibMa83x2mZDeXTbV
	 f0NdlON64yKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C6C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808319357.18334.15859304719821341531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc68b580eb1493ca6adc45556854a4f6e22233b61c33dc0bac1a25e4d2708a6a
Date: Sat, 24 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748083193
