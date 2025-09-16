Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB77FC8EB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757981393; cv=none; b=gK7BDaIsVlfgnNe7FRE+Wo2SJHSObThnpGaYKiR53kuGKDi7qsSDPSMIctCcIKuwIWy15URiMOPw4pEKRy1qA2iwcvQLLA+NIYpu7T6OIqbCK5QeHC8S5Z0P1PU5NYnVskEUoKgDU8bc5a4L/zJ1xPtLTD0e40Yn/Gr2FfQrRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757981393; c=relaxed/simple;
	bh=CpS/0uWYn6dFU4tubDLDhdTT3GPzXjcQtQ3WiipPO6A=;
	h=To:Subject:From:Message-Id:Date; b=NVXqotYaNQ1Dc80mkp2Xc0Jd6QRoY+6hfFS3PRuDFe2e2ngw9dJeGUdypiNaYofeDgmiiS4NH9XRNyUgQ5ocOh4HlhcFRQBraVs+bLL8ZossBUBMG6di3+0peRL3kg9BG7MYgg3K3c+SNo+YRxSBmOSoQBpRgUI79A/6XMhGa8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyq7nxPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyq7nxPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3908C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757981393;
	bh=CpS/0uWYn6dFU4tubDLDhdTT3GPzXjcQtQ3WiipPO6A=;
	h=To:Subject:From:Date:From;
	b=Qyq7nxPgzFT/TXvqzNj/dQdL87qm6s5LYuifhPGVgLENkH3Uf+dBfJc+JTpG5jvPy
	 rqWJtjG3UfDLvII65A/AyupW+lVoeQk+G2Hy8tKIJYMK78EQKgYlwF9zChODNA4y0z
	 ZJk+KzMIEf36UeZ0dJpJSpGTu95XUrwuiK9w/Dgdxo4clzVvqILzFS9KZEEgsBKTiD
	 zdcro4X7YKvHJtPU+wjlgUgntOFH731KwroooqJ4VQX9vo1FG9ZdT1GCmA9lYsEWnL
	 91Jd1pc/MO6/7oOB3ogapzALzIZuvpE1jlgz8Ru+mgCpTdFPJPemjlW/FfvsFwwDLd
	 rJcTaX0BMypRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1DCAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798139357.12363.4992397280582387211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797f003b0b0cf525439b0c2fd83fd9c46f3826324bcc1580748195ffb82ae562
Date: Tue, 16 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757981393
