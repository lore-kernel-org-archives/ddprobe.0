Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3586A3093DE
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755077994; cv=none; b=P9VT3P4qLFpYSDE65C4RC8ot8C8e64Z8qBP+pxPAp/BpSPRD+Wea72P9x51rlOPDF62doEUlHYkuHho+s4BTYEkcE67HN5rDZdly+26wSAYg2NYkb79DUYS0+a4UEPeOgjSVdLs5CtvMldWwzh1+cVw29s0ILtWwg9M3m4fQ/4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755077994; c=relaxed/simple;
	bh=343ETlE3tnxhGDG2FA+1jgUwRERzrzRP0ueBDhTk6hc=;
	h=To:Subject:From:Message-Id:Date; b=juIwaezEZAeWebM8ro4gKYFbwxYGd6lPZuEO9PK0gztY49vy3PTbtNQVlxKaIzOsgpnwr+jHDkehRq8LX8rXQJLM9/h/nOzoVbpnprFFf33tneq3PFAM7bNSreYAg4Jkt2AFr9XVVaGxDoyKDkr0tfYWjIeqSbDPfAjc7eQn+Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEOSqbMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEOSqbMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C0EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755077993;
	bh=343ETlE3tnxhGDG2FA+1jgUwRERzrzRP0ueBDhTk6hc=;
	h=To:Subject:From:Date:From;
	b=IEOSqbMdQfd7m1eWyGCs6Amh3xoY6Nfa7kG4ccuo3Tc57yK8Bn9Haqr+xmHoXCGsO
	 HVA0+G5zaVOjhWo8KFhsZXONDbBoHEayf922DW9AXANr9hDqYZCHXa7xYoBJo0nGUS
	 YWf8QeMTF/RyFq8vtPHYJoJlAanKcibzK2xIrR54qZHGXIqcSeXyhSmBoEr+R4P6JJ
	 kx8kdTGsuNYV/znKno45t8gQ+VUgmB2SV3t/EgqMBlhFeMjXvwQZrLNjP7HCG2vo2M
	 vbS93nS0c0t0EkeCwxpdf00vi2OzXpRvl8uSQZQ6s5VAdQEaE4k2tec0yhjBbqh/0b
	 kuinF79bMxxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92370CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507799357.17724.15620762409108902996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191ee94896b3ea6514c4b448f3a38efaadf1d94c0ff3a98e3a1e36ffd039428b
Date: Wed, 13 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755077993
