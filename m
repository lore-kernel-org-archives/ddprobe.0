Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5534636C0C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785847234; cv=none; b=KVrexuZbqGra5qyg7xqG04PVAcqzn+LHQoCgS2VsYR46HE0APvcwMSEfCsq6A5igyePWsc2A9G2otTcTM27FV4P3hmhKzZG1Ibrr1yJow9sXpunFR1ob0tQ0/K8LMZZ7Uxyd+66wkltcQ5XIMG9pdmCZFjPSWmKWDsLVw2USVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785847234; c=relaxed/simple;
	bh=L7mYTEYniiK5TcnLPcPk2j6FSHKgBdxAyZnhyk+0PMc=;
	h=To:Subject:From:Message-Id:Date; b=Xo72lKdk3vCKcNpZZBkN0O18HDAN8DG7dn8g/rihu5clgBf/2JJOr+TJDrEvlDYHMxjx2GSuqf7h7g52EvZ1x55lc3iBWfA7lojDLIWN2gi3Xsrj4mDNdAtoSESuxb64hpRgROTANGkrQY2LCs/xag7LlUTL/3MfZ9MXdgV8vxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOlzhmNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOlzhmNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2019C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785847233;
	bh=L7mYTEYniiK5TcnLPcPk2j6FSHKgBdxAyZnhyk+0PMc=;
	h=To:Subject:From:Date:From;
	b=qOlzhmNchcqtzYDr6mBXGV8DBJiWM1ZHZysheFjnnmvfJqBeQxLhkgEXbyrrstgIZ
	 cjsEjloOI9GtBPFQ4nZte33pmsK6go72bWzwKX9XlJnjtwuMlbhMGazzJnFh8DjXww
	 moN3I7kexUwV3Hm04Zp+l+VCAc6N/GfeV5whx3dZEfS0s1s7V28DWYQJczpzIoI/Cw
	 f5ZfetTUeE3zUR5INH/assVJNUhnnlm10OMpbsUC4UrFofzzuh1Cpdx4EQEs2VUKj8
	 8PiFpisAFmqJkLa3JYZA4FyokQtCpsep4G1iPcvL9/t0NTKPUHoOeScwB1w21N0giD
	 qjoQz+y01qA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BDC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584723369.13957.12819449603249741984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e9a0349d52cbfcd7b82dc43da998c0bb8175793cbaefdeb01973c68ca68ff0
Date: Tue, 04 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785847233
