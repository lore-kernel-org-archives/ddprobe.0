Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1258F6E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753467594; cv=none; b=m34pX+w4TG5neILRhc2M3PARX2SdUwx6wMPMN3qpAQPqY1Z2u/x0JvNjkZziOrXdcvX/e+l/627lWEgu07z0Y19qbFeL/Tk3HgWaTFMboyjwJi/Zc+uBnFZkDbYRV8+AO1/oxFe+BxxmWnKbMpqnyPKYaH14EDfwynxuiiv9e5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753467594; c=relaxed/simple;
	bh=obY85ncYk4RWI1Fljph00L6ajnWkUDbQyiu1x8k/Nts=;
	h=To:Subject:From:Message-Id:Date; b=EPs9McpPl0eruxV58kW+OrE10UVqx5N3nKzEM6NAfgw0V/YHVVZ8utksH0Sc4LS06XHkhkCnI5slLUoRukRd+WSK3pSJTUDmc0He+SONdKy9teXKcNyWmTMbbXy6Cnz23MwX7YPQcHtIi2EAB9elU3gobkfYgHPx81Xndl008A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C11uiC7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C11uiC7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753467593;
	bh=obY85ncYk4RWI1Fljph00L6ajnWkUDbQyiu1x8k/Nts=;
	h=To:Subject:From:Date:From;
	b=C11uiC7HezXs0jL0NxSVNM68Puyel8mRNZz5ddxKMQPWFksJaNJ+R2t01LXhYO1oG
	 AmEyonu8KAg0gVPsg+NC+iCT2yHsUe82lQJ67h57wezcLC9mpkKOsbWdKbe7YlRiwH
	 kJFykFRcOD4hAeEE5Y4dYT0ko4M0iraE7A4gax7squ3Ap95dUYtrCxKCOimZKc+ti+
	 pL/lQsLWjoVpp03R21t0n/gqtiGPqKU0gHZYFM/gIJHvdkqDJcE0/1DjNI7IEdvBiP
	 +Ecll1BeailSAzx0Y7GwCmqKP20S0igoXSb/A+s9NiBpKny581iudqfM/lXfwxVSsN
	 EY+ZG40LJnOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A3C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346759357.17565.8493604189758578368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d129d3a2b94bfd79b8289e2da8e78484a4ec778dd7755e8ee67845ce15cef48
Date: Fri, 25 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753467593
