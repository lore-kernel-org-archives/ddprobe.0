Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A73A284686
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770690234; cv=none; b=OxU+b+efJkKTDLIrZHJQYyB8QTLckmAZEEG3ooLuFGf6G0zuTuHe25Bm0KGC/ujRzF67s400fKlHXra35HEpvLlysMy+cU8qwnrC/FI5oXLrPeLRJR5oFlH7Oq37dKiqkipSRCG8xuqwIciNecTIs4DNP2jJ0iBTY36KH/QD3eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770690234; c=relaxed/simple;
	bh=I2MgG0hKXbXGZo4KvPh6AJtZOwl1e/6EoeeJ7JSMLOA=;
	h=To:Subject:From:Message-Id:Date; b=dglteQ0fWN4rhpIICf2da5zR2p3u61kt16juHBNLIsB9J5zbeBGxhLpl4OInP7PuDKUQNw+WP0XrIti/hOFvqsuc6hy3nWTZg+c+YFtUu9DaD2gNDEK62ZvKjSGBN6ZPc2bZRsyGXOAyLq/6vPBVV8dIkROoCskd3ZwOOs9A/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnfMQrZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnfMQrZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C082AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770690233;
	bh=I2MgG0hKXbXGZo4KvPh6AJtZOwl1e/6EoeeJ7JSMLOA=;
	h=To:Subject:From:Date:From;
	b=fnfMQrZ2vmS0ynSK5FJ/I68RiKJ3uYVuAzwdK8UBLzX4GU7vgLbzIfPek83e6iEf4
	 MWrFbxAspMHK8ht+0xfYkDxsKHDXwBFQIs1OR/hPXzKo7fMcJnGrIWDsZOgkOS87+/
	 jNf91qC82sHS84CX/w0W4nTWnRL+O0hC1AnwxtXy6PrnQ1vSE56VJ4hGsmvA3Drk1A
	 Za5XGR0ygE1J5AtghEjyjbGnE5FugIcECqn/Pto7nEp5a6TM+EUGi+t25oJ2ksRvcY
	 itFXO36WBEvIeVw7mDjuYojnj55FMjKPBQqSB52lFz27g9hKzTAJhD3EwmeGDUZ5Lr
	 iZwmu51ajEbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66DE94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069023368.30858.9311207885288461941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752d814c84ef0194d2a7f99cdbc8dc28cba745a206501b2945ec3a083c93897c
Date: Tue, 10 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770690233
