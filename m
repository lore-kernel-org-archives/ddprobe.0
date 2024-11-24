Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4889B364AE
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732473954; cv=none; b=J11/Rg8FXbXEaAvqyIUoodWQkf9/oy8Kc2RM13P7S28yj+fkAn3f/J3CBrxXoPpzIUu/ItnijY9zl5eqHWICI75jnBuJ4zDPo0lHaAa6br7Fk4LLpCOrSTZDMNuNVPExisU57UUvpvEqqPdq6zRC05vb+i5W+ZvZ0InMYzooDdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732473954; c=relaxed/simple;
	bh=LmY5tGsB2BJq9LTed+Sjp5iKJ2URVCu++RvhAGtlL4I=;
	h=To:Subject:From:Message-Id:Date; b=P+SEQstLB6wXwM28yaHpDMr+G4gHHM1pjBNHdC4WZP5X3GgWtVDvskBV0de0pRK0B8css5U2T/Suo2+E1lzIRWoADH7kzkmaGlElDwg2WjsswyewtTTPBXh7DP7nIJqcrmJ5ZdGUM8qHkyqrj2tFcc+MLm/qSyqB2GHi/EHD2I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOMhIm+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOMhIm+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FB9C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732473953;
	bh=LmY5tGsB2BJq9LTed+Sjp5iKJ2URVCu++RvhAGtlL4I=;
	h=To:Subject:From:Date:From;
	b=BOMhIm+zvkEgsAcq3lTiQx331KGRiWh5l0ORoFIvY8Gx6Q0JIiFUdzdZxCmJ9nM6G
	 ylVlF0UF6K8O9JPcQPoPR0pcd3nrEMD3K3OmMbYJ0+RXGleOhhWIN0de7TCUYDkoj6
	 aPu5ME55fP3i8HKlYayS7EN09Cp5Z9mM0p1IoPHvqwzQuKGy8mr7E/4Tvu8Fa+GHEq
	 KzPA302CgB5tLQMUKe+f6imRzT9PRDuv6MjhcMdK70cv+Fnv5baQhZHvVzYUWT/s/x
	 Yr1aCmPrAyq6LUrzT64EaoJugwjgRetZwl+zetdrpKYcQkVU6KLy84461UWf8u3Plh
	 sWO9Shmr3tdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF80D68BFF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247395360.22219.12794262199406368134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6287fd282d14172e1c7166c971e99ed6e895292af76e19361df96e8651c7f1
Date: Sun, 24 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732473953
