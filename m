Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E791822CA
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721237123; cv=none; b=XM0iI1nTu0kqTH+VjwoEuN9tVUicN793XKV2KbpLb56m7aeUVSYonpbhG9Of3e4nxFIZC+HcegUIK1c86rvk9lZr51wopVyq3j9RiQeFbuLuyjo6PdIjNG2yqPfmRevn/GOq8xsV4c2uFrwzjVs88TkoxZJo2/dpBYtGcBRVwL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721237123; c=relaxed/simple;
	bh=GDKT4YTaeSiQrff6YjKzW20bODHVomcoqXVE213Me80=;
	h=To:Subject:From:Message-Id:Date; b=LXnPqz2qghM4qoMpCcD6Tha1Dy91Ukqj39w14nmvupDo6FGBsBc6EnMd8tOOXRlVpKcHcBd5Yr9ZFSAI83WRmkY1xF/qHP2lY2IvEOC2t0aWrAqVPLadawDTQctn0u/MPZHd9FsQil/P9KkUICEY1MlHPXTt6zLi42M+uU0yqLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8YJkLGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8YJkLGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA204C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721237122;
	bh=GDKT4YTaeSiQrff6YjKzW20bODHVomcoqXVE213Me80=;
	h=To:Subject:From:Date:From;
	b=C8YJkLGN+21xCzWZaniyZYl/S7U72ZKbQmaJru3bfc10MGpe1mMPeplKbmMWudRHe
	 aY789pWFPDkGmqvsEQPeJcb7cAp0uQOc11hs9MJAqwZ0SE1C/RacCnjlcdJ2lgzorb
	 +X6R1CwZ6kT4AFPoBpjVXIZr9/s2OVnhOwFuZKNPkvp7y4BV2QzaqOPmZacQiVlZz+
	 5FMuo5fjdd0rWMS1Gq/uBS1hVhugtWkMiza/pj1AXVO4iVhhhfBpn90rD5A2zdQVRI
	 xJJn+NuTPqIy83Jhf35q8Y3IrDRAkHgEXmed4NOzFqygi0ENFxCQdDfSwM5lfTY4ru
	 HSjTcff62l/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63C2C3DA62
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123712280.27746.16463953596513995127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108b67d57493feb4f1c332fe9a29219d4dc999a017ce231bc54d74ebd9cf6183
Date: Wed, 17 Jul 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721237122
