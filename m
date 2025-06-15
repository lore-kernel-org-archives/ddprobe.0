Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50106EEB1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749978594; cv=none; b=YxYv7J2yElm/iQCZLjlRJGm81B+1PDX5MPbnIviyu+vqXnlXFZ4U5XmNFS54/cBzE6WYaDrpei3xVTuBUMEZCUXuITnDIskfQOh34ih22PRJbSDeDXzEYPq8hYjyMyxwU9bsKzO+qSwbUU4KX9eAzIf9oa9YtyrBz2F1NBkAEc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749978594; c=relaxed/simple;
	bh=yLacPo9JdAoHQzWAeLijhzS4qRVDiXE6Fil1ncwPE0Q=;
	h=To:Subject:From:Message-Id:Date; b=Fx8mvT9H1R0NjaUb3Rv5i8L347/eR35SRhqUarIGKEbPDovSbah/bip2JSagIWKMneAxQL8n3kbNOv+oMc4ULCPeUzaRp+s4BzHHvOlbl0AYUyfnz4N5BCz9f+aO/s0C+2dGmrt2BZwJM+IIblnrSfWiKyhySpH+/PRMPB9Vb8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOAkzzri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOAkzzri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADF2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749978593;
	bh=yLacPo9JdAoHQzWAeLijhzS4qRVDiXE6Fil1ncwPE0Q=;
	h=To:Subject:From:Date:From;
	b=GOAkzzrik0f4eZ7kTJ8TSFTqnJQJ/LuNzHaybrtSXlvFCfurjAUPopvIzMwO/aDWX
	 TbP4IxO4u2/TBBz5L6J2o/BGyuEIVG9UJY7kA6MmoG+kO9q6lhxPdCfUJX93F23mgD
	 wNOLJNzT7qhEYfrB4CCveJrrAfQxN9FZM8v17YgftIkwb/qLau1enn7Hm2jFmi3/cS
	 QjQO0jmNKnoaj6GS8/K6SYSyejbC4pjEmLkIRydKiLhvntMuMTDXk3OPma6s6UOOHI
	 PZepI9khjTH677xFG2yaWLLIr0NX4lVsmw+uoFgouqYf7kqxkoEycE67rol1nQXOan
	 xIJEBIA3AzkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC02C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997859362.20854.3528275904952109216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b3a4d9dca9a67ab1462801444eba8d723db6325cc138c69d41e486013f551c
Date: Sun, 15 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749978593
