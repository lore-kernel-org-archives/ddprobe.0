Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095B24337B
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766304234; cv=none; b=Kx/IHn1CK0O60lhH2aHUl5kN206JluPNl0VPdSFAYOiBFtSje6Rn4wL0nkrV76VTg+XL8IcwI2+8RkpAa3BAEkhEBtrWhUzISW1vkccPJS07f+Hz/GhdY95mgQzREF9W4cUnVyByjrBRDI+UZd4SlES4un39uN1bekTpfNN0ZEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766304234; c=relaxed/simple;
	bh=omQY9aORj+YeQ/IJEjrupu/4SaNVXwvKMy540ECn4/c=;
	h=To:Subject:From:Message-Id:Date; b=nX0W/gSngnTKzMdtczsfGrEaLAGrXN5B7m2Cj+EkUOdFjsf27SspLfyGS5MPMIT0O2f5OhIwAM7ZXzaU6frm/5kkedERpCFv6Y5RUdKBVFfzp6t4UksRlbRBWBj3sVJdDjLAKLIXZPcEiR+G+IDXqqV48j3rPQtwGWDQqTZqfEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uh3Enni6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uh3Enni6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF9FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766304233;
	bh=omQY9aORj+YeQ/IJEjrupu/4SaNVXwvKMy540ECn4/c=;
	h=To:Subject:From:Date:From;
	b=uh3Enni6Ap9JREE+0W/ZAbtlxjFjQF8bzHDmLvfqWrI4JnYLUPbT3Ziw7lWDnVZnQ
	 hJ7XM/4cnKUp+DzAiC4lJ1209YAAPFZOtkQorQX2nLH7l2BNUP2uMQN+72wZ28eWnJ
	 9J8iwp0is8QnxUa26hciTOlzsZQrXaiFejV4AdT9V9CqOyQg1BG3p6yQRHO1icXoTO
	 3MbpFJiTzJGKJrTeMRgBjdxoEhVyUcOWmPRTTJG5jf3Q24BPNnvEBHJqRAydN6+ClS
	 VlzZru4ehkqQ1zecaw4OT8sk9Hvjb2PTDBL9M9m6CFcr0qeRtdn3SH4+VcE9R9dBVW
	 RtTVMzlD1ehIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A51E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630423358.7084.7768794954972196645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d4c19a0b0d595f1bf567e15460093ed4c12fbcdfa611345fc7355d070f35fe
Date: Sun, 21 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766304233
