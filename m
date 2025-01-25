Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8041E7C2D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737807354; cv=none; b=EJDUgy+I+C3AFTj+rn289zPYYfVjHpAFhRBc6ZSt87FMmL+qJdrnHxl1oPnE2vEkQ4NioS5BYSVd9y2Iabo1ZWWjziUARIAOiRuGSuwMiRjFgH18HB9GVSmRO+U6UpTiXxjclbWOOBBlZVrJNQl91rnuF4vLkUBy79IYd1VEHAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737807354; c=relaxed/simple;
	bh=g3094nrYf4Tg+pPPQXiszm3rlFfa3WciCBz3ErNox6A=;
	h=To:Subject:From:Message-Id:Date; b=eLsDc44h9yHH4RO27uaOQzNduwtfwiW1IcGZv+LS5r/1W/qry1fMqadaqvImHiAGSkFOqsAeeLCzltyNnV9PstGqipG98GwbRJ0NUu84RgDe4dnmG7wDavNp6+DtpnSncO2iPbHpLjjpg/lHfnhtOjTUO+XxjZ+bRphd8l7cW2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtwaPmce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtwaPmce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E87C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737807353;
	bh=g3094nrYf4Tg+pPPQXiszm3rlFfa3WciCBz3ErNox6A=;
	h=To:Subject:From:Date:From;
	b=NtwaPmceXaOY1xsURn9v9MexWPwx40CzUzPwc72g+kwJWn3KSLeDbFsoSInGRGVPS
	 VYKTTcBCoqsNQtb/OyKwLSpDhRpxGNClBcNm8ez1tL2/w7OudTBr71p5A4osmwoW6Q
	 /Nb7vZw6HxSjJGdXqhTsgZLlVS6lBus8sberPKRv7JDwU911mzWsPHEAzJ1iXaB9it
	 WXtLW6Km26a1/mDuPgzbFd/S65mWXOmgpHILpYLuJkfDSaSgtdNrq6ngT93hCqpZ6+
	 QjXarqFZiQ0177Jqwgeq9grxM8Ot36n5CW5AnjNdLacxdshpEMnXeafKi8OKAUC5Li
	 6aLuSY+3ZCGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9514DC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780735360.11573.8487215559446258493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bf716341b915ea02afbfd15e10918f3c48581234499e06674c1b8050c1a1b0
Date: Sat, 25 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737807353
