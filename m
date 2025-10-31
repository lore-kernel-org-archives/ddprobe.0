Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210EC346E48
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911394; cv=none; b=LUFmCu/aCud5kJc8//mnm9UMIA0L1JyN2WhY+QDGdKA0VP0wsgg9+pRe0NT+F/of4sFrXdD1O8dR5vrukyJq+6+X+rsoukgnKObAHVaLHgtUWqT3cbH1ZrZc0bHnn7MZK4Ut3vRaYdmuoNITOflJ5hjgK0w8bqPCsFK3n+j5RaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911394; c=relaxed/simple;
	bh=T6NwofSSjJmB8N6Jw+wcJZo7pYBg9e1azEVI4/MUxiA=;
	h=To:Subject:From:Message-Id:Date; b=I+KVFd976kd5/xiJKCw94CLArZKXiN++A4xCnd/WPk5W4RnwKhErsGl1JQRb5OTINF17o1VkicuZJsacS3I8f+iH/ZOcw0QTi7TD5s83aoHOQDqbzj7OFL3PnLoQdPVsPmubiRehwp4ciq83jTF7ha7GxoO9h72r8yNGnTIz6Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTDd/Q2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTDd/Q2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761911393;
	bh=T6NwofSSjJmB8N6Jw+wcJZo7pYBg9e1azEVI4/MUxiA=;
	h=To:Subject:From:Date:From;
	b=bTDd/Q2S4GsZdb0xJh2cpbQ1040J9+fltJSb062/qLECUZaR3YoaJ0eorQlOb+SA4
	 MB3SMigoEhG0FrewjmhfsLPHE74Z1IPW4xqomBqebCXAGHRT1PiqPe0CxUNfCcgdei
	 J5cfsKWkdMCH172HH5VomAHxxU/E8jzHYN8J3SDjsLV7V1MMNWyvqLfvomV3EDUBF6
	 cJpLbq/4AwJ+b6zbmF+AldrAN9d0PJktqnAu7M0tHX3021aPoNUSosQ2L7l2NTFrwq
	 K216TgeBOn0u6T4JPgbmnecjqrvwsaVzfekwp2u+KX2RXx+jNvR3tw8Qs4NJ3RXh7D
	 BoBbLoaHBWxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BBCCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191139359.21278.12501932600732347689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f522058fc06440b7a180f780675cc498ab36b37e2008ae2b03aa7385587deec
Date: Fri, 31 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761911393
