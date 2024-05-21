Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D297F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716250343; cv=none; b=U1eJNxEtIvPwXL2Ucqx6xslPnhKhhjOYSwcwDvz20p7zMjfkR/IeluLAfoRRShafqeCWvoE2IR180cKlEUGv72ZJ6YaNBKYY5+yaS9s9YtN4IN+9k0WoWjlAAZ6/LtgbP5d0+08JkM9OJ9xefX0T6dVW/L6QQIE65BwKwblXaX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716250343; c=relaxed/simple;
	bh=AS7Jzs1Kahb5w/WiNYdDaezv5mN8Ahkmn44OJVGOuBU=;
	h=To:Subject:From:Message-Id:Date; b=SqT2DehSK7RWe83Et3+KsNo83AwBXCLx9BROI6hccA1xdY5BQRjOyYBDfTlexbcYF+spbVPdQ1mD0ek4ipDs/XmO2A/16UxfPG8fU0Dfwy2UwGmGh75chKGzjfInU8Fo9pQXQjdCQm28x2fR31HsjM0ulsJ3iJpVg9Hm3tFJ0p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmF3Lmpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmF3Lmpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86BAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716250342;
	bh=AS7Jzs1Kahb5w/WiNYdDaezv5mN8Ahkmn44OJVGOuBU=;
	h=To:Subject:From:Date:From;
	b=ZmF3LmplPMzC3RY0S10dn1VqL5SrXE2nvTeZZKrQdvU5574t2GMGXLO1vUTY2gwcp
	 dGNtprb9FBJ/Y5374ROHNDWe4UXjdFVZ2pMC+o1j1/Wny1venvdH0CmrHjdsi8zz2E
	 RTZo+UuFHxhHwcbYxe3w+pRzrUbkphmwoaSfPLzSJ4nJ3pcgli8W6BDP2ElQx5L/Pp
	 jn66YtgwkXs5a1wpV3/INS2d1zNzl341EWcSoJRuajcR+tT+3Zc+UAkQZvC1MavOEX
	 LiT47uAvjNeF1Z2Xe7PllyMGCFs5QsVPLPk1i2xGzsm5vZwkuErp2nXtEOSuY2rFY+
	 ym+A+2guyrRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0655C25B79
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625034275.2739.1316246620184632693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b31aba6090e8861f59f285f5655022db6f3724b0765ade39688ce86d70ed73
Date: Tue, 21 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716250342
