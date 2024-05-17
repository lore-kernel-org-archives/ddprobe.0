Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402D179D0
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715935343; cv=none; b=a5Obdl/c/zMBgT176TFwZcpg4H1xTONHaIhPmh4AUWa3jedpLgrDHzZVbdgKj1vJN+qvb/aR1BlPQ+TTFdLX5hDnpo7uB06WmforplwAiQ2N3mpIIRECPvG0L1jmIc2E8zxrKW9xydAuotLTI+WNgUx+Rgz2mkx3aYkTy4tZahA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715935343; c=relaxed/simple;
	bh=8CZ6/PWRV99Afhb5JBgMSqTXX/VN20r8qVT1sNPGyQk=;
	h=To:Subject:From:Message-Id:Date; b=MiXxsmwJ8mcYgAvkmFtMbrKR1CA6V5Yk0zNBSBLgyS4PHW2KwiCHvpuDV1tUXEgzNql4+PMxVyNA9txgzNfm5UjYN8ItFWyMwzphhsyXFQIundHTrQ0q7y6ZyDrpmwHm99bR8Dg/C6jAEExRdX1+vTQVFUUgodmqgbA3/JvH5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OynwJ53v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OynwJ53v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBD7C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715935342;
	bh=8CZ6/PWRV99Afhb5JBgMSqTXX/VN20r8qVT1sNPGyQk=;
	h=To:Subject:From:Date:From;
	b=OynwJ53vx/We42wST2Qs23sU28tPjf5kSP34D/e3L9VClN/CZaEaSBK/EYVMJwvod
	 aMg42kUmLiTQ0d4IkYBysK2itaXJSW2Qi1ydGG9Sj82cVibfQp8wxKZn6wrihMD8z7
	 /Ccn+AE5Dyln2SGA4e+pg+YYJV2xzOREJHQHMki1AmtAQEHPBN51CDSJftBj8eMP8F
	 v35LSbK1yEBDblccPIntaTc5ipn6UnmZnsT5nNkElDwdr74FpAsIZnqorNcahmg5Fj
	 prM2DratOem9VshOM6jtaZcHyK7QiDELnTNN4XQFTjhnPDCbJ4o3prOog+kBoEFbBC
	 1V4YpOMye6MgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD152C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593534276.301.8634474630235796798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfd2cda766169f8f5c8cac2accafc2030f378c2d90f49f995974d091012ca3b
Date: Fri, 17 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715935342
