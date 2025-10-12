Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EA21D596
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760309394; cv=none; b=tXOu+rOFoKFQX95GEBPCuvyJbhJxC4YXdN9FoCi2od78SOilTiJXkgHA2dBJM5yw7ITOG+BZ4dizRPS6wjN1F+XhfeyVqo8/Ha5FoZsbHWVRN6MdRaPm9TizApC9dXPVXlvylv0qYBS6d4mBvMZTSZRB2S3aQ7h8o6QitnKaYvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760309394; c=relaxed/simple;
	bh=JWcE0F2DnaS3UOJ2gjyixrDWP7ZFGbZ7GLt5Y1dEUYY=;
	h=To:Subject:From:Message-Id:Date; b=JhGKPg9WIGutTCLY6EllXr0k4eITdCvudGE6fp46B8WVWB+pCcCm0fvauxd9lnpXiLuOIstJXSTOUTK/K2H09NvCGz0oPI9FkPp+41I6uf9b7VAxOKARakUFk0tlnJJjaiNsLS2o6evtdEUdeRa848Oi1FAvGkEm3i2uxjITydk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPbOh8ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPbOh8ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE884C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760309393;
	bh=JWcE0F2DnaS3UOJ2gjyixrDWP7ZFGbZ7GLt5Y1dEUYY=;
	h=To:Subject:From:Date:From;
	b=UPbOh8eyLHo5GrWgn95m51LpydI8Ixj/ntzYXZsd5LgL3xP+/UUXTA23l9uvnkIr+
	 Wx+ivhrMFzIQdnvRgx0NwzJmAWqXe751bgNy2k6U8+pqa7SO8+uR5IBQLyH8qZdELB
	 IvsdxRwU9JjOnQAyPgXBNFsVN4F9tPB/pYh+XCXL8/tMYHc4DlDeEmJfzSRZbXZCv8
	 n9QpBXI0Z0WUMFf6nb/sL4MdsXHUs94MPTA3Y7dSOhSGtpaMGajAq58YZwDtDBOLzt
	 eJStt/wNFuFxcVwGupBupXpasksqAxwUkD1GA2fNenvfmVAc7A3o8epqsKRisalsjE
	 qWaeSJtK2Mjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F7DCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030939357.21374.16327367834139157534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61b7e9f3a83f1448c019f326e32786d24e34ce4581e48d0ef24ab4d69e89713
Date: Sun, 12 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760309393
