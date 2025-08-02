Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355435977
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754141394; cv=none; b=PwNDeUmD+4Y4TUmZ6CS3ABoT8tau6OX5Dq7QwwZ7SmQjYnWmjwaVMTlMy3yVKIrEiHZRhCn75UBpgpEz1SmsLp7dGNVk/Jg0wj6dQM2goz8/+djeoVC0nUXj0Ip/0aVs8fDf9BkKYqhzWpkmTrahmbT1YLBcGZcFUGWa6oMF0vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754141394; c=relaxed/simple;
	bh=oVvthJxYkf5i5gVnmSbdFtd6g4INUAerUpxvb8obS+o=;
	h=To:Subject:From:Message-Id:Date; b=OHpTxF5qi03VN9ypPEwLaLkNOWb8VAeqDX0jlVEyz+YpPJkp1KnHTtvebMe90MnNa9NGWAov536SdAIFTmnP92ngTKPjpydt2OMkGkt324XZajWtJ4wHRt4eQMIlOuyQXjjG//1RTLSTYhBD4+zfLul1dqe8LbUXLDO9ONuK9iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsFfpnkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsFfpnkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754141393;
	bh=oVvthJxYkf5i5gVnmSbdFtd6g4INUAerUpxvb8obS+o=;
	h=To:Subject:From:Date:From;
	b=ZsFfpnkAVEca4St2EJDBGKsUvXusvP0ylZsTKNlYEp/tRmNS4PtgEHu9n6vmQsr7C
	 Cz6GcuOsG/CrBRHb/NYcp+WTxmfhCaAabs6fy17ATfWYI920srUr6pkN5Q2v8hzHWF
	 mm1Lmlf27WZhADQglINuNt20Z17ZBi5YW+Nb+Xv/L/HWfsj+djmzDW9PPSgYaMZLJ+
	 RHjp7onjHMZG+kJQLXRgc3yeROtb/D1yHvwSlO/hHsX/ETfyHe4E5jzgaf8TFq7RkC
	 oCLb/8SMq7nYMHqAqrBqxwogQGEkbeeIdkvZNw3jNiyvKGb51ThjyD4YZydIbnVjmz
	 KU4x4uM1VlXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC9C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414139357.12346.10005571853890263999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d9eaa05a4f3cb11ec2a60682def016bf379daacb550c57e47f544df9cabc07
Date: Sat, 02 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754141393
