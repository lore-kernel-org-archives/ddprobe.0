Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A94C1B86C2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722064554; cv=none; b=R6BJJzi8at3Af73DilKVTgWFCT/LrGxX/U5uVTmrwZ9TDzDaaSnpCCn/Id7LrdAYe2lXWmQ3NoEXUYAWHql9RLG1Yciv5sbtWJ91G05iXbTKdH39xZahRQQAdptPK/YkhTBqrrWONt9i59RYi4YWLwY1+Im9306rv5tISF3TlNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722064554; c=relaxed/simple;
	bh=l+5yj3Pvh+fu7DU5imT5fuoqCI64uz1wZcNcwVhGN6o=;
	h=To:Subject:From:Message-Id:Date; b=ph9J+yFUPHRXGmZ48HK5MsPVyLkna+m9j3EpwQPB3qJqa3HMsnVXkiggpkH2lSdCwfTDE56XCpCyOqbKsYSXIsUQkYcpfFIl0eBSFaQZAEu1Kpzuwq6By1nOb9IOAyDOquGPtvHExFVNbiKDl1fzXLwjPta7vS2MboPQzSJNk0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCjLP74j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCjLP74j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B3CC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722064553;
	bh=l+5yj3Pvh+fu7DU5imT5fuoqCI64uz1wZcNcwVhGN6o=;
	h=To:Subject:From:Date:From;
	b=iCjLP74j0BSTcbyZTiirmNUjgg+yNvem/A/yJPNlBLTUzq4LquQ2zenpKopHI/Ixq
	 UscxiYYZWTNcwi03eRjRjYkil8xlwmvnZBwDBD/EUPCwMdQVhfzkSlm7NEl28fkNbX
	 ybv+K99QCjbNXzHt+njqWloN0zTo0J8fZMyV6H9UF4j+6Oe7Q8e7tMktJ8IZT4Y23f
	 9kNgHeLxjXIXlp7TanT0DmacfileRXUYh/37tJutI0sOsSnBIUunRZx61Xk0q23//5
	 wvIbxl+InUQWd/f8O0TZ17FKASBvn81+98VGrD8oIvd7cQTPUsSGRGTy3TGrw3AVqV
	 eNpe57LUpzqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E23C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206455359.31754.15372665187723472144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdba90a8ecfb8db0b4cffdf9c5a2a8facad14eeb64fb25c0186844b0c8dcbc86
Date: Sat, 27 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722064553
