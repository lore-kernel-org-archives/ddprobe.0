Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0096A67C4D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705444697; cv=none; b=o6/6ZFyfW1duKy7yru+FbkLocUXGApRNHa/ftuBJgLhHR8tkdu+pExGzhqapipTnTLqvlqT1y1V0fQxiQ+5T84KeFQenePDwbupuud2ydNZ+39WWTyGR/bP4TCREUTde3e9ZA2nEnnzFcOqnQcKxlgIDK6nFogdqmTn45rUluIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705444697; c=relaxed/simple;
	bh=46xk+DmgjetRaS73uCxZTv3lp13DoeRMEukVETmHAos=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RLNe5hrWwWZrGQB2mLTX1hY3aPeBYa74/dM8eRvlY0sOcrfqSjwPEFmC9kBtjeeJX6N1/HGCROWhieQfjdo94G57xUK+0AIm6FJnV5Ogv0/wIfo/azsSBeKOitJ7oVR3mSnkLag0qEyrBLkHcCAito7ICK2Xxm5Ess3ILKyeoC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWkoK7yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWkoK7yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4CBC43394
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705444696;
	bh=46xk+DmgjetRaS73uCxZTv3lp13DoeRMEukVETmHAos=;
	h=To:Subject:From:Date:From;
	b=OWkoK7yk/CpJLF7CQoaK6Fqtet8pgfeD+i73Lulg+QIROHDaPlOJUSzCaE/cQb1mS
	 5YIvW2Ev8rgnTtbgJwVzbJFczXBKLtYTxdwvdDCDQSCx5ujnU8k6+nE6pncu09Cb63
	 ZI7/hUqVTqKkkYDb75YUsTCVRqNwNmG0P3dbV3mNBOC16YHXIdPcx8O7JsC0hrFxMn
	 DlifW0zy67LAvRB+j2Ed7vsBtauy5SxjbfieEJqBVAH/h3Fp7kEkgrLOuSCi6bd9pK
	 21RAiMdUxA1kPI1VB4cygxG3jVHdc/zNO2GWZLS3IOLOf056heyt0O2ncopz8wCyY6
	 VsSxbFosb/h5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623F6C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544469637.16617.7967939584472420573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fca5a43e55aaad49ce699205eb9deffea28120c4a44839c65f07f6fe44ec0f
Date: Tue, 16 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705444696
