Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA41A19F120
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750717193; cv=none; b=NJIn+1ikxx6sH4XHz9Fjm1NVaJymkcPPfVD32whdq8zDMUpunP9lRco5A4R6ppzCklqSPZf45eiICFG+XKh+CPn6RT8hwan9jDfVF8koKHaDBdJk1dwX+5bI888+cue+WIPzzBdJ7XPyrXqnRry0PJgw4/ZBNFvGemgcIFtzP74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750717193; c=relaxed/simple;
	bh=U+jHDpyckdhulCo9Phbx3yGR6Hzln3jEiJeZPgBs8i4=;
	h=To:Subject:From:Message-Id:Date; b=Y54kj0AHtrlFGIu5GZDjc67z+7QoNFXtANMkv31UrcLMKfjkVynNLjuqyxI4MCA+NL8eGes0n14YjafPG4LHwbz3T9RSQa9mb7QgO52yB17UtiX3oCctEOy4gqVoTQI0iV8Jg5RW5EwE2Q0KzZeDWOAln7k2hDyA3OUjJxUqDeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HchBFw+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HchBFw+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E26FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750717193;
	bh=U+jHDpyckdhulCo9Phbx3yGR6Hzln3jEiJeZPgBs8i4=;
	h=To:Subject:From:Date:From;
	b=HchBFw+s6rS+CSlP1oqUCuLXOv0hYJC0YLLsD00FTeHXLvxCwGtKj/5GUtQ0ILomm
	 xMTBOQnKsD66WdLRb4gNUj2u5tj2mBtVYMdzYSRHP15+kQixKYGvvaLHIf2ZYDYb7u
	 VWOVD6ZKFwoxyyh/S/c1pZZ8kdDM6L6lKsgYfyw63XmqfaIM09JKGmKRCaW9hJCfhi
	 f8LG/PNRtCHLLy5g+KefCnGEPY/qHutHXdPMlX73Qdw1rq5Wi5t5G3YN0jRCsGjuKI
	 /DguFap1hXVDW39WE956eRmLHHKdblIwKNtjl+Hed+3QGpAbwmc6Uz7b2CMbpCgD6n
	 1qY7qtCNren0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11DC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071719357.17949.5607189171012219404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d080a0950e32aff92c4fcc9a6b5c60340c2b6ba4e6153233bcfca52e78730698
Date: Mon, 23 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750717193
