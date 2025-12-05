Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242961EB5FD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764907974; cv=none; b=oru5uDH/o5YEY4/gwsbsWIbbOj2YDEVj6Fkfo+TMpXEZC+3obilIdkRp8WPd4tJWEatFAD/XDWdLsz6wIiUpXASubrVGlRafNIjrI2EMdUy1KCI3zfb1Su/VD+gQL93AjlmH4ASZI1J+4u77yMmefV76IaaL84wOzl9dxIUPmOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764907974; c=relaxed/simple;
	bh=r8JAUgEcYghPfWCA+4j56RRdhuT8OK6FP6auwIJ2cPg=;
	h=To:Subject:From:Message-Id:Date; b=eXLxQmr12Bt7T4t2gs/JQxQ0p003Ek1s+62OkKMqmMyQJ6lFVmgZUrGyk0xWabJb9jYA3tWSioWH1m3S9o71CrDKdXZw+tcFtmzaB4tVoAf0vnGrRMen30+xG34TBd/eA228nTu5eYqsIhg7g40Terdm304Xbx5rJZWFGjxFOQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1l6LCo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1l6LCo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764907973;
	bh=r8JAUgEcYghPfWCA+4j56RRdhuT8OK6FP6auwIJ2cPg=;
	h=To:Subject:From:Date:From;
	b=a1l6LCo1A+dWf2VQbzn94FOsw9GS1ug9gC5LUgCe4WRP63GEaawLCcKaR/eFLT0c9
	 0yZig3yRiv5ioSSinVX3F+JbW6TTNiczkHcMhLvEsXOd4FS80iTcEJFgzjd9t1+PyP
	 7RNzP6tGmj0ngWIj35hbCSvZEo7KLSfLKIySoSnlCdWPNhanpUJH9809hsaekNA/jp
	 ObP6iEJMjyNGtu2YkCbCHCnRtuoBxpH7etsvTQI4mt9V9691LO6/G6nMl78B4cb9FK
	 365sLeS7PxdwkEhhAwdhECD64HrjOvNJrnhbzj30pHteHiF5aiy+Ycg5ZiiRUmb8uO
	 jyjOyORH8U6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F3ED2CE1B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490797358.29466.13690478406421060403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7c341fb37dab072752e17aa08aa7ea4c050895006c853a4f3dad0b4fc73247
Date: Fri, 05 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764907973
