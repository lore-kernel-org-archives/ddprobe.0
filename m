Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF2C3370EC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781783794; cv=none; b=XZ/se9iUdzoUKCUgo6Iy9R8vt1f8af7Uvl28sU28+pYO8EN5M17ICXLHJitaFFan6pow6stmNmIxNv/jPpDJEGMepxxFGAoTP1BC7iMcmw/gyoiFjT0vwpVrc3muF0Rp2zz6NK5ItUb+uLykz+R464+2Ppt6cvpg26CQxYrlTr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781783794; c=relaxed/simple;
	bh=qhjq+wmgrS2Obrg8FSs0ogJjNV0MPi5YDzBhXFYzBHs=;
	h=To:Subject:From:Message-Id:Date; b=tXKNzf3DQun+TYCjFrwoqoDzYr+wxJzETxFe5CqstxibK+qFkRDQg4TKOk96vhSmr9jijMhntAdcf8luaA6kTPhUxMAumE1PcwGuVlVnGiBGwK/Q0jaAEx4F9rajNWj3gp+KG0VUZFjI70Pbh5leeV9oMFZHvEGIove5oMuWNiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzegfrZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzegfrZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1696C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781783793;
	bh=qhjq+wmgrS2Obrg8FSs0ogJjNV0MPi5YDzBhXFYzBHs=;
	h=To:Subject:From:Date:From;
	b=CzegfrZYYBJC1m3lLG/TNpHAhg91rkJYNlwu9yiypOtL8DRRK++GYYY1RmjN/sS+p
	 NP0gKfKOSFIELPIcqk5mH6akMLw5TK6uhX1NN7mb/szuP0NXt5EyUrYFiIxtJW2t9K
	 vGr5acAJ1+5m97LUzbWIK7jaBzAWiYzPEEdT+L9DtVh9vWeL81oEf4LSRdFEAjAnea
	 rGM9Ph3AgcN0nQDvZ2aqsthtBBxiUFei/Hhn1THaHSnp84jeK7Bclsa72bjSm+uH96
	 QxdyxQ8ZjOr8fo9/itqrbAGpsoPb1Tn4+l5P0nU6mU2FIsQzBFCFUDEKuYy3nx+A6r
	 MiWNseMONHhjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8BECD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178379370.25059.17261167593788352150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b3b55f194a0406a1191ddcf55e255c2b69476b8e192bbb8cdb6d5d5663aa95
Date: Thu, 18 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781783793
