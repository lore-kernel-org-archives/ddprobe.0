Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0D13AA20
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737899756; cv=none; b=EkV1HAt/LYp6cSTRHhMoWuWmbFKtOgx+/VK+qwepQ5IkaJ4mqd3mLSs+5MxAfP+wsSzNnOim0vgB8X7xd03nthHbUZIL4f5EjsFKC1ssg5V+acFQb2AD/TbsQPe+xy1ughr8YAyhiDTUEJWZ2wcfN8UIVTCKyM/+ZrCqxsLwAHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737899756; c=relaxed/simple;
	bh=tG/At+8o+AEjL+xy40uyPLMvzkbWsIsl6XlQBxiv8no=;
	h=To:Subject:From:Message-Id:Date; b=hvxZb4+DUq1XF4+nfa3KLzgwA1+dWr1EFsYnvTHDHg864N6IcC7hqbhm5r11F2bIvlureeAvuDF0i/afXuk+o4hwQ5+rh2tVFaFkroeU09t2/hiyZXBLVbIeJJyBFj0J7EbhMNabkt4t3Qrxvd/ISrYiXS1UsxT+/400bR43fvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctfDKPk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctfDKPk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F48C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737899753;
	bh=tG/At+8o+AEjL+xy40uyPLMvzkbWsIsl6XlQBxiv8no=;
	h=To:Subject:From:Date:From;
	b=ctfDKPk0WPaH8te3PZgCaC0HFw2tNfQ6uUkz5u48UtS4jxKFok6MzgRTue/aELwTn
	 ey0mPNTUOvA9zceO6UEXcRxaeY0I0/KHx5PPOd3nyXTZgRvD+b13392k8SQa9XCAOj
	 wPQdJ9ijwZlz18O+crwQwBJovPqxtauVtiheURlFCNV4fmEobU7fl2qdi4RTfGObes
	 cZezHOGYt9Qjggo1D6DDgy/D/dhzTZyHuEFfq/iPzFkyvPpP7XvabyLIhp28oX5Wtb
	 NWr91VjsaIpUFcV93PI8YjUHEoqv5+8O3XJ76Lt5i53EBXlRzt3PUIzrysus5SdXYk
	 k6cgflfhfQaeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789975358.20045.15894599627639446473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100312857adaac7d35be63a34417652e7450408bec458ec22ee30aa6750cc107
Date: Sun, 26 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737899753
