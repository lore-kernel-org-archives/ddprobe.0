Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7F34BA5B
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778020054; cv=none; b=WI5V2EorYh7JtG87g0cbnCg/Qe5X1wIdSpLvyBOX8daLze4en/wOItQL8dVIY5n+R6wXog0YIGx/0sI/Ru9mYbaLnINqEJRZY+9gp2qEiw01zFL0h70inFsm8tduEtuEZPbaEdDjkDRNjE26Ob4Vm/RABbyCxTUvhNHvh3yZBY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778020054; c=relaxed/simple;
	bh=8eLc64wJUokwgV2XdYWisClID9aNpbYdkUW7olqcS1w=;
	h=To:Subject:From:Message-Id:Date; b=DJPEZDa5YnaJ2Ym+WEAs8z/IcBJCSqATZSzUlk9BSN8jCaZhJ77nRxvn740rf6X27+goD0IvMcc008GLOPsCYZDR1ZnTWqEpPd29vHq/eq5MFWPw4fDGEYMwPoSzAvXpg/W7kbgAd4KzRWiQ42N2aNpgOsD6ChpRK5CE3eeqrBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Upv0PUPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Upv0PUPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E3CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778020053;
	bh=8eLc64wJUokwgV2XdYWisClID9aNpbYdkUW7olqcS1w=;
	h=To:Subject:From:Date:From;
	b=Upv0PUPY2XiK97UeT94FE4LPtj8RD09brUyinwcQ1uTPpP+ZdckBgm+Qu5bDPUtQO
	 1t8unXPmf6+U0FaF3wE5luFR0L20OG0wR+B6tfyqOXSfv6W12fOAGrh26Xt/sPCxUN
	 8cGHHRi5PBFzWYJ1XsAxz88HfCotvyPlyk6KqupzsxzZOp2qKajtpj2UXOrcboTA5G
	 3WydoeO7Nys4zs5sWg5HnyFfjrr9XCzr7dsh1STeXDG4/TwHxjjwR4D1vpUGjdaAij
	 pGesx7ONWYqHCX41awTcrlS6HBYCDaX/QT3ci8r88kbLNo2zEtNzKY+W1KXXiGtgpC
	 +vEeghA+KQTAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B101FCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802005369.5843.918673700979718188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f472bb7ac35ed068a646424e969435027178303e955e05dfdf8369f8cd6f2419
Date: Tue, 05 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778020053
