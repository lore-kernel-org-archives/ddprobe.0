Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F74813E057
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718710763; cv=none; b=HchIlwae4pfVPFWBXsIohL58sqbzJC4IuRm1I2ER5eAMEdOeMGrHlInTstIRjSqjW7oQntRqg1EwfGbkr1mWJirlIkidBRohIhHI/Prgf1jqcktP9AJuJtDnsEIsB9wt6NuGeGW22JKrPTZu3A9i1ZuZwkalz/Km2qtpDS/9iGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718710763; c=relaxed/simple;
	bh=IJ8gJoV/rBHGiKt8Uy0w/R/JLvP0bBlIgBelE5FdBu0=;
	h=To:Subject:From:Message-Id:Date; b=X9wjQu8Hb6Hy57ebGbAhXgkR6REXrcpDzmsq1Prb3mLIjcJiyovhC2+yhanpQViK1gH223PJFIQJ99nHFQ4aH/3VKy4/pw53U6yzYV+mrcXgaJH2Y7QJw/EouErjE69dHBcveBmHveiBYloOv4b701jLuPM1MAtYY4ZvjtAvkd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WssWdjWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WssWdjWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D332CC32786
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718710762;
	bh=IJ8gJoV/rBHGiKt8Uy0w/R/JLvP0bBlIgBelE5FdBu0=;
	h=To:Subject:From:Date:From;
	b=WssWdjWqeC2Y+tUPcdq0ESAW+5fYdP7/3pHZ6sZEotQikZWujtl0zs8ou7X9O2WMW
	 xWpaCSYpteGQ/WQsJXKAsq8W4IC6GdEfZSgyooB5d8nnpOSiQHnt5/99koreuXCoP+
	 b+ga7BOghZHis0e2jo1kLFy5SPODrs1krCeqrgt1ipSG+6L0SepInNOVHJYkcOJNiW
	 xxCilp+rlvw4fET97RBqHC7Aev4GaWgqGfG5Rf9EjsrVNj1bcrDmnfxluDKmngk6vH
	 38+bSpbkWBsDijZO0zQnl+8reHKzvKTWdbSJyhY7Z0/vyfKT6q68peejKjMcoWVdTb
	 0L++EqZaeriug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2543C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871076278.14061.390025797594867011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389ff6b219fa7dd408f4ff5ca27c5b32808818e7ecb9df478126a4952d6358ef
Date: Tue, 18 Jun 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718710762
