Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ED017A5A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726876554; cv=none; b=I4uFgI4Pe4Dkn41UQiuLmNwE8Je/DDMzFgGHldAj7PTeTRWlzKUQOr8bbwwmJC+xJCejIZH9PhuwT1N0/iqyRgNU3oRTEgbaUZkW8tftpIrda1u+u8/+3BUsSsZ0LU7I1/mbVVnp0Bgyw8zq8fP3nFJOenp4EVwRmPS9VIGtrRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726876554; c=relaxed/simple;
	bh=V5Zt2RLSh3xAP9dsrF0yEKjZbfnm+Z6UNdVT/QjFo4E=;
	h=To:Subject:From:Message-Id:Date; b=iBDwDGFaj8G8cvrVy7gVD9Y0D3aMb6rHaBBqUtwTHdvGN5Yl2CaOfmzg89CWX3jaPH0jp06dp8/9E0BrI2hPV28A9Wmt/TORs6OY3OLKlgRzEnsS01OpSLna7prOwwCIWbUQzbpJOMMyNfj7kSIbS195yEVGjtr+amSPisqxfs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okYbDeeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okYbDeeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6BBC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726876553;
	bh=V5Zt2RLSh3xAP9dsrF0yEKjZbfnm+Z6UNdVT/QjFo4E=;
	h=To:Subject:From:Date:From;
	b=okYbDeePgj08tertwLRLrD3XFTvwJSq5W+KYHc4B7gHHm2hmcKUSnUXhNAXlifhQR
	 QZlzPrIZRKAF8pgvazvyyA6a5ib6k+D1hLZAqJpyPEsKXhgTzUDIP8JoBeDLLaSy7F
	 meOf9hwiJ+Yl2+eWi/WOP2FcOjTqDdzDPrO06zB3Kpb58nPzYc9viHzJEX0XO7Tn5K
	 UYY544NtL3UiVARp7yI5Ztqk0eHB1Gl8lj2fhsNHYq2g9i9X4H4xTLCpbuhRzl1nTZ
	 7XC55fT2//tx59eNAaIvJ47uf3au0scUu8RhG24VjWNswkrt2bzwAbD0aRHih6Gu1W
	 Sk9a5YVQB+iPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF1BCF9C5C
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687655359.31370.13263135859609410714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c26c196a6a8a7cd322a3a9078830601de9ee6c3d0c64e112bbdd331179b275
Date: Fri, 20 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726876553
