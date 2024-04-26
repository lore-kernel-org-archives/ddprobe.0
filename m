Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6138D1474AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714141343; cv=none; b=pc17jZL1/OxBYB5LVmt0KdiCm5QXn8Gb1ImJpKCFGAwOOwlvmyVoOyHMk4tSzTGZGmuJSwprePxS0f+RL65v7XWm+ksftDN1SMFrZ+4mlKmftRMgZGU5uZE+rFGWwaLm4CP69xNbgBpLPhv90CoOWZLKbd/D2cI+47VnuEfzHpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714141343; c=relaxed/simple;
	bh=Vf4EVmXRsl81qtwWxjcycVyKI68FQUR2yzwF4RD0glI=;
	h=To:Subject:From:Message-Id:Date; b=cOG8HdHFkyi++2QepV1/56ziwWEDVwCA8PTl8Fac2ZX+HxYw35PGzndi8tMOzDlEukvNltEX9jHjIHhyEpMWaAKxM6T2FI3djsHKmWmR7kmQb9VMHrE5BBSHnlyFdMbIpYgeerCHN6Wb43LNo+VoPixW6p1uRQLTJwo9WnNLUnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUmneZB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUmneZB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5001C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714141342;
	bh=Vf4EVmXRsl81qtwWxjcycVyKI68FQUR2yzwF4RD0glI=;
	h=To:Subject:From:Date:From;
	b=RUmneZB+qgscmX7KJEOFeRKoSeg1UfusOqbXpp9G0e7stfZ+nK4bA3y8cW4/gMx8T
	 dGwMRO2WqbOTCVYM1K5k8Rp+hBhxpFhMZMVNu0v2Lk3xnKK5YqL75TUBAlV9fFKGWM
	 jJ37Cmop9LYYzZqVR0E1mjqJ0mvFJgDSSEiAkRMWO040yIo44jzvYuZFtU/6P6WWDt
	 hTm5hC+Xqfpq0ZC7ryoBk9whm/RX6BmoZyI01PKLEajxIqCseVSIgZBoyCz/EOEtjy
	 ahYgo+ksz+EdrHuXugYTcBU2SevrJHCP3ZPf17ik37tv11wyy44GeHuBKTDcYCbC/K
	 vS6ZX6nEIud4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D571FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414134286.4346.4780793378972152830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcd6bf3310411d218225f8316c7866ee329b3f504347a69e5dc083d5b02ec89
Date: Fri, 26 Apr 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714141342
