Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B9429CF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720694843; cv=none; b=UbW3aF10TLo2HksLQVURnIIud3FDLHcYk3XFhfXmc66bDszdfcq/Fu6FEm6yfPaZfbiUObHeooR+6swZinqe2Lyec7IYPs7VRCJaIixcbNWSulX63HKYYbtsCbZJtvKKzECCY2NZ3qII9ei7IZ6tMv828Hs2MCbxWmi5Nto2Nsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720694843; c=relaxed/simple;
	bh=Qz316QSejxBtc72uBY0hjElB2HK3RoO7Slc/MmG9yiM=;
	h=To:Subject:From:Message-Id:Date; b=slbo0VOXknRPH7t5+GigKchbxtf4ofQe3deoDtrWb+Tyue2M/u91GbWGPqkI1UynGi0oGyut5avmdqz7XepcjoHy+JW8IlNWhE45lpFVXlFL3X1hLvpB4xX8YgTyzO/5u0wpyYWSBQBUX0x6lbO19Sl9cTuiRlP2lIohPfHfHhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp2rTnyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp2rTnyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5830C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720694842;
	bh=Qz316QSejxBtc72uBY0hjElB2HK3RoO7Slc/MmG9yiM=;
	h=To:Subject:From:Date:From;
	b=Rp2rTnytwV/Ix0ecgbbk3OE2WKaR65hnQLKi1XyBSu/k4g8HHoFqzdcLv2v7qNvMl
	 sTNW0Qkf63FRUSQ3Q0OxOYKEWLn7XlmElTYPHepYxoPDL+kYxoIiXzrNvZjMaBEZ4c
	 UIkt6S1nKAppNTmhdHTsc2+TLIf09d3hjRYd3FxCMcGfrelLI6woj4H07YLa+RMm7h
	 ZBD+DZO+JqLTzLZq6ssTkYAhYmpnhB1rsqYjjzbpzAEnxwfvpXr/a4Rwzv5iKsgIqA
	 lbaK36hyX/HFII4xCA9+VIXsC0hLWHZdBK4xQLTwfkd0F47nQPkN5e/UUO84AJ4p18
	 JxdboFt71Lc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24E9C3DA47
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069484278.20400.3419151563134012992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a810df222a1e4f126e4488c8ab476437071373dbf1f0b9db529bda94b260f8c
Date: Thu, 11 Jul 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720694842
