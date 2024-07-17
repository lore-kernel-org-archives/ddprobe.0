Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4371878
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721213123; cv=none; b=r9qa9pJ9zFlq1rzaBOh9SDY5QOTGDf5nSoboavcWT09+baCwyjML2C+lelSS+ZSwYkCEBMlIPl9qu0Mm0haI2cx7SuetUxTeUFgkrWEL+G1m/CNkMk3F+dUcSg0LGDaZtcU3QxNu7HLVzrC/8xXdM3XMJNRtRSaoaEMOCDi0wiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721213123; c=relaxed/simple;
	bh=giLGQLRoKm6xCawlWBUGoiuqCD72uNKg2mRktNFEsmU=;
	h=To:Subject:From:Message-Id:Date; b=HmOXMACji9mAPivc/PaCZ3IZ2lYEuMpA4VFdjkjx/UdMmsha92FzyGe7Yy3S87qZaAgMZJH0FRV3NR2ltwVV7ocLj/otHhdvvhbfs/nBGmxkA8LaP1TZsVD9FgXUf4EaAMsYjt/dNOzWSpsGm+lzXHs/rob6iDP6Q36eGWRoE0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piq3w6fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piq3w6fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE398C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721213122;
	bh=giLGQLRoKm6xCawlWBUGoiuqCD72uNKg2mRktNFEsmU=;
	h=To:Subject:From:Date:From;
	b=piq3w6frYcOA/wpkPygK680K4799Vqk6PNXL/AjGakNCIvu9Tm7eEAHQF0q4IEA86
	 wk+MIE7rCFIbpljwavEIiw8N37NU7onDwI12daOLIR+OYtZCFCsUt4x/wmPyqw5NjJ
	 7Y951WBKn2lMu+JxKhup8CMUnlHPhhQBDPpkY4KlXBelywO6yrY9P3062BX+5x1ms5
	 BRJQyLjPxPljpORCZriq7DBl/wpxemoothSAIW+0mCkkeL7y7AFeWW/7QHmkzG2e/u
	 gAumuqaAXchuXsOXg9vy4rgNHKxaHtr//B24yGMlPvigXkj/SZL5bXq/8K3dQCZ0tE
	 cuSx578enpl4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C654DC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121312279.25360.5648236995802783102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e8076b0e188ef1a5ebc9abddba85486f9e4d2e1304024c920d8271e6a7ae9e
Date: Wed, 17 Jul 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721213122
