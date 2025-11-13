Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237C329C327
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763044194; cv=none; b=LJf1pDuN8ezLBBaNYNGhDt1+GUlUYVgZ8IG67pcw7TQd3tQALqXHdsAva34VJy7CtWpezJrUAkh5oN4Gjf7rL5rgNYXEOmB2ZAOAZgRXI2UvfPDwgTr8N00Ng/VBQO+Vl4e29YwoX8aQObiQIoh3/rogkWz55MBgP+uXpCUVCwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763044194; c=relaxed/simple;
	bh=CHRhcBRVq1XfIhrFje1mDHckCp2EsAcga262Cbo0uXI=;
	h=To:Subject:From:Message-Id:Date; b=uB8OF8OB7Wjd/KEXx8Iob4O3v3NBd+M3g30BMb3xlvgFuif07hnz3V2pucZDievV0QCgw1qBBBqNOhF3e6vw1HxvGZfZQ/C8ED69akH0sVydpOxxELJfVgP/eCOKMXxqxy1si0ZskWA2ERFJet2HkntGGKjK/EjbwBxPyLc8enI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch750aAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch750aAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763044193;
	bh=CHRhcBRVq1XfIhrFje1mDHckCp2EsAcga262Cbo0uXI=;
	h=To:Subject:From:Date:From;
	b=ch750aAmpLMJYIJOCscMmrLWHdzJ+zs0F32HRkc9zBiUP08Q+1NLXW/qsarb/DUG7
	 viv7RGgkYRGOEqozY/HcRjixyIk+rhIFgvMUJjaFhxEIOHm5lMdURRef08fNvhV4aO
	 KFNEgzr98ncDtrFFAHH2+8CQ8B8suGlGkJp5+yNGM1wYvt88+Ej6z6oxn4Poxgaz4t
	 wmsi/NsR/5apJuvoZha8DxN3sZ/pHJWpRAvhWOmbMtgZokAgyFwkoc3BBC9PQzcWvk
	 woewSUmAkp60V6GperDcOwrK6225cLSP7MOgUO+C28RNNJpKQzx+xWcjoufTmlBMgP
	 K9sJOshnzOuag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BECCD6E71
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304419358.3137.10708887858028362408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125190f2c4271f31af2b562423accf5ebbb4b469ab231bc2a9f6a53146d57d70
Date: Thu, 13 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763044193
