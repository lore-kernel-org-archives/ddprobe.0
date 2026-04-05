Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398AD883F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775362534; cv=none; b=QvkHf1xhslW3FIQBfNBzHjoORr3AIct2xtWK/BVw5sTEAIXs+XP/ppViuYuvR0DdSnV9yOGATHU0klLBfndoIEetYhFE+CN7SrQMSvMGx2BQk9dxdTPbPNsx2lvsiH2SFMoRgAuhFjRtcdN4uG8J6if6u2fOXfvotBtiEz2FNo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775362534; c=relaxed/simple;
	bh=95qvV3NgbpaSnjg27ZZSpBAKsZYqYemQMt4b9l43FAQ=;
	h=To:Subject:From:Message-Id:Date; b=gyNrhoKpuClMZ0DWXhV8OkDrjpoUc4XtBBWFto4CNg4B+OZzAa70V3FRaXl5CIXiYt2iu9NGWpuTMaFCceGk+wbcMi8wob2DbQLU2ghWiCbA7XFYm+7DAxOVshGpkR2jwSUVgxbDVf3YKSxSpMIEGBelNuZZvCCKnEnXWex9j0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br3cPuZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br3cPuZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FDBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775362533;
	bh=95qvV3NgbpaSnjg27ZZSpBAKsZYqYemQMt4b9l43FAQ=;
	h=To:Subject:From:Date:From;
	b=Br3cPuZeUgUqn7Pz2+kybSPK5V/Pqil6iHH972xJDIIdpQx19rpT0yHaVrr8i0D3P
	 aldGxcBYOO/eXB3NXFaQOicxFxtv08ZIdiK6TXjWOmAjuufZ6lHOcNNMMMzpD+G8qw
	 NWt0KjKKDdFy7z959vw9w/YXzKAW2aUc8gu5gQHRuXGVLqqWtRXrqk61CqfLaTnw9G
	 mwHFqjcBbNVyq36urd/T7aH5gNI4vQETw484G6wQwgiwVo8q5JeAZNJm4scnLRgweX
	 8on40ftudFrmcwJ5v39qlc8TAxnhTIofLOAJheFysvAIGtdevSpOdTzrJZno0eMNGa
	 kkv9j6W/U0jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F3EE64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536253369.3826.4399416560861721743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a7520a838de0fd8b88f337acf8d8ff36abd227e58b2742de3b4f61255192a2
Date: Sun, 05 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775362533
