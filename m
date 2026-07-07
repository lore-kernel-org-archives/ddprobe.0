Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC21F936
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783383514; cv=none; b=IpN4pUABdurwsiATUJsSehAtX77L8Tt4HskoAlXSmV84X5O9NsQsg02p2ZuBH/Ac3dxlzIpwkk0uHvIhrJO/o5EyfOe5XD8i2XujWPhP09V8nawFVbm/Axy8yeXhWgDXESwpSfyxG8y+qmGXNxSaXkOXWrYoKHporsJg9h0kH/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783383514; c=relaxed/simple;
	bh=B3Nq+ZT0Aj2pEYILdjL8hNdqTORmCte5TxZrPO2NBaw=;
	h=To:Subject:From:Message-Id:Date; b=c7vW6NFf5Ce9J6E5LBkT2Z1VmHElY2Q+tkk/1xCgPw0XqTEiWljMoECoQ1TQJjWBqulwTAKlcHr6Cp6RUEMyjiWzq+ZZVbG4kOkkNLz5/b3xgbNkM5Hq2F4gk/i/egO9nuqqd/ATXlS+wl8Li2J/EBG4EQtI+ya7DRXCN1yT3NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmc4quo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmc4quo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC410C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783383513;
	bh=B3Nq+ZT0Aj2pEYILdjL8hNdqTORmCte5TxZrPO2NBaw=;
	h=To:Subject:From:Date:From;
	b=qmc4quo6ab53jW6DMVra1QLCIQ7JSmtStbpuIui5IXitSnbGQaklKYqy1wnOBfQPd
	 jMOhzPL5Xnmmwrk5pI1mbMCwMTiDA7fuyrwyIzcPiod//5ZxNb1xTKWuHXwb4sPQi6
	 /N5SQ8FkoSYntzWnsbr71e2/9XC5tNAoMaf60FflAMk9eWMaAu5chFjq7xvES360ut
	 8mYHnfVaPWlznhQ51IT6BU4/SqhEMTgBDTrQfn1q/tWLP+5rZot04feVmE88sgxn2Q
	 ZHhE9zQXi8bjrcZ8u83k3vp1+uz0lY/sUBsZhQawKbkrKQOaQ8bQFGzfc8Im8ORCzU
	 0/ZgWnvfSqBeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A902FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338351368.18094.13861711533638126867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c316e934aecac54237adecf7ded366faff3633d2276093efe68ca539a8b298
Date: Tue, 07 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783383513
