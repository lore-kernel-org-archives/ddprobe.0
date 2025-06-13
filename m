Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7682E11B6
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749829794; cv=none; b=gvHgnhuotGyBSSb5Ir40Jz/jfzhGbtplR4aVby5iHTdJjN7S9L6hZ/1/CjJITOzCv6zPArzJFLrX5SSsvKfTrfPl/DQD+nxafk1+DRFu35d+uZR9jymjGMF/cUt1OVU3gq/Sc6/+MFoih8qBuCoKu+SPoa8EX1VxXkrnTnVV5zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749829794; c=relaxed/simple;
	bh=yEWt5XU7k85eSUAhw7S/sSiFCkWP0JKG4CyUf/RZNiA=;
	h=To:Subject:From:Message-Id:Date; b=fesLZ1ulwQj5mGaIdygGURVn1iBivj2Dw7O49B8Roiw4PVwdhT5RvCm0EkuP5OWntJasd1YERY1UnOUjgXh/Y2QKFOLEU+8bxTHJoyDuOK5e+GYH+N8Gv+PRw4jnRhEgMM+nIiKqXjni4+pOlg0PBRbCWTgqMwXpv1txbVQkeFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inc3B/ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inc3B/ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749829793;
	bh=yEWt5XU7k85eSUAhw7S/sSiFCkWP0JKG4CyUf/RZNiA=;
	h=To:Subject:From:Date:From;
	b=inc3B/eeXFqO3hi7pcQcNeo/Ji4Js6q8UL8rZM2LTL0j7XS0S8KZxeR3CLpQit2jz
	 baCe+/DlyFGZik7SQPssmkrSnNrHoWTyj0XZ4M1LVJ671I+8fEi6gJIx95fLQJUVDz
	 3sHnv3WHwajnvJAMS2wDE1mDHk5xCC65PHQiU4gPXQErmmcdicxhcYjOR9IpwSL2p7
	 cNcXiSHrL5wFvitszyutL5rp4jRyTp1sFTIG4ORnm3hVGgcmaraP6VgsIPL19qACjp
	 as9LNjXx9EnJ/XUTuYwGzKTy4U41zLnk05nA/+pPoI0Nzv1Ts0A+FmIpWXaSA9qJrh
	 XTaNvanDVvsQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DCC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982979357.3671.6473710004177429743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad7152671fb3a2b2ebb6683e7c1acdb03ac95bd8e2a5cfdc45f6bdf631020a5
Date: Fri, 13 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749829793
