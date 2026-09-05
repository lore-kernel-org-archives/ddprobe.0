Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B21425A655
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788645034; cv=none; b=j9Yoyxrp362jwqoto7dLH1p13UJ5Ougezc+oaEqT054gU5lZKXvIvLUZEf0HZ9piTUzuyJzO6DMVoZvxL8V7jDU2f8b2rim+lxBtDimrYmZkyWwv92gW5fnU5p8LRCNuH6ehNKUC4NSi0D8DboEXDDuAVjUfDBQOmb9L/p71rHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788645034; c=relaxed/simple;
	bh=8IupX1CYl6Zwk0W/rXuqj7WB9GtzjOMrQlIi0/TO48I=;
	h=To:Subject:From:Message-Id:Date; b=iY8pgfFrHB4JSsswakyPYtM3tJubNjBZLdcadPxqjwWYbqCum1OE4fGXIMG4ifI93TtZKZDorTKmfqXMZdBYXcljjXcvcRRfNcNNkZOL8eRkhQWX/HScJvxDY/Y3YKcysYoiu2kiW0plSAcz89hINUWiUZpgbxvGAJx/w+w9h4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1+XS+rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1+XS+rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31C2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788645033;
	bh=8IupX1CYl6Zwk0W/rXuqj7WB9GtzjOMrQlIi0/TO48I=;
	h=To:Subject:From:Date:From;
	b=q1+XS+rr/yWf4TOHTIoeQrno1bMmAiMaNxrwBsr9k1B2KwQYVk8wDTRsnR42LkBJC
	 9k2oTm6wc3UDIuHw0YvQUKWUPZ4TLpFHexql7ODvvWAUcreKN2XlIAMcjeffUVZuGn
	 kqNXr+ank8bm58gQvBNUfyBzdDjQwSFuLEgpBqk9HDGiUsoWLtDMYjPehc/JRuSGzw
	 rjrytVMEHqULk7XvsyKPDVI6t44Zt1hBHkKIPPlzZoroxHsKSt/s1ObQHhl8op8WNM
	 djVK7j2xgcLZvz69Picb7mwIWPiGU/CMSTHsGGT9mr9qPS53+dwrb8X1bHwZmQJq8O
	 DS06pcsbTuUXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FAC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864503369.23055.10376215125800672295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d269d13e215906bcecb25507b788f0363ea95de580eaca4d8214a08fa7df9d
Date: Sat, 05 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788645033
