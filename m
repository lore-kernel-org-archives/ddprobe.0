Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3EA31282F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433914; cv=none; b=N9x4UuTkATvmzshhtNuZP/bR0xm5n6MNO1ZvRYTvWl2wmxg0N84y2ueIq+mSP8KLPasU9GeCL2cISMKqkHzPiTDjXafjaXZKkA62lZmW4an6h3u+kbd7Pnc4hLIFDD9ODLdJIOgXVd6SGompMmTE7Eaoe8qdUQO2UomP6HrGQfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433914; c=relaxed/simple;
	bh=Pi12JcmUPFFoAi8S5uy8kgQoU6yD/7D0oZfGVu6sjpE=;
	h=To:Subject:From:Message-Id:Date; b=Qxz/MkPUijdjqCcl/kdsnYk5PDgbhRucTx8jAfiwshtjM3krQuESL6RcQyOIOmxuADj4YgTTnTRKHTDquYzWHvjr0u5sokw5SLttuxUv2llFqP4FZ/D+DKjreV08KeZWVS3zcIImyp3gqMpIn7ZqOwdnSP+82fV9IxZrIln0Mc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJJ4ZrhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJJ4ZrhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB183C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783433913;
	bh=Pi12JcmUPFFoAi8S5uy8kgQoU6yD/7D0oZfGVu6sjpE=;
	h=To:Subject:From:Date:From;
	b=gJJ4ZrhNZznyofxFifURqmiYYLrZAFc63VK6BHX2x7e5dcfY95BnYs1MJXPaxAPW+
	 6LiPEfT390t7Z4DiqhXWOW7zXq1GsH5u5cA6wJ25ahI9ufiMozT+ykVJ2rrHNHAHBJ
	 vF1WttFBgEnbMj1sLyJ5GJOU2QW7mHNsZlG4FHdFXMvOVcuR5Vr2K5MopRg0x3+wsU
	 rGGt4AvASgYQsigiaq5pBmj/s+lleXhHeUCkZCsbSMd5/iCg0TU4bUnpED9J7p9HR4
	 bRxa1KlcnBjJir6773A7oMIicbbjpkgJHFFd54wWl4YNdvFSAXYCaBahYknWRn7V+R
	 YgQbi7DfHeQEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9004C44501
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343391368.9141.11853049538292102349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3058b4a21652dc7cbaae1a990951d2b512a27314584205e4c1745e1078b47562
Date: Tue, 07 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783433913
