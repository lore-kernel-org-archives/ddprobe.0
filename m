Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716B51DA2F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716645863; cv=none; b=Cj/adsvEH87GTkWqUxFF6fyWsPrJVPaJ++pfpqgZ4vtZoiB/CKvM5rFbsAeHr2UFVT8XSl93RdJCEdqRm8wdrWS1Fzc12ke2d7wZCmMPwJwi7jVr2QpzSYP3UiN7+ky4t7TuCdkPHg2CYXoqFQkux4dMTp8p9h7T0p4MW4kllAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716645863; c=relaxed/simple;
	bh=rtzXh5YAJX3wVHbAQMJglbBOEqWmklnswzkgLro8Es0=;
	h=To:Subject:From:Message-Id:Date; b=QvCAFzhvz6RNTNNIC/yK/MufDl3z3EPRrQorShR+fLapxgvo3tSZnbl+2jEm3JzJVbFVFVO5NVhGe2Iq1hKisir321wPE7FGcqkqueD56SmqRsChny35LzkCf1pOyNikWPJzfBY/bbA3rxb/h6JFu0NIj1iBV6MgKI6tSGRuX5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufTQdRm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufTQdRm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10DAC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716645862;
	bh=rtzXh5YAJX3wVHbAQMJglbBOEqWmklnswzkgLro8Es0=;
	h=To:Subject:From:Date:From;
	b=ufTQdRm2Gf9J5FC65SYzKEpu1sICD7fBk+Y4Dswf6w++UHk2wMv3wOlCelLaXUFqX
	 pErYUvPYeVRAV5yGHA33cpszMf0WGsmSXPI79ZFwN0cuKir8DKdiilrg5HFoqaJlZR
	 4EIs5J23t7Q4F3AwvMHlA53G3SgqRaUSVVagAVHYR7lgMDXQ5wrJnCm69kMZK3uPjO
	 lbsMwWBonAIS852J8J9mgtnRUxPN4obE7sdyem+RbUJ0tlMU5O/L3dZqOevI1qAnR6
	 HsgXhhf7aWoqXdBFi3BUBodRpo7dbgG6LHENnXsEHtsd00U+z71pu6iK72sYYbLjbX
	 c4o+SeLaruGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4200C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664586277.9845.16695372573286063806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2220255f333133bb62e11086bff0c0859a3d62789c326b4fa038022e43ecd9
Date: Sat, 25 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716645862
