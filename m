Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F4F1E51D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729562154; cv=none; b=Z5TOXmDe6kQZ+QzNF5NDB7WnGI6oy2euMev7897RSwEd0BTi848XvUrrwUibg62YAkUQ0pMadX+dQ4WdCcZbDPVDDDvnf67JYDxR8Zf7jWOEikhlcrtuNbhCW3Pdw6qCcI8XFDjaXm6O4bm155ao0RWcePsdHkGLNhSRWQ8Wc9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729562154; c=relaxed/simple;
	bh=DTFzla5lkd75cqmW8q2XNs8nJR88EpTtIJ+53qi8bgA=;
	h=To:Subject:From:Message-Id:Date; b=iiHzgpndVtduTKcPmY9d5CnmN9iMuG05W7exvu2aohkarC0Bd8oYqjDgmjOlObexJlHFI/QTOaL9B3bDZZ18D1kShcu2vs+9ODhF8oCmdJ5Seew14wlC4lkLL4ZEH1FERmCOdk7JItqGlHGu0N9R4+DkJ6BlhBgMT/QurCwnNIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfWMazHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfWMazHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6337C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729562153;
	bh=DTFzla5lkd75cqmW8q2XNs8nJR88EpTtIJ+53qi8bgA=;
	h=To:Subject:From:Date:From;
	b=RfWMazHs3oBcJyWb3r1ktLtLJsO4ueCxg9bT+rFq0mQu1wufwJ/hPhTUDUgRfK0C7
	 iA5PvTAy+CIMoXqbH5Gqbt2XrpoYGWcU2sjnNyP0CVEPW2RE48Dm70XNgXzLPlSjoZ
	 lzZefbqkKImIQLWwJ87xoRSMrEf5IddRmfPCWyUo55LI9QwXG8eGFaEr78pPYXYYs/
	 pc7QdaoJWO73IrpHtfEZ/KYIW2mxDwmnXSrWZqF/ueo/F7hW8DSn4/hXOOzToz4iJZ
	 eERYx/qsPPxQiIQn68EOeCaz54R1TV0NGedASajw50Vl2ckEyZDImkQcyBEoN19e8T
	 5kCnHGEnurCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FCD1714E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956215360.16137.12831501735522189068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab428976967736aa6721e403b39a5903320785aa9dedd7fb11b388739be50cb
Date: Tue, 22 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729562153
