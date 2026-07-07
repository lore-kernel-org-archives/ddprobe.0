Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8C143B6D3
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783446514; cv=none; b=CxBZKj9Bgr6rZcsAuP9LT+9m1paAjBKc2t+fiq1uC4G03wJb677I0EXTfalXl3qijgN5QtHV7xzWbL1ewkljDkf10HeMVnkb0Q8py9hzps7UfKkSytZbJHb2B/yfDQyBOfnV/uYNaWCTy95SdnigziKup73y+MteTNFBLAjNy4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783446514; c=relaxed/simple;
	bh=InWEoVUuI9oiuIqYvavtPJ+ztb4yGgqmtr2zUekDOLM=;
	h=To:Subject:From:Message-Id:Date; b=Paf9DTtXqnLUNxwzt8zDNYvek24BEytSBBwT8oXTF/YIfJwyIhVWhYrLZPpRZECifbUx6hyBPuQrk21kTvEDG7wXm6r0IBaxgEaWincH93tCbEKlzZxl6RVIxltWwwI27uv76E/ul+4sCwrxKn1rHIujHfilJIdO+zKFXSWnBAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P51QHglk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P51QHglk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF701C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783446513;
	bh=InWEoVUuI9oiuIqYvavtPJ+ztb4yGgqmtr2zUekDOLM=;
	h=To:Subject:From:Date:From;
	b=P51QHglki5PGsMebhHvtCAQgGmmowmx4ofCwp3Pl84F/4ixEE4GVQvIoAazMW+CmH
	 nkD9+EnkB0X7Uvq4fGS15UcA8uc9Kvw8hmaEu3fxST0HucFbVloE/60odOqrJHh4kK
	 3FuM519i9SRJ82o2i522XRNhhRiMm7CEL4z82lyykYwtfBgJx6/Pxwpp25ftSNPOBi
	 PhFedyqDMSagAQq8IrFswV71+TRPQwEEjTjki9EAxCwmhPy8zYJLVFD+yDUEVduuDz
	 zS/vGMqsPrUeYwYwEpUg+F22kNJvg/x0HRmUZZ3i9rIfv4lvlqm9kRFru5i96Kev4n
	 F1tAxaz6nOWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC590C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344651369.15664.11800534528582706545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91282ed8a7820cc099b2494a39bd5814c08918f6f7ae3b376846b6e099a625a
Date: Tue, 07 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783446513
