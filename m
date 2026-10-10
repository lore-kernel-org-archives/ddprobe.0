Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE6A1A38F9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791653434; cv=none; b=rzNCJ5UxjjKZVJ8m2PQcUscdaqukpfkvd0TskZwp0koz9reZP02MVY3h4en9QuOokkZEDBTkYz2cKu8QguOpTc3m8Zh0j0INvP7GvnouQmMNR1+/l98QZz/6UytuCfSMoyoufz16NUx44sK96Egq8WfNzdQaPWjkWIvVreRpV9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791653434; c=relaxed/simple;
	bh=F7QIbsUdklzZT6KyLUIeGEyqY4CpIwtutUDkZrmaU2c=;
	h=To:Subject:From:Message-Id:Date; b=JaxjlTiTM54j4SQniCm/mjIrbM8nagKGMdKc7CXj98YHtPssAXIUYJd7xi5XoaaJ/S4mk13yXfcVv6a24/NO/M+7vC5kXpUZZpEMRw0XR1qn/tEr5XNIF73J32479CVqEYpXiVeKtyXcYkq5dZtOiOy94bvvC47rm+ZaRhPVT0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b721vclD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b721vclD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F3BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791653433;
	bh=F7QIbsUdklzZT6KyLUIeGEyqY4CpIwtutUDkZrmaU2c=;
	h=To:Subject:From:Date:From;
	b=b721vclDWbP6eFE4jmtc0UguaztOsluNeNMplIrehHgSnvU6pEToK0XspDfZV66CA
	 1dgi6TT+PylVhzf6da4EuNyjxbhFmJBrp7kGv3oBtGyBoIIBw0FRjGTrCSSj8HcjaC
	 68tpB6YzivD8O82Du7WgpjvV2Zyx85KdRNOEBNyKXFDvT/OZiW6GW/Lxlnf3y6ZIsY
	 aRDyaWxBD2lxzbAq4R8/5NN0Ghosw1MFVmplr9KZZDlKeEv9UH7bn/iFUU8Jr8IZQk
	 u5JrbLNdQsBK1H0k33jMGQjp2uGNAm+6/zvPugQmUkOQzJ1xjH9pUnrnktxvNFL9Zj
	 nggWbqb7Ghf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB61CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165343368.11776.2673614802066327338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa4eb6c2ed5ff95f96e6fa111e37338f8c2c40d90c2cc7e68713f0675e14aaf
Date: Sat, 10 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791653433
