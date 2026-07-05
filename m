Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3420435957
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783230514; cv=none; b=CzytLr+5BvKNJqXRyEoa33qsxsfYJXdwDHCO9VEPJJDzcmjky9+p2rzBrkKlrqZz3jq3i1LQR2iWaBbaKiB+axVIsqFxlElRVhZUvR3YxRpL1jlFw30juaqHKnflLjKFJJ0dzUx0e2DCtS1fEzX+qZ/C1Es1iNh64ED5ppo7sc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783230514; c=relaxed/simple;
	bh=wcojLQnt/pVZwpnJlK4US4JykMubW8V6ss4PJXEA46k=;
	h=To:Subject:From:Message-Id:Date; b=B2CWwDRp90tGqnVWzwD0oppiCvj+96Y+Cc+jsxWiSKVXD3va5EqYfc1hWzxa0y7L/zmesilNp7TeGBmVRh0pWt6i4YbZLGIcncwj2EXea/UDa/xxxCW67QHaGHB1jxKIGvjoIbekgTt2czpMMhIF9W8fh8d5ULwqcOezbvz4Hx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY163b5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY163b5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC440C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783230513;
	bh=wcojLQnt/pVZwpnJlK4US4JykMubW8V6ss4PJXEA46k=;
	h=To:Subject:From:Date:From;
	b=JY163b5sIwwlgxCfPVY6UxgemDWZ/ZoJdiRbaKF4h6xqu7XVgTtnVSlBkB5Pm79B6
	 g86/2K5a8iEICBJc22bWZ/DoOZbbq87GrEjmyQuHiqtzYYlhO8saN6DKJTc7WDXGnP
	 ophM5kIREDTlUMCwfq+5Rq+8+6oAaHuQ4ionyVipVz4QHYhGmiWVkuXj78oXOU5KIt
	 +cmve9x5nj5wiT7EUMi27iCzGLbB1TxemuQH/982FzxJChwN3dCUNGnczf8o6LQJ1g
	 Xy96S7Jt0ggacItIsfPlSzermaceNPpE/+sVpD8DZqx6pxG6gMZ3lS95XBU+Chr6Za
	 fyOO8HrjPiERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C7C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323051368.24351.4851372095937724476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7525684e05b17c588aeb7dfb393eaeb5d7a8e704fe6e938c5367c1637a456881
Date: Sun, 05 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783230513
