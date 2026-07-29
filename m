Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337BE30674E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785292234; cv=none; b=WAoPnIL8SKmJvG+/GP8dLvEVPfRnpIhEqb2HFRApDZHRKft53A03PVwoT1vn8GFduZDvRNcgNvcpMwOgUIqRn7nAlgaI2Nj0keL2qJex+3a9oaU+/pZmHEcCcH7o/H99gz6vJZc984M69WhGQFse3RicYNsM1PHbiatXiylhFnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785292234; c=relaxed/simple;
	bh=XurlgmHpxDLiRVPjIfQ72fwHvzRFyoS4aDzAgf9Pl9s=;
	h=To:Subject:From:Message-Id:Date; b=nSCgo7lvZodzA2kq8iAyI37tILJlI4EAscngts5dxIgf61HRo8mz5kOee32SEEvph5EK3NmsouwoK4T2+BCUD5fhc/ApOnodwYWixRn4PG6xUwSWMhw9e6PJyv+ObG19RWePpkY49NJkOgj7L4dr6hHTU6WSKFrozp3K0GNEygM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kH94PcWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kH94PcWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8FEC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785292233;
	bh=XurlgmHpxDLiRVPjIfQ72fwHvzRFyoS4aDzAgf9Pl9s=;
	h=To:Subject:From:Date:From;
	b=kH94PcWtFvSOd48LZwh43dw56ZXMnnXGs+cCfE8Tb5HoIT9hUcWd0dmf687b6NCwM
	 OnwHDIXjWJ4Bw6u+1drhDKFo4+pbe3UcJ1GXzwcyNLZSkrLsDQyKiuUG/AYB9htBC9
	 j6FGPquPWR+56xDOFyk8ptIdcxkocx22zy+tX0aBm4/TSATQB1E8YC7knDlwsKDYsQ
	 sSXsAl77qP17IPzdF/fbzMe5Da+vsatcmhE8FeUVge/TiWzdTt6KW13rcDueoj8I0z
	 JzEpunpVylh0s9OxIi6JFDGtFN3Vqw6C9NSHVEa+MvMQDxRNrKNicO4K2KJ51cUYgk
	 VaPyd8BA+xn3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EAAC54F52
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529223374.20961.14304364376379100068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8365e938c2f2dd9dcaf1fe9477ea4478026df3722ce16e61bd6c6418931340a1
Date: Wed, 29 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785292233
