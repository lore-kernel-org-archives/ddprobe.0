Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C0237F8BA
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782286594; cv=none; b=iQKrP3wgxaABtbPBRhgW1FjpZiVfKDQArwJBSOwBvjkyc3merMhxMcqKZ1e/BeQd3201aLMIl9SfY3Zv1jKesteKVqu/9GGJcOosWLSRzxeqeVNZJVxFYTcGIJF/GuPlAH4859uBqdSzxpCYaS9VJ6LSRiTunOCZqr55Fqz4Mzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782286594; c=relaxed/simple;
	bh=U0fqNm2MH62o2X4BsJy3D4hmz+3Ran8+aHSTpDs4zik=;
	h=To:Subject:From:Message-Id:Date; b=XZyMawrlRc4+8svJJpwFT49niOfXfK/WtkT4dQa8TmcEEfoMQeEhZbCFFnuTTYE6I42vPJA71VqrJ/ldQJn0BBKRp6CfhA5X9Yz0sEUIb8L7HJP3oYnKV7dgDYJDMx17YbIUM/RTwImfzuDYYx13GmdNTdwcaTYl0Nm1iG9tUIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVnfDjVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVnfDjVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2F76C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782286594;
	bh=U0fqNm2MH62o2X4BsJy3D4hmz+3Ran8+aHSTpDs4zik=;
	h=To:Subject:From:Date:From;
	b=SVnfDjVRRdbtBPxNzIbpAaYg/udLaACfUf2RqoBASOncDF38DWiGjFELg7wMYg20I
	 DXwSs+MrwtMZjO0LkCEVvZHzqKdfy9wX9c2vbKpj+YeHnY++H5yi0LVGP2WIF9Or/F
	 yPf7WJwc7Y0Xo+a7aEkRqjGAFoDzUFLxdbvLacP4afDbEj+BYUYkinBbz8fHGskVpm
	 HTZb4aDf1UWdx2mMx4eRY05fJF3nADFdvW0alQy0zv0K786AQP6RdgJVso2JBujZ8R
	 Rn99uFRjw8KfKCH++QWpQmeuRjqIMLNH31ldrIDlB3YWyoSRoTnvmfyeW1oFv93ntB
	 keGMGChbknTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4113CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228659379.24900.10601940425214906885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edc3b7c7530ea1f1c701e41bf89c0818751925e453826db859753a11c2cefbf
Date: Wed, 24 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782286593
