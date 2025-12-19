Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BC231AF16
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154834; cv=none; b=G8NsCthF77ub23nRpPf0VK7xhZFilmJm8elqdiOGur61167PMDjO3s8hGVSPRa+QQBpVDxNzPWD18Y72ZvxwJrVshJXihHjyMsGVeCm7CTvzdwRhfJBiWGJMSI5MuB06CzNndSoUu59UqtcZFlQ8bXGkz9mmPMLHD+1JnImUVOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154834; c=relaxed/simple;
	bh=TEMep4Drns46EBz8SInEXHuDcvaPECg/9AI4mctT/RY=;
	h=To:Subject:From:Message-Id:Date; b=tPcm4oHeOp1cCQQhh+P9wTAWxKw4mxWg0TURl9BtEsaC4e8HmNVG3Pir6hiZkDlkfcnjIjD73VHfJi1f7VDNk0TMi+lHjPrF3HuTgOde+rDg6sCPcRQpVusYZAv7rwpOOyaySqARfAl+D2MGp/A+DLLodtEfhOF9EACcpHFrCd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edniiIuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edniiIuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766154833;
	bh=TEMep4Drns46EBz8SInEXHuDcvaPECg/9AI4mctT/RY=;
	h=To:Subject:From:Date:From;
	b=edniiIukdbKhl9cZeKpkiBGm2U7+WFl3OgcRi5GZu/9gfRnFHeGAIffyy034MUZoq
	 M6E9FbsUTky6/EUwefy1SqeoUhwRiW3FcUXwzzFsCKBHY/VrQ87DBxKthzRGSNlfQl
	 MOx8DiNp3+hjBSq2etxF18ncFxUpVGdr2+hR3Jf13xmpdDUijg+dpNY7E6CKnZ/pmy
	 vVfGq9rAmwD8mynUZZTr7tQxjCd26sn8591PDhS0+oxeamE4Is1XAOlYLgr4fkUVwG
	 Rfyq8SPwn8My+gtU4qutufPOP9Hy532rvZrDIPLQwnFGFcwtN26px9gPkZGjPLY9gC
	 p3Fxjq4uz0ygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6DD78783
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615483358.21004.11612584431892511621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb40450166f9aa0ccea400e2a52a05c768c8cff87428e048c4fdd8e81fc0c63f
Date: Fri, 19 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766154833
