Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD23AFB1C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788503434; cv=none; b=bIhP0IY49SDxc+U6fTqS8Krhmo4WZ90maP/rdDNuXGgBYYyN9VCowQSnwk7QHoW1trPFnJcUgWYHwkP+j4URzBzf22HURywaA4fUxbX/GhBmyezMikB87+VKr4+NqLUQeUulqml4ntU6FRxzRL41cpv0bwcxYa1YZnBds6Vqg8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788503434; c=relaxed/simple;
	bh=ptfsA9Ef/obdoRsiGOLJ2SyK3KU/FGWnYoTwSRJrhD4=;
	h=To:Subject:From:Message-Id:Date; b=VA+kU/loZvsM1cdMickUiUamV6IF+oxBOM4qPDO1YlWdNB19LGdDDPmp3iVQYX9G1Xcm5A2fZCktZ54rekO0P0LG77u5a245Zw8cH6RUv9IaoUl1z++EV+UOPg2ZG4aI+JdcFKo9xtRN1wsoms6qQqHqySGanwDFU2tm5Q4WqFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeIsvm2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeIsvm2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF503C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788503433;
	bh=ptfsA9Ef/obdoRsiGOLJ2SyK3KU/FGWnYoTwSRJrhD4=;
	h=To:Subject:From:Date:From;
	b=XeIsvm2+bEImxDK2TNx0sjDMITS0D00EeZBPfZRFgGDIFTfs+t+WHeY/gHW29ZBGC
	 SGv9l3h5iEMhDuaEtwKOKIiXN7L7H7+1QFfCThhUKBj+dx3reK1c+eu7zA6Tf3LSS/
	 S9P/X/I0vS/Fie3iPbcJ5WJSmXCXFn2vPF/p2RQrQL1nYucNJ6/6jTct3wkz/kgqq1
	 rtkeO1Mn0F0p3PwP24lDEUrE7I/O3k5VOmXOi1SMOBiHBPmOJ0rDMX4dbPGunyGfpA
	 tAVpgn2GCbSi4rzlyYEA4PZ6T+aqnWan7+PeJeIS4t/MOk1FS87e+RwEitI4ikeWqI
	 AoLgBjh0ege2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB322C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850343369.24511.7738700889610092069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce647c2def3d0de84d50a4fb9ceae6a3986a6d58c568ac129f15040e8bd1e2e
Date: Fri, 04 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788503433
