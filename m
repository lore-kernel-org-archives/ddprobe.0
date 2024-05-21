Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E956440
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716280943; cv=none; b=XFxF9NLSJbgicDVtTu1c3xiTtrSrRgCOuh6pQAstlxya6xYaaYd1neE9G9YDs0LLl++E293uM2g7UL6jzii6LPdyTz8st+ro5yLtSzG9TMTRNYcspda5fzca0FatVk87vgnBifVIlwaR+sJ+a7VjKb4PjhONjWyqQyNEOqVeGK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716280943; c=relaxed/simple;
	bh=MkGehLZF7pVWmAbdnvoiDXF0iOCOooY1ba0Ngfzx9nQ=;
	h=To:Subject:From:Message-Id:Date; b=so+t9umhUBlsELypQHTorP+GQwst8sO8Yw1+ri7et14n/T9G/dUVxAKIq7YozpnuD7CZNk/3K294wGwhl2zSq3REsirbtY2hoeAF4D7xbxK0/CN0FtPSK0l/eGqMEgZjL46QGNa52ryc5eehYycXdezgpy1CnhL9/VPcC/gMLlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odqxuPBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odqxuPBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63FBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716280942;
	bh=MkGehLZF7pVWmAbdnvoiDXF0iOCOooY1ba0Ngfzx9nQ=;
	h=To:Subject:From:Date:From;
	b=odqxuPBqp0mMgsdbTrOWm/FwYVTn9+amhsZf4Ww5O1X4XGO/OpCYdOHjmE9Y2nyz8
	 MLBze0TFYrMyWv6akQ0BknYIibssRy6yGh8pgOvcgoQ+iGvZIWYk66Wuagp5h0cb61
	 6sjYg3j3HFkYTRbmyX1+p95SII+4ARynwB6jO5ee2d1moI+dSeoYRq/BIYEJftFnsA
	 Z/i/a11/BD3bJaqwmQJHNhUYPI+4d4mAcGxh7l2VoviILKqxhF/iBDo4s7pe9nnhZp
	 w725DrMk2rucWGzpgSyIL7vt9cW+H3XfljmJrhtKNNgsVEmGtE4BsO/WAEv09hr/gd
	 1I/fUO2vtgYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D52C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628094285.4825.4117448914679209979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f275f312c87f7a137253b6e517e98249cefc1220ecb5bf02d09f070ae26afaba
Date: Tue, 21 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716280942
