Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE3710F1
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750987195; cv=none; b=Cp/3Qv/5bWtcPyA7Y2CVhl5uR7WDVsM7U067IJDOmdh64z435u1JQmS62vX5PI9JoLM51H98qYMUKz/uatbkbu7i4vEqSe5Ln02NCKsAfEM2uBO45QeGy9KaT1H721uU4iTr/f+0RekiKJIYxTOVoAt/CSMypga+hGd6A+HU2t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750987195; c=relaxed/simple;
	bh=wg18IXbLe1joYhWycfgqJH6vkMpOGU0Oik4sh0ItSZw=;
	h=To:Subject:From:Message-Id:Date; b=CoIiWGYG7pzIqqIcxMFvYv22YTku2wAura9yGFbhHmTXwBcmOg8th6hjDCjGRms3S5lyt4Dgc66n55PjoChspAvRCrVl5WKqsPChvmMcCpOomTRINT1SemIO0PfHYdPM21PHJlYrmTJ9A5ykHiY8twFyj7AmujAxzbNVoqPz6Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q04vovpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q04vovpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC7FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750987193;
	bh=wg18IXbLe1joYhWycfgqJH6vkMpOGU0Oik4sh0ItSZw=;
	h=To:Subject:From:Date:From;
	b=q04vovpO6Lhmy55g7b5OmzhBcAMEmDeufaWcHmPA+uPlAYQCnTje9h1mL3GDJe2zM
	 /WBzkfnOBWThtz/B0Bm+ZMgrbzQ5DQGH7jteAy6nyPcblLsP9k4NreRdApzDdAZRCR
	 N1E/1zbwXdix9Q/U7CKDWhefKsgNg2j0ewaLne6JABsEIRyv8YnqBMXE17JAx9Hb/1
	 zw4xJByKJEOOO7B5dEdKYc0rf87QAcgVlM+8709FujhPfeYKTy3Jp8pCSYvz+TxNkr
	 pAvZEo0yPHPTxEyfr4IVjKFFXzfJjHOYerIqnHkIye/HkuEOSdAPQNzq7ta7oqUd0T
	 n5mTStcCchYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9576CC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098719358.25081.10900336007667182338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f34d5f5b3d7cfe5e0ba862c72b4f3548b1982b1c76dc160ac8f9eeb960d4d7
Date: Fri, 27 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750987193
