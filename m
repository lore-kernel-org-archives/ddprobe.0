Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC762F5A0D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766648034; cv=none; b=dri2qxP80Ta2wqZY+gu7B9ebBJcfOPsKoxRrCGDzlhPkjhYffg5gjFg/e4iJVp97EbttkRh48kR7yMtGIl+4SbsaJ34o1aNwFofFLqItIS4Hp/gPyVPqI0limdi51iv/Yq0ioO2xYOnl30kEYWk91wMLFIKyCDGamPVcbZ1XW9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766648034; c=relaxed/simple;
	bh=UCK5RumJOh3VhMNk6Qqi/036+3dUgAy5+xmiKeznxVc=;
	h=To:Subject:From:Message-Id:Date; b=UtDGwA9L1rSe8eYgG44fqpX5Qo9BBLu+0V4Pd+2++XWxdSNlrdAwDV72WA+cyP+eP23zddI4f82BaSwSOjdajsGBI2UMzMhUS9muHMujCYvBvOuqjoYQ209XUqSBi6pKowy3rM4juipyuOY38+XfxzcBkW0jJ+hwfyAraIPpo4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVj0Z9Ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVj0Z9Ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766648033;
	bh=UCK5RumJOh3VhMNk6Qqi/036+3dUgAy5+xmiKeznxVc=;
	h=To:Subject:From:Date:From;
	b=tVj0Z9Ourd96pE3mD4YMJvHinxFeXJ/Saj8LPNzrLM2xho9/k1nQBnFpvlyZoHVmM
	 YVVpd90oKE8E/8t8chCW+W9VnUFKwYua96PGm9bxpuuNYL9eyoEPyYe9AsLoLTgDTu
	 CnWF19zCcdIZ9Jq3VPoUrGXhokWYZhK0YKJdPeBeWBxdrCF538LpCWmYRWbJ0pZLct
	 AZxpheIC1Y/FbLyNyLaAShcAjqmvmI9Z2wXZu+75bigtgsASPQ34YYKaFdlH+gNZNq
	 Xztny+CxLsyRMCK7XsSCy3CplTRdLfQcneuK4XzDDplvy1ofBw0Obp0qZqkH3j73lg
	 opcCvNyhj66kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93CE784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664803358.20031.12065754484160895335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4717b6b636dd980e53ba205f7160aa8889dc79a1e06f1263c5ce0624bb39e6f7
Date: Thu, 25 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766648033
