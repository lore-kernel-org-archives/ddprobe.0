Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1E619CD03
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778556034; cv=none; b=SCarEru5qNgVU+lD7I7RUq/rjPssqt1WpcmN8dIBjjlxzTfZ6AW+oaYC3K+ZReICBKW8eq6E+r/l3jkAUqWrYSQR1kn6dwX5e+t947/ZrWXpVpK9IUlR+MfBPgHWhkuZWhqW5gaSzB0NJLh3W3abopmxzsQtmJau3paYzPbqh6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778556034; c=relaxed/simple;
	bh=6V6zZGKAOpbQQ3LfMPGb018G1zcn+zp0pj5gxjgrfRw=;
	h=To:Subject:From:Message-Id:Date; b=hirvFkqJKM+f3EUCrlZh9C5i3AaIiEA3Pj+/ItYZEUXT+BywbgJUx0s212OvoLzu4mDe3sPpoBJbHz9kr9eOAuRSrWrLggOs3N2TNV/kpfeHDl3nrbKzNODT//XFaFLHyE+9ZxFnW+Zb1sjgEhOuBBu3TUodfKFl6U06AOVqj6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDhMT1JL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDhMT1JL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C046CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778556033;
	bh=6V6zZGKAOpbQQ3LfMPGb018G1zcn+zp0pj5gxjgrfRw=;
	h=To:Subject:From:Date:From;
	b=SDhMT1JL/Hy1eM74ZZ9ny7r7FT6lAmjQsHKtpMOKcBDjZfvircCiezs4UjEi4Vv+v
	 uw06nkZhXxStVIzGfa69kfHQlAu4m8894mhGH/0c5bPnMaDkB/8qtZHEUhzv5tIl6f
	 2TBguRzWNMPokYzDhiX8WnF5bMN54tukb0JuBB/yeGv6jiNEqZeYf+VBscMdp+yzgJ
	 M348UWI0ZHJprGJHWbZtYr1GRZza+MmbLmtjb5UsTqPwC7B2VG+Wbx+Twm5Oz9HLqF
	 UwXOTuen5Ag1Q/XD8jDV/CDW0HivisdHooUvWK9mlLw690dfvuIQ0Ile5iuZdgPu0r
	 yY0XYe8Bp8yOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B1CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855603369.13355.7570483410719274646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b57c6caa9ca4bc10b20de23cedd1e23c651922090a25e7d2dc9c002ecf51a28
Date: Tue, 12 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778556033
