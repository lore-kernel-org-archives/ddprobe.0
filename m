Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CE31E492
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715038943; cv=none; b=cc2zjoLNKsIKZuHlvLq/Q9i4P1nksr/wq8xKnjpRX9u59JPZjta5bmpvSTzsa9Vd2YtC4cgbrLf02BrFF95ybOQV+bU56ACO6nIgAZdpOBfGoq0hzs7czQ7xy2xHP9qacoHM7LZK70uUHIWKuyX3PAXHLIFJp/VWWJsE0ewhups=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715038943; c=relaxed/simple;
	bh=SFIGDwfVzfO6Kk8rP5ZemnXK+lCFmrDX2XxVz7q66X8=;
	h=To:Subject:From:Message-Id:Date; b=s6R3v1Zkt9xocQvCx2H/hU8CQgFC5j/3DAIsxIaNWm0ghoVFZlpO2jPEjYiz6lrXfaEg5yLGzICsaqB4DBATYjrJJ8pv9x5R7dzE5Oe6oJwsAvTHVQocNEnhMLrZGebhFyCzocB8fDUYd4kQhJ8oEg3Id7iRHGaHZYH+tYzRKkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K71ej/Hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K71ej/Hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84A1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715038942;
	bh=SFIGDwfVzfO6Kk8rP5ZemnXK+lCFmrDX2XxVz7q66X8=;
	h=To:Subject:From:Date:From;
	b=K71ej/HqxwfP7dcUFF3u4JV0tlcT4uNBv4hlXWGBUNgzMNr4Gm3fwSjq4ITeeRFf+
	 LsEuA7UZ1MyaYvgALosjn70xfjNJij1ll6EqTsgKmgnJNIpenNhPFZaw08kub0weU+
	 3D6G2KQW+xqao+B1CmLIyjxjUJszMynZP4RoPMcutAkMVtth72C0/CdumZ/PzBHnlF
	 bYtF/XGY1qeSLokFMgnjtZGQ5QTfL2a9pI1IXtdas8hMDxMFRpdjgLsEQz1f614DCm
	 Jp4h/YGB/aAH1lu2lTX1IP3uJ3ClGognt+V5loHyKBp9qx2fCFnTmtpH1OiSmoGbY5
	 y2CQ6lwsOeQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23DDC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503894277.7862.1152649405943749750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b780a67b8b3d65710a23bea991af47958d5983b7b1950280567601d431eda2
Date: Mon, 06 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715038942
