Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F1313C9C4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783740514; cv=none; b=TjkH8+0eXicjg+wva2y3zK/mqRloMkq3zpM54H29T+zmNvuBgCPAc/hKZ7+6x//IBgvf173WQpXA6HST9SZM0w/hlDl7XYt/gp84xFI/uY8g6DwT5FAVknGLKFlwtM+fCBXgC+xfx8xhI2qUhIUxA641a8ALTA80040I7nOqK+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783740514; c=relaxed/simple;
	bh=2GeK5WDCyGORNK3xMnJ47vzwWmwPSt9zHWe/JnBN8vo=;
	h=To:Subject:From:Message-Id:Date; b=BW46uUUQQO3yYnRBKdVAhEbtbAvoHrhtxg416Ce+IBYqOhuwAI2HH7cCURLOI7TY8MuhHB8CxTt8q9BcuM1hdT/2ttlrzCawE9L+F/Q5VD+PTwcpEbe5AMCzqvmST7CZDU9B4O4NJpZdOklInQJywAW5fzPe4/Qva3eD9vJLGw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEMYY9gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEMYY9gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4189C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783740513;
	bh=2GeK5WDCyGORNK3xMnJ47vzwWmwPSt9zHWe/JnBN8vo=;
	h=To:Subject:From:Date:From;
	b=nEMYY9gW7dRyL9RihJH6zpWXJOWg7plnukx4aFcVdhxC6M/a/otHMWDIJl60eI/FO
	 Ivgzxt5btXNZVZHx40YUSXcxwxNVVygOrAooji4dNhOtecVSa63mZygypgSHAdQKLG
	 NrSCZfCg+CPNKBHhtn7gkTBzc/34D6G/FIuRsMbLV6XzXD81bFjZBhTuj1QtfvVA25
	 gW0Opvbks+JNjgTUsNvDpTTMeSyNgXeLk6ESzo1Hli4Yt3C4VsveSn1z9Chv5GuBCX
	 lBcaN2sW7rPxZ22F/Vtq7gOwSbg61iD21//LEvLDfpDLpzHo9Bi0xM3yZfK3xJ8yaT
	 qz5sNsCwuSNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83D1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374051368.29979.10196431831538567345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d984679fae633fdf91bf680ce95e0fc264f6334dede37430ba9795a0183fa00e
Date: Sat, 11 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783740513
