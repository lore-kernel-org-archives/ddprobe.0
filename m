Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A054340A4D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781522194; cv=none; b=psRGYIbWcJdZM6KBcTnAGYSVxf2KnqvBgz9fv+JpldNjnwOsUA1gIg5ILsDRhbiiFBO6/bbEobIEj3UiNBmUjYQwI4FhjeH64OaXfVxUl0+0uy7YwKi6I/ZrDI0kZFX+tFw0QkHnPcHbY6EfvbWqpcVs0Mhk61S6VEQDpteT9d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781522194; c=relaxed/simple;
	bh=BjAalumevXyNHtGdVl5NrerAg/T4kKdWpYQmmjnLAEc=;
	h=To:Subject:From:Message-Id:Date; b=aMWnWbNQ+0m4vI6vMYKcBsuiZSeBcvdUVRWX8Ks9BXm7u1F8PXrduzXC/Ag6EsRP6uywGvC6YWlKfRXx2r0+AgzIAwK+9HpGt5vc/f0m/zky2z5aiTNitK3br6F1WsFiaIEfShU93bJGtEOesnhMFhCsODiT8kVjoZeKQKniBU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgaPvxFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgaPvxFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB812C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781522193;
	bh=BjAalumevXyNHtGdVl5NrerAg/T4kKdWpYQmmjnLAEc=;
	h=To:Subject:From:Date:From;
	b=QgaPvxFBZm9NIIXUVky4gw8iKHnOCtkq6r2Ezoo5o/HF8smlMRmkdYvbs6RnOFTDe
	 1vLE7h+nLU9vMGQiVOQyg0rqXThH8/PfoCFH2gp9RfPac+DTQgN7dWUZGgDXEexiVm
	 Pvm/RCe9iQYwceeE/6z4NFM0jU676lXAzO312V4IMTkeAEl8cU7/DhGNTbdm8Sa/C8
	 Q++HbzLe9tE/mIuir5Fnzf9sLyeCHQ/IIAxJai2FxgRW94FzDo/nNsZ70L/D4Ltral
	 p/CDwcroWsuBvHKKIzypQVW8qKPKcLgp7HeQDZz/U12VcnwKxzeiW1HVWgiFJ7IF7F
	 HM181IeVHzoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE383CD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152219370.761.17788306962790146658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176ddd6c687e035ad0daf14fe663f7df0e590071f3dfed07d22db0c00e59000c
Date: Mon, 15 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781522193
