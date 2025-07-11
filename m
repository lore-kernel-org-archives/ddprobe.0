Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E275B665
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752199794; cv=none; b=RFT+cD9A9rHqgf1+w9t5JWqxqAa/ASrXmshAVPh8N7hqZwO2UJPWsM4KPSSW+aEP9rWmwCwlfawsI4Njx8SxeWXQvKRtFjzRnQg7Q23HqSo9eQOy61O7xiR3FxIW1iwG0wLrONAkot7cKoCJBgOueVM2giQ33Mi+mII6C8qlZjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752199794; c=relaxed/simple;
	bh=sdUjQLhLbSB3+O4TjfbqL0SrPr+bEIh8JFaOkpVhMc4=;
	h=To:Subject:From:Message-Id:Date; b=l5Iu93btdsucHW9X4TJ0HM0lLR2z9tx3iUovlkoHYQc0SW9JFAY4loK5hSAVaJiiX5J7WrVpxawwboMGU6z1NQ/zTx/HMlyGr2cGI75wS42N7c/rZyXw+Pc7bPG4VEzm3b/AM3vNv/2IMD6vvNQcH/TGEiypD0KHe0UGOAPYo3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFk7z+oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFk7z+oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F1BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752199793;
	bh=sdUjQLhLbSB3+O4TjfbqL0SrPr+bEIh8JFaOkpVhMc4=;
	h=To:Subject:From:Date:From;
	b=cFk7z+oL3EogXTw6eTgfkJI0sAV3jeyaR2qk7EbxADJwnCi3OTSM7Ye00i1qzbfSv
	 e12UCFy4OxbZ8FQG24x/hXDygamkm2KY/bs3kyZSMyB4E/79gIBMyyHcACB36yzOhJ
	 0QtIQjVyfVh/agJ2jZfKc2E+2IdGxCKaWNkPCPeUec4GH26fmJh4836+va585eOSxe
	 lTpYiIkqkuFoISo0+ZavDinirv64ryEkKcaE9GuLGGDKtH4LwRRTU2ma5ybBFBRa+8
	 6U9S4iFv+5/QxvikM8xb00wbkFruR0jipPQRQKqS9A8GqExG8oAt5XgPv8I3Y1zgFe
	 RywfhCFjfRrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905AEC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219979358.30532.2488927883383363683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039c1e9bb0d0051a6cfcdf5e2aab11a69922fd786413e6609b0c8e84efbc11ad
Date: Fri, 11 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752199793
