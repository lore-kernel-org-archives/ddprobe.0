Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226CA179AA
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708768097; cv=none; b=KQepddCcAMClIFYkfsrSNCNaBiLSlMArw1s1KkhZ7UQkhUDiH85ea/weNxxBYLslEpOWOz9E5W84XgN6bthwKbgyVmqFKJUxYkZa94DCICalr8or4bdmbQL0Xg9h4xqIbDVgEFYXX4I+sdPxmsS5EyxVirUXygjRmMtYSF2N0F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708768097; c=relaxed/simple;
	bh=HhPu6nizWdxKBpf1lLReXs6ZF2R2STB8Rl+Ixbk9Dfs=;
	h=To:Subject:From:Message-Id:Date; b=e5Dx/wMNg1vrC0S2rx2pPWBobUKtNpE6mh9JP2Mzvpiq/g4Ra6dhZrtEDN4zBd/RtZbR0lTpamE+WlP5FwHz82Mxr2LckebbXI9vyFG2gErhlbvLBKHSoQ8AJDMXyvoPrummASBrQsVw5Ktp4sUNAkyyP/DTBaOX+wmCXDI/ock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRXuFGAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRXuFGAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E111C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708768096;
	bh=HhPu6nizWdxKBpf1lLReXs6ZF2R2STB8Rl+Ixbk9Dfs=;
	h=To:Subject:From:Date:From;
	b=MRXuFGAK4NvYZLmr9H/fqs4T+Itqfppfts3mn5ojC25GIjWZAT71+ry8GgnQzGw7C
	 qsw8FRw5CAaIXoTRJ7WvNCHoUoq2uP7RNzhiJ9yV0C8Cnd/HrpYKeAUfdNPs48sLNd
	 CZBqOZhVU0lMU9z/faiBH0OLTPEdF7Rx0HtdEZGYvuI6igkaBJQ7FWI9l53486VxGY
	 HFSr29OcH46gneHZT9yI/U4Y+nqN3IOh+qv2En1KhwM6x0Z2IVhiCMieC47ri/lZg5
	 0kwH9TfIKBQtzxvDXwcpZVQOw/r7J66qP8V80BSOGR7/1zS+Q7k4hRn4bq9+drE9v7
	 5SrB7jOKpn8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6041AC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876809637.1986.18434965905443745585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d813019b2c783e9eb2929cc5005a46aa0cff3cb192e311ec70023b7936dcc1b
Date: Sat, 24 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708768096
