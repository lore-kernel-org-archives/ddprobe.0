Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5202033A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754854194; cv=none; b=de1lwWvw0HyKxhCwubHAWlX5suJV6F/yWxbGO7WyY86g6fPhwgNN/j/YQl0OXnLwDH+Wlr1pMYhr8+UtGze4Onnt/iOTK4VIgE67vfvxYkES7J3WzIzMuOPDVKeQ98/2XLQNn33Zjk9HaixdlVWMv1FC6kau0CWAHl0OSIq/E5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754854194; c=relaxed/simple;
	bh=C4b2pr0cPkmODwGfADWeJDlndUd2norDXlQUUyfCLcs=;
	h=To:Subject:From:Message-Id:Date; b=JcqGO1MuICCVVwNsbshv6WhqW8g9bspLnTDYDz3B8q8alF8ZAr6LnpW8zIgxjO4irVhdgjxk555leV1mD2GBX4q4AKamvrYkQFCZaobETrZoW0wCgJ4meqd+z/KB+4lhRtiPtsW7/X0zA4hcZdDST8FVtnh6HkDq8BF8Z+wXnWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMK0SzuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMK0SzuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6239C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754854193;
	bh=C4b2pr0cPkmODwGfADWeJDlndUd2norDXlQUUyfCLcs=;
	h=To:Subject:From:Date:From;
	b=WMK0SzuKN/cdVGz2WcydiQRyWsQHaDRK/dBNylJhJOl56q8xGbUr3QK1DHhH7KP4e
	 ngw6vywrILWNc0mRWKMiYT2h3sk42Q8Qjg0oo4/pS7gr0DsKGZupZ3kiIFaqVFOC0X
	 OlxRCGpRLcsUBBiA9egpcQaOvgsbPC8V2JKXhTc2dcgaHd5k7hJAnBVGOyMyygOJu6
	 4wrHF+b5q3tTBYG4ZzBm25fyLz1MTZspvVLaS9UPc4WlFLGWkUVtBQcKxxVOl9G34T
	 NSITTxXhT4RWyvvgxS6KNld+gbHGdOS5hUCbEt4e0cr/ZSRVyd0EoSGyjqEwtMtdtS
	 ejJThqqCF8fLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DBCA0EC0
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485419359.14553.7799216761654161727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c2fe05c499511f4dedf3310959023c314d292bb2d834c56a62516ce42b21f6
Date: Sun, 10 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754854193
