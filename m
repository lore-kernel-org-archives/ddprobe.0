Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2150E1BC2A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772340294; cv=none; b=lt0G6qXDBl4TEt1fhaiOr7CTigVuiGHUTqYZirFXlCcdnaojyOUb2gDec/W5RiG67UujwMbc1j4p7NS8q5m8mg0hqDT0ObPUuCP7zVEXYD6PIgqqlpbiyJz21SaOHEpef1N/UHMCWJq9VIgcXuLQhMS03dM0ZjtUWL3AOihJ8ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772340294; c=relaxed/simple;
	bh=Nactsc3sYVdhFII1uRCI1VYm9sj8TwxR2Ra4dhXgbps=;
	h=To:Subject:From:Message-Id:Date; b=bYbOJstnzwrKgRGJ/SaIpaiBJL+XjFMuwJb9fuz9RsJ+tBmS+zvEY80EsR/hxbbegQSy1fT2nvqGTk7yUF3U/h1eAQMyISg1dlrN8l4FztEhDKcpN7CdqYhResHqOiCgrlT10xay++8S4v/9nadF62X3ZHm5BgJXMjwSpZbRwlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paMdkooo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paMdkooo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B7BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772340293;
	bh=Nactsc3sYVdhFII1uRCI1VYm9sj8TwxR2Ra4dhXgbps=;
	h=To:Subject:From:Date:From;
	b=paMdkooo4f8eKYHKt0mSdXSgKS4OjaEAaWF/qyZVwn0oO+SzQ/jAl0PEFnnuM1gE+
	 cJBfSn7vaqtwVAa/aiA1yKs9PkZG+xplPMGnmgi9hc8HoEu7ccd312KHMOJvPkoLe1
	 sRNEFBPvj+L7+NIEqdYJtRXc+4RDL5JyhsqESWPUPutPBjJ/HBsRlHV9fcnNKlx6ii
	 QVkRJhFyVAf/MYkfmjgub3VskIBZn9EuXlVs9L+1dgEHcpA1Ijwl/1rOW0XsO+sj+O
	 GI27hum0gD1Rlb5y0yDjsm94EhEH2rbwjcMpOQChvvF2wbMIWfXdw5Yrwzje2EbVBk
	 UlEMPWAjiDN9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99412FD0053
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234029359.28860.9311865699524304016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f0fdbbc037983ca1f9518ce0ef8da630dbad15162eb1ff4b259351d05c2dc6
Date: Sun, 01 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772340293
