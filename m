Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4987F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715476343; cv=none; b=uSPOlwJeKtUu3NXx82wQzJUm/8xVBg+I49phLyA8xP33OcSIcTgPQpHEUIWlF6pYusQRea12AKVKiKvQlLsnc7CnuhIDOfl1sc/F1Uq15ee97KYi+hNgRPXcV893SuH84PmV7bGWm7xaJV7pPV4mZ1Dr9jQZTHA3slTt2uY3nDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715476343; c=relaxed/simple;
	bh=lJdBaxvYjXksS7FhFKCKmte6uQJmtyAmyyDBuFqxCEo=;
	h=To:Subject:From:Message-Id:Date; b=nL3sqDyLweRw+rByPWOkpTtPgZVhCedzxt3b9XdaFnsoxVVYJSsK/fiCHfarbRG3MVN8f/O47HXfsvPgf98+zg/IaQWPytYj3RflWATta/WRHnTMMEUGY4meLMBehqppln7O9aQ/BPcFuOUTNsY3eRnZj7Mps7ogKNr8MEIrxKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX8Sk1j3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX8Sk1j3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11D8C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715476342;
	bh=lJdBaxvYjXksS7FhFKCKmte6uQJmtyAmyyDBuFqxCEo=;
	h=To:Subject:From:Date:From;
	b=YX8Sk1j3gyoB9jnnpReMvsiO7PCWYXNgQHKWih4WKdUaFn0EOAleuf962jXITb2hE
	 iCFQ186VD58fG6C3zLTIqQ/AqUMBtA4ieFDQsDyj2SvIfU9/9z33K6bOVscO9HAEMB
	 3iTCdVRvf5Cqi6TkkD0QUA7FpwXr+FT4sOrZLgIQmiPaHwa/HKXFQwS4/iaoQU7pds
	 bIXjUBh84fbxonZVxGQusYWuHdApKYbRcQ/v1TettpuWvc52SgJwWTJrEDEFCHO7U/
	 ZHJ38mn5cr9HoTPA994T1pSHhdwUSJsv0t8lfM9GOPj26J6+SRAAUAKiAuIzpySFdn
	 qGqYUzyS/Q7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5496C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547634278.20240.13777417473866959263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b7217a605df63ec043611218e0435f7e8b399af8c52dd0875fdc25437c1cef
Date: Sun, 12 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715476342
