Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303241E04B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736234154; cv=none; b=KsZcN3V87EGb94o5Dk+0pNqseVWnix8BCorjwAR8QUFc7JgYIdgNBEo23DISRIKEXtEPz3xQSAQGw5y4v84qyG5PjGWyoMj7ldAEobHmvUM97K6hIrZZjb0LSQLF1dWsnWDm/bT4IfqinNNGbdl16M8hbZMyqEgcNd9TUxXZDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736234154; c=relaxed/simple;
	bh=yNe5PToW9de2qlg2QpTRyQCeqJE2CygHIgj5seHczLc=;
	h=To:Subject:From:Message-Id:Date; b=dTO0VSs1lzo25Ff8bmeiY21VORj/HR+m0tI0lLwf56G+/gYTKheIe2d91qve7dCZZ4n9kmFpLh/eTxf0Qq5+KaZJqZqlt1XpbZYgHPEgFmNDD++wmfIhOOLvX9DQf2alFSNJ7Jc5wQlyYqmmu6SkvD3zcyTo8yRB7v3nv2wq2vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzUje70f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzUje70f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B143AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736234153;
	bh=yNe5PToW9de2qlg2QpTRyQCeqJE2CygHIgj5seHczLc=;
	h=To:Subject:From:Date:From;
	b=FzUje70fT3wHmH0twUut9zQ+XpD0D3UayJGByinqsPyHWR2utJQiiuUiveNO/wbvU
	 KcHXJyyNkNLtux5iuQTaHVfbAIeA+Wy9ByBjGdMVLiXt2Qa9ZLjQY1282HLT7557cF
	 jSytFHJoEXHt+XI77NXN76FG5Bx5pF+yvbVmcpTYKTut8KOBeDkbagBdrhPM4WPUpB
	 IrvbikGQx5Qn6rS/yEtjhha01SSdK3IRKoLYPUYalZRLmNvxcDAQhResMDXeHEM1Xu
	 Tz23JuFqmtnza6KeOIEseF0Xe4WhygBhFPoIefnBfa/wqg2BMwPdRSFr8bldA2hAJR
	 XcQo9Iy6BX6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A18E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623415358.14321.11719717581027533676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a384b2ea3ef9e69e921d13fe9d03c327f4ea8841af90e0a63f704bb709239c2
Date: Tue, 07 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736234153
