Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DADB3E5594
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791294034; cv=none; b=Gc5eZkmiE7t5Zkaie1HOriRd0wOmPZeWyoEjGZe7xZ31EuYQwFHAibW+WWxx5AbQag83OF/oAXxv2C8J1FPqPUl6Wpla0DWcOsFTrCjUjypBffSs7XY1eSDL+muRwNBtSnMmNrwitjdp9Qa80jRNxsBXMZ3rLwCB5CGapKqcXwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791294034; c=relaxed/simple;
	bh=mLnjyAaqNGBUluEbeFeE78lrhIX2Rs0GynjAYUFZ2P0=;
	h=To:Subject:From:Message-Id:Date; b=LSNT3iYYwtyWe9s75zAnMEY7eeUmxoJBI8LwpZc6QjSgejX9JJuEsxNZh8YSm/Eucf3sNOsNMH2kHerr0qel5en1EAkFCdqQ997wW+TQMtgXNbrnvThD9SaX1975T8XhLG+07h0ENZeHcDUF9lZi/3k3NnmLIARIu11QucDsN4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkylLVXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkylLVXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE603C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791294033;
	bh=mLnjyAaqNGBUluEbeFeE78lrhIX2Rs0GynjAYUFZ2P0=;
	h=To:Subject:From:Date:From;
	b=pkylLVXKv5MXj4zlHjFziEXEFmrq2PtaAGRfraDxJy5MLbJf1bu4woQ8Rd0hNN0Kz
	 GI47eJfA0T3FphWkfLxpkTuTKDwCAzBt2bGJAbV4U6Otf7ZIAJHC/yxNl1IFAksREd
	 bWFYi8Eudeu1CaTANxQ4sGjdGJTJ8d93KAT6buUmlJfqHWyVu48uSqurXJUwszLZTH
	 4DCKkMjgbxNQRo4li7JlQO+TBqHbo0tn709dH6kM/nJ5K8At9WplfgkoMjLGH/TG0z
	 cwYRLQD3AEjUXh3QlwOwC4FfZqScQeug8Jhan3TsyYZ7xI29chOJeg9bOvbq5gffBC
	 5kOPH4L08lXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7832CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129403370.29457.16137627125981799565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82adc9b6be5733a1fa2acd1cfff54b76e4d9f4318099328aee26aa0a074726f4
Date: Tue, 06 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791294033
