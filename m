Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E71B87C3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737713154; cv=none; b=c0f9g4UjTYy/BKaTiEhON8RRqW6Et6dPc74Gv1Uvp9OM/6eDw+PYHGJuG8apRLHBYNqNfQCfSHtVtAh+/CdezDAEhh1UJ2QBfvJiV6u6+Gs3NC6nK3M8BS4ujdNIc7dDOtD5znXmEWZjUWeduHLuUwa/+xwFmjyxc6we65wU8e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737713154; c=relaxed/simple;
	bh=AlNKkLw/sRd1z8nSVgx6H71DJ70APunHMh4wHzIcNBk=;
	h=To:Subject:From:Message-Id:Date; b=JVWA9Bq1qkAHNp2fbl/zEfdR+czgVL217rM1qDAifnQhaCkgIqAYrV2yc5Yi/ztlJ+bx8impRRhex3etbBKy0NOXUjdxxT/uEHHAjmEa9+eFYNpu573j9nQ+HgfDe06ToNgfaq/XurLcvpnfwpUcJPyp5lbufloRuCcFVbxAS5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQT8/Opm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQT8/Opm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A632FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737713153;
	bh=AlNKkLw/sRd1z8nSVgx6H71DJ70APunHMh4wHzIcNBk=;
	h=To:Subject:From:Date:From;
	b=qQT8/OpmpjeE+SSDjBha1ODe8Y1UcZHSfuDFUSJZksa0aMhbrSDoA/NeYA0aU3xTh
	 uyvhhM6QuuRkKsCGp6Naz6ZJ1yw6XxPhXOHNdOf4Liv75bjJEIQojhuWyY8gQMG0rR
	 BSqCsPTZMUXABgptGrkTMjEAdlfrJpfJG7UY082G1Anb1+h1fNq2rvpOI4t7hrRIOZ
	 MR0fFH0yBnV+3TtJbKchSIzBmWwUIT5jetVSzghT81Xh3baZ0UoOVYMCN7IP3xG9Rn
	 xnWexV0qd2xWnQYGQADeItTAadzhr65HQvklwa4okUjxPCDHDeEQnFKIZmfRUEYdul
	 XUmISEFLhEMNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771315358.2385.17045610808905761015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52d6c13a85842210b0d06d6ef3ae1fb0b3d237b9af45d60eabc3390f02d71ce
Date: Fri, 24 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737713153
