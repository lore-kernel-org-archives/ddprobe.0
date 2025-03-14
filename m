Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4E1E9917
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741945734; cv=none; b=P1/BJ8U+x5LvFia4piCf/JX6FjSRZhmQzNn+JKtEGbTAU4SqZFIeVX0KW+88jeomwGerVlqvN8DQeD3BybFVziM0N/yqZO7NccrRGIgvpBpYha30i6XCywP+P4+kXdcWCDYTRquWrrJKfOOSrV5Der0eeO7SiVFTlAmJwqoFJAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741945734; c=relaxed/simple;
	bh=Feu7RrUhCOH5BUkLk58PXZyRXzORMwzqv6WR6QmOj6E=;
	h=To:Subject:From:Message-Id:Date; b=cAL5P96s/uo6+LOoAmnreaOqaHsnAu7BLPDquQFee5SXDCIXsiOL1WUjaUPicPs1VF59KK9mo1koyHDZt1kbrt6ErMAWdRzbXrtei4deJucldDSPViwfIpVXbeefD/PsW1rL9erMQnHArQ3FgNBXhpj322TNlEg8vostAgq7cZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXPZbx7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXPZbx7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2652C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741945733;
	bh=Feu7RrUhCOH5BUkLk58PXZyRXzORMwzqv6WR6QmOj6E=;
	h=To:Subject:From:Date:From;
	b=eXPZbx7gIYBO+OjbBAv9VwMzyGkp3fc10pyHISu1dL3yGZdP8xmNxBpFblNVVVMDo
	 6QgHJ3g4TQqkjKpjQP5hxElanN1QPprK0td+aYuLDglZ2/meOvCgVQAAI1x2yEm+TR
	 690hEZi240T9EOzAaNXfBXwBvPAAtO0NTJoDDRJ98LxiOXqA8rfSqSERhviuksgLfC
	 pABQ8eMnGWIOQoysH0/fV8wpVr8sf44Mvgi7nwPU0b4hWDqmwSJ9YBdnfca1PGIMpp
	 dPki99xo9qQvy7rVH3FVFqtcwigesti8jMc9sq5K9KBgBa/6LXTAMxudwgE+qbWbzj
	 H5/11zw5lcuaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03BAC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194573362.8138.8820971006044116364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b890d0acd0ae7fa5e77b64cc60a4bc88301d74c9bf7f7b8af9086c834bddbe
Date: Fri, 14 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741945733
