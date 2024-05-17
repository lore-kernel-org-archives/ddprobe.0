Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509185231
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715981543; cv=none; b=lqq6boRdCnPqjJ+UYgA0zwhSFhyd6b+4UkEvkDrYGrPIXnFMBkxlSvoAUlAjkL85ilXF2QiludZHgFulNS9BfayMEMlrM/eauNXnUZhSuxtq//UewylZdhFMM7KyXLTdB0mL1E/4xU0JYbZK2A0igL92z4fu2McR2sKX1oNdkcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715981543; c=relaxed/simple;
	bh=hRvAAIbqmRlp1Kz0SS+K1Dj3TTKpQkGcUJmwHKVEngk=;
	h=To:Subject:From:Message-Id:Date; b=Zzj3nXSKFq9/qlB43baHg374gM6PpvtGxf0lqItUXVnsSz92o0fnKQ/yAanTkirmKZV0V7hvV3SIZ8Iz5b4Q0HRWPUA6wmyVjCx8r+sTzxb1AvRlW04pZb+KUoFhSE2cG5n5ZPtMJS+n8CV7JTDHpgMa/tK25IcSFwju15I1PA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrzhpjbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrzhpjbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBB2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715981542;
	bh=hRvAAIbqmRlp1Kz0SS+K1Dj3TTKpQkGcUJmwHKVEngk=;
	h=To:Subject:From:Date:From;
	b=qrzhpjbR+yAauuNJkfLisWXhJLPMrLUf5PYWSeu5ghEMkltcdMgzNykXE7JWbFIsI
	 oQiYo+i5zQa/GQWhOIATxZWZIO7DxSc2p+DnizlLe+UZXMdurhl9G7GTG9hTGNZ1Oa
	 t8qz/X7mCQy20stasU+OO6Zgynl/AA5ckHRkOFxqi3gngJsbhB+a8jWHerHvoqWLLe
	 gBPXl9V+esy9xUemUecII4DwbnBl2DIBuywdFGl3bWnCwbxzg/FK/D42WraDRpJwUg
	 PPLk4xvz+MSd9EzM6KO0ZlRwMdhBuJC19bRRNHc68eG0MaGtskBbUrsyXeMRj0wKKt
	 S5ntPtIpNxH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EB4C25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598154280.4956.18282710013519140518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55500c518d9b706114fd73f0bfd6267927d3a637f1ba14941a647e4cc3162474
Date: Fri, 17 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715981542
