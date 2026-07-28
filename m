Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B4135A53
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785201034; cv=none; b=FE1yb2+00AkYJrErbpcymnVsjowTOWSgcYciytLinjAZSi34T0OY6d5z4o5QjAMDh51Ip2nSIKXCj2u5b/RrmeR2cZN3ltQ5bJ95xly+pDanRld/6P/m26zCqpyWBKUnvyhXDFJLq3KvXABBCizAXF0Pv33QJkFHt7rG3YClFIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785201034; c=relaxed/simple;
	bh=Ohz32WeriLFRC5LzTd2AH/vhw9RhRg1bC6miM0vu2QU=;
	h=To:Subject:From:Message-Id:Date; b=j1dyxTc56x+Cj74g5La9KTQ3Hm1sTJKkE3L9qaKVpCWFek8OX8U4s77BIevZE6uXS8qKAR5ec99okjRcgoUTKMJMDC3PSeR0T+WLEiuDizx+7+bRREqCHyjh1bZjARalTHPfcGYX02U0Yb8mVg5xJv/+J9ymSCZxmTJjMzOQ7Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiDSnZP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiDSnZP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00F1C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785201033;
	bh=Ohz32WeriLFRC5LzTd2AH/vhw9RhRg1bC6miM0vu2QU=;
	h=To:Subject:From:Date:From;
	b=kiDSnZP86uVGYzaebzBAC+7D45ymDz2BgmVrfh+E3ZdmFLo2j9BDRliKs+kf1icxl
	 0od7/qNT7U/OBo/I/hqtP42iu64MvLIYy79hXmx51HstVSr7XXCx/DJ+Bp6FuFp1NH
	 WhOxKc+WU5c82EXZN8qc3er1Ob3MaVDaTgZOfUOiz2mOCFUrehD5GqVvmVW/7PIONL
	 inGRZyl8BnDZPMUFMw9+ZJsaEmE/G1hiqicg5bgSGcbptwWgqXKC1RcMFhAb8r0imw
	 yUSW+JuuvQEAvymr2v45NuIppNd5oNuWNiYgujnVCoClSjTLFv0Y2V1wric9rxElxE
	 DYRDyiHfuc4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3CC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520103369.25077.13899381055385638198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a2bd2c1ff3c5fdd04f367c01cc6e707ed1449e53a435141685b8fd5dc3b85c
Date: Tue, 28 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785201033
