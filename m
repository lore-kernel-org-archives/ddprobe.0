Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B352571BA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759526394; cv=none; b=jEvZrA4R31rwkAeuej4y9gjfsInJR4V5fFlx3sqkMSsvklrN2NmlynJ8KO6iFsywk8pQFSGH1i4ZbsqlguleyYyOlBFp6gS2+7k4XPYp6zPytZqegHtkH6eOro/YYJtg7Z3qcggsoM84cj7rKocEMfe7rpmpyNMGUlBHy2/MWPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759526394; c=relaxed/simple;
	bh=BSvgrIdWxdQVmcPuof6A6zKBt4wfCwGbUpner7jMmh8=;
	h=To:Subject:From:Message-Id:Date; b=dI4XGtiUFJ0opIeuT8sOfBrx4BDO9OBpy/mTnZaHEXAN85RtD/t/7x7JX5guO0vOlUHnd28lDuq03amaudeYuYt3qr+zSewwqAyQ5EklxSeTleUgA+/etioQyZ1R9SUYVJQ2hlosEXlytKxibYy37IwXQtqRZ10mjdMFWnTUjrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnOim5sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnOim5sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759526393;
	bh=BSvgrIdWxdQVmcPuof6A6zKBt4wfCwGbUpner7jMmh8=;
	h=To:Subject:From:Date:From;
	b=OnOim5sq2+cyPwDGN4ZX396kvZrT3xmv/ILH9OXo9qJpgzPkhHlyXVRJxz39jehHY
	 zpk3I7NYaBrg6mK113IYK/Hgl709edi7+R833hWtWkJfHAj5CGSs/fngMc8J+LpX87
	 ctdaCpOaJXC103lmSZV+VSS2i7JPKlfjkE+s6pVA6bvOAfzwXmM3yVza5i2L9Rjgby
	 CzMinYVad0oiH0Zkq+OiECjxHnVU/t41zup+fvjaRgAdq7iSeA4zfiUn5xmFf6QHBk
	 mhJpObYLnGbJOrXQnkAWIL7p0Sc+4uP7pj73c4egwOV8yrgBft1mxcp4j4TbeeIDQy
	 2gMAGkBAjiZ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04CCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952639357.4424.16821244707452244285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13374f246745a14ec312664cf512ed30f4c9da0d0a77885ef06e74aa05eac7cc
Date: Fri, 03 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759526393
