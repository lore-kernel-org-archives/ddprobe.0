Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA622F7F1E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779073834; cv=none; b=IT6BE+hnIr9Jvd12XChKlr0DoFEM/gZ+R4GV8FhL/ULfMSiO4X7ZMcVzMwxufxDGuUaJhR7+/4ia8Ard4gXCykUQofDzwftFRSeNBNUia0nr2gRfrJr4qhYY1nZ5707v2SrKRFysji/PlOtyU6cZ8mbuSjHFEi12cMYpFYVc3nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779073834; c=relaxed/simple;
	bh=qVEBCDsYB5HAGTCNykg342FuET6nhNw521EB9uKXpZk=;
	h=To:Subject:From:Message-Id:Date; b=GMjgVF5cTh08Q52HbUUElr9yJQ6/HNkcKszD0cLG6sCP3chkXZAt3uAgZLMNI1OF6Nh1ogwFHVKRlf6x8ZKNEw+mbO6uvd9rFbXkIB7L2yktFdJZGJuSJHXu1tlSGrQK1zBY30p8eMnYujwhlshrtrT1gq+j/oFMNUEk0lBmSbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK0cbSz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK0cbSz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB4C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779073833;
	bh=qVEBCDsYB5HAGTCNykg342FuET6nhNw521EB9uKXpZk=;
	h=To:Subject:From:Date:From;
	b=rK0cbSz21CerNKmfBWWCmEglW6DUJjRK0P/NujmQH28pxXkZGeoJr4G17nAarjvFT
	 6hkJRFxVenaNRc8jkxaGPcLQ7vk5iyoGAs5Gd14ovEJmxEPo7/h/cNzBvxMM8q6O5u
	 dMgcPzaOB7vfvOkJOKG1p3bXqmdHiYPDhGeOzXaP3Ne1KHh6ZXTPAvtW0Vtl4TS71Y
	 1dM0vTy2ttmp0R6P+hAIpFtNgfIoTnx04+ifJcJsf31VJY8iwYxiHQacA/CTu2cKpS
	 8ZjdBC3sXjPLvk+eLupwHzF7AdKl9aK+UVA5SFWV6w2yMXFjtZh9lE0FlLMVQ4oazq
	 8kKeOUyLBlldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DDCCD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907383368.32146.275673411259016913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cdd8bfc66dd0d3d9c46383349f0b9894f102a76ef54cef9f7bb609b0911b8c
Date: Mon, 18 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779073833
