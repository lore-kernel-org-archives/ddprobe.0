Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379E02FFDFC
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789000834; cv=none; b=CNjld/3f9s/LWBpD8TMs1VZ0hkrh/AmCvTORj7lEZJKsBHWOZ7fzlMVyfSM3D3AnO4yn2YjBivLwdzvrcScunrkhv4sdFk7rXnp6Txjm/1MSJMZo3d8a7f34VMeh3Ra+jwcU9xmoio6ewXM4lLgRybQGBNf7VHK73ACNI73Fk1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789000834; c=relaxed/simple;
	bh=nFknlgUbXDctsJz9lUOT+FTyV4xqjb/59EBmhDFrSYU=;
	h=To:Subject:From:Message-Id:Date; b=okP1fSAA7h6uiAouKQsbW/zfszcTr2DU9lGbGP1JWDwQ7rs+WGqKVxlfWaA5HLLDxHVrBq/TYBho0bMIEaTkGQrpl3fc96WkblieUhT5wuEIjqn0qvXHZ0ADmMoNTBcC+hC6OT1Fh/y8tJC1O26HbMsZeIe5m27UT8a1DJQCPqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwVCW/sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwVCW/sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3B2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789000833;
	bh=nFknlgUbXDctsJz9lUOT+FTyV4xqjb/59EBmhDFrSYU=;
	h=To:Subject:From:Date:From;
	b=gwVCW/sMy69vqDOPCYL7QJmc82URzjhiodySyHsI11j5R3uVb5k7Tr1faNECe7SJL
	 m4qkVhJR7roI0cvDxPDQBPHIjw568d+TCU0DQatNO5Wy6RM77B3IyF/ntqdhwmhr6C
	 l67qoiZTnCxqhQ82UHM7D17meRsAH5pUAXQfYjL0ehzLKrDyXjYNBz4o2+dmbhZag0
	 /UPYNYlPVM3lOb5qmbD4uSDC4624KtCpIy00hdlu42riYx9+TOxgr1hv9yve4hFdiM
	 V4dIW+9y17DkVFKEU+EOaOIxChzzKemMHHX26yRwfR8jtMRZz1d4QPwe9lr70usZ6n
	 Jd96yQxlpfbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B752BC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900083370.2354.9134464191664421886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4030aa5deb61ce37093898b014c2a28d15d37780b18cdf301882841849ad366d
Date: Thu, 10 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789000833
