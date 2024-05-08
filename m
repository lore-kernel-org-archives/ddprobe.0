Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FEE622
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715130743; cv=none; b=bf5AeXILeW4oymIrKehay/nYtA0f3zAhVVFK36GRCMqknp2ShrWlDjezORC1oCvAJCwQ8uBs1wrsbzKt1uVKT05/Kd8nSOSvnFOWa8YhvLj40/8K3lw/DuSScGPUhBIHPB91lSICGVbEyIEFwAuDd53bYEb1HxG3r43ryze5deE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715130743; c=relaxed/simple;
	bh=WAftB2tg7yRVvbLQrBV6g27pTbfLQNg7y5ri6COloOo=;
	h=To:Subject:From:Message-Id:Date; b=SP8OBIva5+N44UO0lnqYQXDyGY9UuRF49ZJjwar0dmXidpbHKCOSOmTS445L+OLoPak+5VfHIFcTtaTL60o8FTJgJQqmXiR5YXsbD5/PVicApQuEfCfxBmpe5ipGqJd93+Zbqh55CAt/bskP6LbNq+rIPMSOwP5cyOMhEX/F4eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyGTyHEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyGTyHEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA18C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715130743;
	bh=WAftB2tg7yRVvbLQrBV6g27pTbfLQNg7y5ri6COloOo=;
	h=To:Subject:From:Date:From;
	b=KyGTyHEEe7q1CqxzeGNR1wAYcH9sBqiUhDq4dY5EyrYuKjgalSRNvdAt8jnROOIdH
	 EOu4KAR0NCgYXUCpx35obYKZLff9683COZ1HPpgvcw7esVAAnBTJpjOWUEmJiAYMEa
	 cvpvT6HzjGm96FIEv5kHtVWeI5lUcszS5gnYeyVytKF5/i4wnVsVxV8dly2z1DwZng
	 byO08+2Gnvs7TE3nhBZ6OcK1+JluVQySDvA0GE+iGC0N/3BHjIrWWIW4oasyFteIH5
	 fNdnydjA/S/DBtpXRmH/kx6oCH31sPxPq0WL/vxjvHenVSwXuCgiWbCWk4pM78Icau
	 hb3kblXZvGDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7753C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513074287.26941.15840737279333525039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ee8cbb99bc06721d23a7b61b7639be98f385c49a5414659d476569d595ca7f
Date: Wed, 08 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715130742
