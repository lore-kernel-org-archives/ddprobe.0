Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA47A23
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718293103; cv=none; b=CaFfHFR7f125WmHWXUAzI235J16ogJ+YIg3fRMXm9EvyhhnIux4uq3vFgO0k5GzSigUefvnSNxAR3P7R17yvjLc9XNUXQbdkV3Evhz1nLu6KpWkyErtqyQFDLmB45WjYtHqbJfGiVDfn1VJtsYH+xTh6Db5Q0VCA3nJGVv6SrJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718293103; c=relaxed/simple;
	bh=DGAlPcJCKWhJZcr4XzGpDp1yF3wpmkT+D3BCto9LafY=;
	h=To:Subject:From:Message-Id:Date; b=QEVCRw1iPpb0ZFIxE8soHcCeLTs7BJ/QcJ35aZmmn/BUovLzh0Z88YPR4LUTDT0bRcZ0rsOJJjI0ZtWy9L8heg0LdghaNDeXajVw7s5etcIdLvcfsL+PKzRmUFnipgX4xbtok/cynIBJOjI0DvIrPZOB+BmszznxRj8CKw2llMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9B4m0Ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9B4m0Ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE697C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718293102;
	bh=DGAlPcJCKWhJZcr4XzGpDp1yF3wpmkT+D3BCto9LafY=;
	h=To:Subject:From:Date:From;
	b=h9B4m0AbDCG88vk27eMBlaDHcPhpuNZrQENMG46gxy5Ifjt3Iivmvr9NKGlWenbbd
	 AC488tyCGjGosVSu8Appn94QJclhjHGdI9KOjQCjiLbmzICTS4Ko4Vv6DdpQrQ7IRN
	 JbhrgsCQW2kFjAMIkvHjt7HGJxbBDhe4Rk7UciLfO1jYFrsblYhjP1GXh+gPfmxiLE
	 N6G7kd+XwMhlmbXhWfQwajezfPl8XY8qpvw/dlFY/XIMj/ezINQd0mEhvyLNusAL8C
	 D4nBRdXn8DX5r5ijLHlnJJgQHzBQghJLmzMaXuJ1T6alzPnKFBx9Fnu/OBfptF2tbE
	 S7lkFXfjCMP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5F4C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829310277.15163.18336546192999817939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0ee86bd12007ba7f8fb99d1d6ea5b7cfc6f00f757593c65cbc581f76f5e811
Date: Thu, 13 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718293102
