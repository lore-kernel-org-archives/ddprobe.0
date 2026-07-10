Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490CF436350
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783722514; cv=none; b=J5f2i4hHhx2DaWk6vzNjwYt8nf74Nn5WLAoAp/zCCMi0HWLRiKKtqwDDFy7VD+JG3e6x5LZj24IaZWkgNQuSRPjs0QZFe/SqhtM4fFVjiIjByZEA/GVMBKk9UmGrDwjrALp+n6E/UlPz4HR0GUB+LdegKLhfuTo3KiLq6M4OBO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783722514; c=relaxed/simple;
	bh=lsOv/6ELKg/Pr4snuLbleVqMlR6bXC3g9FlqRzZxX50=;
	h=To:Subject:From:Message-Id:Date; b=M0hwGdsxIYN7YIKhJ/UI5wk9Z0aFQ9qtcAoq3IYbqdJwRlHqxdOwHsTETd+QBYglpa2LpGAhFZXRXlndsQ8KR00zLN45BPrb3+wQxVVUHg3JLIbtAdOBB/rjo20QXogZYauS/m3v2h0rB3Y6zsxhSWBJE+LID1+HaPUeXQuU+sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiDNHVPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiDNHVPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98D9C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783722513;
	bh=lsOv/6ELKg/Pr4snuLbleVqMlR6bXC3g9FlqRzZxX50=;
	h=To:Subject:From:Date:From;
	b=SiDNHVPj0K20Kvxzub7X0yrfSy7APHNXXF6f0dOEeR9atJDCTsxUSAd5KyQicUgTJ
	 wOl6vn6VvPikVyvYhdg8YyKGgWk3woHYG5Z7PUlEd/vl5SL+Mu/WjhEqm0umJnRIuu
	 Hkrg7KGnirhoqDe+pxAc/8ZjdJF7w9S55sPkKOlNy9cKuHsmih19O77SLjnKy6QQfI
	 K9RVU41vYfVWhl5jhoa1lmHDE0yHl+iyMzzJ6XjwM1lcfWFX6Qqstu1z0x4mG/i0Jq
	 wu6FARATFX9A3b/3sVTpj6cEcmyESy3WGWBEZREvOhGam2VFQHZ9pwuTeNpNTv/chO
	 XTpF/F3zuXgkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80BAC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372251368.24938.15495894597406822100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a384508ea6fff0a6749e69f1d9d8fef23c939625407334a457fd436c361789
Date: Fri, 10 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783722513
