Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E9A2D7BF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737167754; cv=none; b=LUcyciFtJEZytN1ep67YBqzyZrcyD7+Lgu3VtUQAEDJIVzE31O0588NqLqTDiATtrQ+q5LrxJLFPUlySQozdVFczUPSPW0AUkwwgKYXqpQjbYn+PS5EUX1YsG967Gz3xlnLd6BX/uVMItcZhJSOQScV2DEboxSgsjq93iQCK1Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737167754; c=relaxed/simple;
	bh=EOas2QQCzZU2gxUBgDG2ou0cipdUUNDPyi+tkZrAgIg=;
	h=To:Subject:From:Message-Id:Date; b=StyBpwaAuYrJB+2GuAchORUNQISnaDtkSmKr3fY6k3e5PIGawn5BEMBpNreCeQkP9Ee2afPoAEpJzGT569Ud8d2Z6XgA3k4/0OcPt/7y6xnIIw2qdkN/E2B4jlg6ma+wYfnwxwgG4zUFQaCgidbwaH6bfQ37MnF/9rHk+zB3OQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8ziTuQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8ziTuQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE665C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737167753;
	bh=EOas2QQCzZU2gxUBgDG2ou0cipdUUNDPyi+tkZrAgIg=;
	h=To:Subject:From:Date:From;
	b=F8ziTuQ1Cl1zUcgj89wUC+X8ljgv2wlHXQDasYx4EoeHyo+BJmAv4u7azTZhFsSJb
	 X7b7FCnnoLqTgL5YDunzSjg5li8pAa8mL2zkIbGPOYhsNDIwEARP50cuzvBJP1mzzf
	 Wnrag7gSGn5KEuQc6PrB4YaKf5ooe8En9XVbTdlHE727jzs1edRhe2APcq0nozBhrd
	 Gah9nv/AicUhJb/qbRAXdSsISKIkFX8LV2ilPoB4uQVuxNr9FQq6r85x2K/vPN+/gO
	 8uQqzHlDGjEcLCLN4DIyB3qrcOqIumcgUx/d7uv47d0w2mcYnjNYrDazdqs0MXRio+
	 W3n/e3+hsAvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A55C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716775367.19731.5768749000079049798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e99a0ee1f46a51cbf5489120d8b10405a2a55534de64ca5a6c84a19e6484fb
Date: Sat, 18 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737167753
