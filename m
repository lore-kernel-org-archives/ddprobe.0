Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D2314B84
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764937374; cv=none; b=sKA/1Az9fb22VtpmrY6/d5PlFkW5TInJS6phIR48PU9sifgtDwkEl6gRYtlcLg9qrPWq8AEHM6AHC99kMR4wK6NW97Q6IrpfFOmMFJnYDjcJXtNzSuyU02v+bb73unhN+pD/BXiRvQ1z5DwVFuAdzUjbh/Jmu4mtuiuVh81C0ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764937374; c=relaxed/simple;
	bh=H6VYuXXaix5LhuaEZy009Cr49vb9HD/zmKRs08mTr0o=;
	h=To:Subject:From:Message-Id:Date; b=kqjCvJnuP+2R+53tmRCMx0J6oROKc34y1gQyQZBTGq0ve07AdhRGqovHjrGQVKeMSQj+vC9PkrFiraA7ZDRmaGXth+u4ANdPH21HLv6tlNcHOhTzlvaqKCk7ybXkb7KlzS0D7TYVZvHqBJyh1Mhht1ofZ2xTloJxR4UmkqXTVvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIebzahC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIebzahC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764937373;
	bh=H6VYuXXaix5LhuaEZy009Cr49vb9HD/zmKRs08mTr0o=;
	h=To:Subject:From:Date:From;
	b=YIebzahCcU2X2mmIRuZDdguMyuFokm7k0zXLeO2kyms/f1Fz6LFHbHiJa626JSj0U
	 Zw/67U44f39HcfboBL4O82Sj2tEwuAaz0wBSOQyFM86o6Fa5NZRuwKkLF5+uVwnEut
	 ukMF2MhyuL92Q+vwEZqaO6TIisPq6YzWaFvuU9TZt9ZBZdB5JdZBS2M7wf5UL/Qthv
	 65um7ML26hsugu97BM1cvjmTnWpd99fNd+EAFxLmbLAvI2oN6AkunWkJGiElZAPCXk
	 wp5cWS/jU0Ta+cazmAb/9Y7m9zR+Rn+tAl2sfLFveSi39HLdWju5UawV4k0NkkQVaS
	 dUioLwz0G4/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EDD2F7EB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493737358.18794.15131676899476928430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17728728379e26a8e4dc66105b641668f9b32bdd4bcc570ecdc55a1aa58887ba
Date: Fri, 05 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764937373
