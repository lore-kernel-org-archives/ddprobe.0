Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351B2171CD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775931454; cv=none; b=ljgOhZ5rihmEFJOK+RpET5XSb+OtC/5kMQ4sjTEHuwUbQAWdmj1wO0TmEojToLxA8y2ZR/JyKm95az2DCFLORl5O2W4aTOnS4/fWNYdNJ1absxSE1qstz1n/mANtZAzzhw59hdct05r5tAxZsiI3reh10V64z9H+Y3gOWlUNzY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775931454; c=relaxed/simple;
	bh=ixOENcTrs/LzlX0fxMBh/aozfv7kmRZF2dflDP3j9KA=;
	h=To:Subject:From:Message-Id:Date; b=OxyoyFwfOdYGDfJa22wlKCzqhQ9uI6kksY+JmpUuYZW9lebo1XQkan9RtCS18AA10CiBelt/VkwqE7Hl3k2cPh8sxl2zGgVQtvbptIt8zgwRA4BzluM56ELmmGoXgtXl26qYKUhTSXmYDCAe4ienVtb3jGp03LYNK5Z8MsZldOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giL8PJB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giL8PJB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4271C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775931453;
	bh=ixOENcTrs/LzlX0fxMBh/aozfv7kmRZF2dflDP3j9KA=;
	h=To:Subject:From:Date:From;
	b=giL8PJB51SLU0w3l9f/ogrrajfuZbOSPOenKYfg2pyHOLKUYBJGc3q7YqyT5xne5g
	 OYRwLmwXI1OCUdsddlp6nO1LEYoiRP+UPxwjTBQlnZ2bt2uRMTbK5IO1iQRlC47GnN
	 WvMbWqY9pewKeCs81Y/8F23SJX+a9On6TqJgck5/pSWUtmEUIJspmYRK11hfVLapqp
	 g8hkmXCo8uEUNe6RxZOAatLx3mEvbWL0GV9AzsFSlyrrda43dQAKH+HmljgyUrQGZF
	 RGOfeg1tymP1FtEhMtQyB3mNKWMDt/I1OGfJW6aru2W1ZdVvN0tEeNTTk/NGpcsnXP
	 HHdLOz/ji/PRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0218F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593145368.30853.4386523312099311437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2deb0e163e81a4953696d2a3f4d9114393e60141506564e502eb1145c58d3ca7
Date: Sat, 11 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775931453
