Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2143F31960C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766747636; cv=none; b=JM/9nflX230ajw9nq5de4y1G+/HCPwRJtTl+tieCaVdFK0dCxSovETNftzXBZBH8vmYmAXEHlMGFE+xCd2Tc19QnJugfQiIPznDoWZlNi92GWeOYBISrvMQEgZ+jEX2wo6heO0Md8oPw6/lmyMfy5KtBN7WGNtjsWoOeyxfHOSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766747636; c=relaxed/simple;
	bh=jjHuJ9E5RJcJJTAzlTBXjzPtJr6C7z0OSnQ1NTWD3cI=;
	h=To:Subject:From:Message-Id:Date; b=nMfcFsBtZ5JUFcy8YJ5D5k+N1g/8pLeQDFJKWar9KiyJc6znUO0F+rOvRTxM2x22pEfJq0YjjyHCH7Nlt13c4SJlS/WeVJjThwPdpzXqiNrt48KFKxNNfpReT/0GxQcg182cgpdxFsdQx1FlMOB36aD51k5R2886QSMAKa0WibY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqIE5mtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqIE5mtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766747633;
	bh=jjHuJ9E5RJcJJTAzlTBXjzPtJr6C7z0OSnQ1NTWD3cI=;
	h=To:Subject:From:Date:From;
	b=OqIE5mtfQgDGZ+P7Do3kIUFnveLlVUT3Ng23PYjnbX1xbFltb+d/pax/9q1BJUL/8
	 Ro2WJSwoNm81UND5sEtiXyB8UgkAHkz2WXInUy2oC9OOmHLkv/Fq1n0FwcstxuL3H9
	 G5Kz7L79X9V6FZjKGs7JWZqH9y52LYHhB3NtOS/U1SLtCc2tkZSFmS7dvN8MggzqFj
	 sCD7flvw1sMBUGnkqEF3Elxj/Bl2zGblHina0/EYwxeMmgVz1JYTftMN0aA9TFWR0Q
	 HKNyvgrZj6fkg3FL5uZTpZ1djodFCCDsQXRht37zqRjs6zPROt0AG3DURAG+ZFGtBv
	 1+Ix9TFOLlI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94298E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674763359.24380.8537116219366569795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fd3d0f7e92248188748694cbff773d3d56703c2d2403bec894cb0cc864daaf
Date: Fri, 26 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766747633
