Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DC83B4E9B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774868094; cv=none; b=QsYBp9zxrwu3M/foms/Q5ZlGLyJDvgZe7yVUSiEV+43Z9nYx7QdXExs+lkoMmifH1PkptmceYod+X/4VBATglwRBgNPv2BgxfWEh1NT1m8h+uaiEY/FRXF1byv4Zq+L+lq72pyzNZ+8nQ9ZkHTArEWNY8J0H6kWd1AS7dqScEP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774868094; c=relaxed/simple;
	bh=ypYwm6OgDXqnt1+clHkKzL72XHE5v03iGxBiw8HRqo0=;
	h=To:Subject:From:Message-Id:Date; b=dyHmd2BerGvV3RvbpSBq+gSigq7XXJVMGr1ZkqpNMzgf2ImYs9Qw2uLBuuqhewYjSvWaSQXE2J18OYQhchr1VM5iHKK/DbqhilXZGf2mZMXbr/fz8fi7urVnVWJhW7DjpUTQRuFOAkjbdGKRdPnNsxp996D1FFfyl9np3qIDeeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvhS4Zu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvhS4Zu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8289C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774868093;
	bh=ypYwm6OgDXqnt1+clHkKzL72XHE5v03iGxBiw8HRqo0=;
	h=To:Subject:From:Date:From;
	b=lvhS4Zu9Ek0xTasOa7uyTKdD43Tz/RwbscIB1kMa0hLlp8cBvS+PGIg4OpBG5qLNC
	 p11F5qPT4HqbxN/cD0pOlbdGL/3iNS1XlV61ZvcHIUccWfnAII/9gxBzhV3izPSU22
	 4m61AKfWY0uwPk81iTxxmr1fPhd7lndXEf8Lkm+Kx+tkwl3RViMg4A8XVMO90XAgtv
	 brMrUMc369qUODGijN5zN5WVcMc6IRkUGoYSFVgkWdJSV0xKxTsK3q63FyxumWdwCH
	 IB3hBW6sidpLlZh9Oq4JNiMPap1PrUSYzKFORTt68PBcGuhFPsfBq/ngOMMsicFRo0
	 KpXVYdu8mXrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B02FB3D1B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486809360.11577.1227353096228275078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3af986a088a62b3d15d167d3b655faa611b6c5ba3150771ef32e6b5ed9cfa3
Date: Mon, 30 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774868093
