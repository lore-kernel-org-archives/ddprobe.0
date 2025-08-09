Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C14126E16C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754737194; cv=none; b=B/+UJbCnYCJdoRRowQjtrRhv4LEQ9JzCuCqG1zXKkWzIprcdBNFdTQSCWco27EeJoJmqgRHbz+xAlbRhZTGBWbf9ZGC2zeQKbplzZDbnbK+6ufoVSNh4pXJqfJP7X3+k3GnNa4wEatxU98H5kTV+XG4PJidVB93bL7BUl62Usa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754737194; c=relaxed/simple;
	bh=Bz95/VNMLQfGSu9CwYlrY02Ujn9yu8dPS9/NUJJwYa4=;
	h=To:Subject:From:Message-Id:Date; b=g2Iz97UzmqtkzuDcgH6Dk0KVl9JFWXDXNVO3ZOsXRyeV31CXSuMx5304NUb6zvnEv5Xg4G4zFy2sUVuGSJG03RVnRKGwPVMU0lQ+mZSbNwEKsUdo1i4VV2d1HWRyE6SumxfNbhwdmNu5JtdL2hok3M4pQ83NMRF2eGJx8cOKfsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKq2a2Uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKq2a2Uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8EEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754737193;
	bh=Bz95/VNMLQfGSu9CwYlrY02Ujn9yu8dPS9/NUJJwYa4=;
	h=To:Subject:From:Date:From;
	b=AKq2a2UotqgOXfQVoCrM8apzTXVWNDOvdH7mqILE4V+lIpZsLAj7i7YkxMl8q15kw
	 1H+A2CCjqIiijaQtf3+uMx+kSt3D3EqP12X9G7BQyxz5lS+ooNFoNFgC39nWsOWxDb
	 4OJBZYQkBkUXK57x0ke3o2oL76L6F6O763kggSFZLHyLieH4dpY/lmMy7+4Ro6iU7H
	 5I0LNHCcMPBC9AqvRwPyGzoBbgmppEEJGcG4vBdH+UrMsgq72c7XW1fWbg4pvjvlRZ
	 1RupY16tokFdni1mfJIVkRIi/2GG0tcO446O9ru49TdcV6lSdXTko+wPG4jKm463QG
	 5rSiz4UbnY4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CBDC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473719357.15492.14487778015329625347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7153f2644e32c0e2c7d51e43d0f3ad43054351d11e38a2237e463550fd9e92b0
Date: Sat, 09 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754737193
