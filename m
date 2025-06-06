Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5351EF09D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749249594; cv=none; b=cyQLQkEqQYQIW4FK1O/u1nPkomKe0/9+MBk+tm90fJtVQ+ab5D/eZKWlO5NvrhJSzGIz4lknH1cYzmeUD36+VT1T31oJHEWPH0/SBsPWlENRidvNDNQN12jsys9gdUFTxY8KRrmCQTDvcJwPL7tRQkl3Px+LTDD8UQL+xtX+wYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749249594; c=relaxed/simple;
	bh=NGiRFy5y9HPIQjRepkxJva3tovpx0HC7YuN+xGk9yJw=;
	h=To:Subject:From:Message-Id:Date; b=p+AmJiaQcXlvSfDgqK17cplSLZol8S7y3rydrYoTiic8WgzxkmCbcjjRUi+v+LbQezKHXTuOV5z8oOIy5hA3kkU2RySTKvnv4zHhtLs3xDybeIMGXyKiuiUawUa5lrO8OYkygybxbQ/VSotBHa/llPcaZa63xHAGnOulbxZ5gCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t64An5bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t64An5bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749249593;
	bh=NGiRFy5y9HPIQjRepkxJva3tovpx0HC7YuN+xGk9yJw=;
	h=To:Subject:From:Date:From;
	b=t64An5bMi5gb081+uQxcN5Cp+Re0zBpDFX9wdk67nIdcy8RekKHbx4XFD0KpG5eb3
	 1ERkcF1jnNdIbZ7YRLJ+qPuTQOGGGohffDDU4fyC7m8GdLoCefhTe4xBPkGWXDy05U
	 AdyniiRiKuMFbMnRlv/OFUKTdmTy2yGj25pQ/EYv1PdpnEqs1KChbZCVMnKHa+3ZUS
	 t+dfuFr/fjLdjLjKxZRJ+OcfkbJGqfOjd0r8IXRqyWfUAfsPZX5b7kxkANPFjgeE4t
	 YS3z225gwCxwO3EO1AVHzaXNEm2yLw3Dn4aiLyi8sosNzaIVqufRLfHt9D4OuUXrPc
	 sgifp5HbTphfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50FC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924959357.14488.1932828572148237375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8263179d9238699f69dcf61d7c2c359d045c2b3ef083559cbe2ad7a66981815c
Date: Fri, 06 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749249593
