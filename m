Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBFE19F137
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749490194; cv=none; b=Z7uzyWpqfOEEGlc4Dn1VXjaTshTHQsfTU7dzBRjXljtl33XHeaEYyx5JVnWHtWX/+YvsES7tEwKlXrkYKY+1INoo+tc+LGaLwPMI/HcAGFoS+S0+Tjgk+cOjIThkRDet+kR0JoOkOQP+ww01Pc2gp5SOO53w7WDAp4lwrvsoEas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749490194; c=relaxed/simple;
	bh=fkBHFBZnI3iCsNpMVVdGwZ1MLNhgmkmWH0sunM33sq0=;
	h=To:Subject:From:Message-Id:Date; b=QXIGOJhczGpOv3TCRRJ8/9MjhSmPSC1b7KXY8mLLy/VgdaPOTNgGpdzsZMKsoJwE1U7fe6+h7oim9devsI4P/2OsHra4hYWT687EIMjAxCoqH5gljld+5WlYArSMSi0HsGwAfQUEagaKdb1sGTgWUEXxr6zeL8FJpVhd/cpZvsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZH6sb5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZH6sb5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749490193;
	bh=fkBHFBZnI3iCsNpMVVdGwZ1MLNhgmkmWH0sunM33sq0=;
	h=To:Subject:From:Date:From;
	b=OZH6sb5wai1DZdScNo3kCh5PsphvYhE/BK6jOS0NnJRgfdl3PzvZ1TcNh1mYyBSlo
	 XwwolvNfoplDKdBW3Njo5oDfbjgB1ZtlDmJfLyn6cHt1SZyTJli7QgHZZ+sm4W5RMh
	 pNAj/UNRttwIFMUPA5owpzfvaCcdkOpT02z9aYmOlgMe0p71J8OWTnOombiT9Nw/Zu
	 Xq4YYMco1OG2nK5NZcN5ciY7AzHrM2qyl/e2MCGRmvlG7d7PsW74IpAuTlmsgOFQ8j
	 /jZhb9a8VbGRwpEw6NDL7lW8wQzNNtCd10me1RSf9Qh/ufkWR3R1Qi+tJc65ja+Epp
	 uTX2cFE1cHpbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949019357.31704.4749223173410544032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3f5f9db35e1963fd4e148823f0c243509db7631b64bcbf32cfc916fc8b0bb6
Date: Mon, 09 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749490193
