Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F26A385D75
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783402714; cv=none; b=jB+zu694KhMA5TdAT+XZD7vZ8hweUXMVIKI3pcvydij1BDOSWZh+5KHADSp2zoIsWe1xPJW8W+ilUK3o1pQl+5E7QP9sUgiKONP1S6KOUY+xpP02XF2aFPakOeC1EGqdyrSpGmZ7pItXY80D4GmcD7nmcdwaCYXe7YUJeY95/wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783402714; c=relaxed/simple;
	bh=t1DgjvcFaLNgfuoK5dG3CPdtJoN+smm947bT+AxsLFA=;
	h=To:Subject:From:Message-Id:Date; b=AQ0wVdFSokE8zkm3zSDeAfwr9CLn5wBi+/0wy7OPgTj3yQYHPFqqTUFGiH7xpV9MVmJSye0E0B9vc/ryR1qF7GAMiLXswKycacvvJHiN0bKgdMjnw1r2cQs4d2+RZiuFJp1LR4IZ8MwErq5n85ej/kOk/S+Osc3hs2WiLf6FAe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=go+ufVKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="go+ufVKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE0BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783402713;
	bh=t1DgjvcFaLNgfuoK5dG3CPdtJoN+smm947bT+AxsLFA=;
	h=To:Subject:From:Date:From;
	b=go+ufVKfEUW0lKr2tSlRFuLdf+0IaJtQDDKFNHcpZEwQpIoleb8+3Wky+khs6PbOL
	 jWkosk1BiN8sqNszyrdxnhRnnmBdr3uLKK0cvY/qEtDM+ZEb7Vga5dA6Rupy1vwawG
	 qkCrz6dExy9Jj4dbkoG0zfJPXOth2yB4PhZrmgQcYeq+R6RB3dt0JLRzpjZn97V9aO
	 vCvlZLsCV+BTX1zhP4yTTdbXOU2Bpb8o46R5CzBjPPkWR8I/0nPb1fyul0OttZBUQ0
	 G6mb25MVQn8ka6V82UvEmdnREcrwJFVzqIvxlWOxEI0KeGR1wT9CSinOSrhX/LX6b/
	 qL+QG7thMlZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340271368.31857.14435251017652541371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a6859cfa337c83775b5b2af57fd0a73f267d46d18d75511f71697f515a4f16
Date: Tue, 07 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783402713
