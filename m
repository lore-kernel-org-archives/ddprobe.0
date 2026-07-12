Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A91149DF1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783855714; cv=none; b=MLdPCLE9eX+BARvcwCRacsKMPRPYLh36apLxeZNXiDMeMaPoZhEpvur3q+K9kn+6Qte51sIP9vKd1dRUAKc8cZqI2ySB21G1P2MzSgwLDP1T0eMslLls2aL0ZQ0zX0QMP6nX/SQabY9o1MxowtMhZRTsV4mpcjGEY+Nxe7ZO+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783855714; c=relaxed/simple;
	bh=Shjlw4NpukiGnwX49Kk/OtLLy0zRNa3bLzJNlVng4CY=;
	h=To:Subject:From:Message-Id:Date; b=X4dfJH8lwSKzu9pWFSU2lQ7lZmYXxlAgibD2zxTM8L8WgvyukpwpnJn0VTpWeTUnP0+FsqETBhJozYdq0eovyZ4G1yBjxHU3vDSrs2VjdRZ0tPne4EuAjFIC98lgtPQa+8rYIz7JJ1+vCr6mDPdXaoyeqLSEDM4IowOlSn9Z47U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEcgOdJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEcgOdJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D96C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783855713;
	bh=Shjlw4NpukiGnwX49Kk/OtLLy0zRNa3bLzJNlVng4CY=;
	h=To:Subject:From:Date:From;
	b=jEcgOdJkBJgVEfh6pJwbH1ltQYKw5X0e5FATZGDMeP8zJdFhPAuNWsVtaXIbWnQoL
	 FzYq1cGEowTcpBw/ZOtQAcLDh8A0hJtM9jafCL2C0WOdTIRjU5mSvtv2LgNw/s4oHq
	 nZa80OMAfbrFzL6Qn7aSJ7CCeZsfPAzyMCrnaAwqFHE5IzlNoVmCRkYHHgvBQra/dA
	 YGjFFxSLS6leKiI5AzwzrTk2gofhmysr9y5/xEV/OO7CBIV9BEAEcPaTxxPuijV/L3
	 sgZrmdRhi4uKghNbVJdyJxpxXuwTZZcqalL+AeYAkT8JVG+gSsOUrOaAKGHy/p7AzC
	 xwPf/6L6fKFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB824C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385571368.14128.10297951850489964155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a52ae6f7af76cc0a7c2302b4d6b8540d09f7c439a7468b78353773faa49061f
Date: Sun, 12 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783855713
