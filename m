Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA71C36
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731077154; cv=none; b=SPJ8jCuUsZJY8v3ijAzM4l4Cs0cbmIgw4P6jRiQx1i64fJF5YZmQlxHMw1p++KEmMkLwNkwtgjTVeYKSYTdWdtJkanMoU7XDh/A5SnQBZAC/b3usrAZgyMT5+qVD61QRAjVoqmJks+pCp8ALUaHZ5jo55E+tjCrFd4C/E62/Vaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731077154; c=relaxed/simple;
	bh=W5G5hA4Ja0Q3+/S34n8tKmWgn34QBPophpLlm1Qv/h8=;
	h=To:Subject:From:Message-Id:Date; b=ngEAIfaUQgTjI2FsVcjgagkroTuZpTo2PeAY5ww0IQtPcLkw+F91UUcYLYiCib/jyvzgVouKUeBo6HhH4eMRliXBtiqjym8YmErn8EdyzaXIUxVChMYFvFdhlzQRIAeRpJT+S6ieO97lvJ3t6RsYRd2nlcaP3NNfH3Brtzeza5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1U7iJDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1U7iJDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57DEC4CED0
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731077153;
	bh=W5G5hA4Ja0Q3+/S34n8tKmWgn34QBPophpLlm1Qv/h8=;
	h=To:Subject:From:Date:From;
	b=P1U7iJDM9vEMfnRsENRo9uFK/jxAWatbr1AmSIaMWkzCB7yieMaM+zaFZQ68qHbQy
	 091ESXrjF9U7UomJRX45kbnvL5xUB4nkKxxfNw9vW3knTTTWt8E/070L0fm9XeJdGE
	 nBd7B6JnRLOeQcqShXlSUPNj2/pfMA2Fnjhmb/IfoAm3ibhjiwWQrs7Q/k4YTAQEJL
	 HnqfOccCdSe76T4b1dpe+2ospAjFckMhoayL42+Dolm5q+qZDJLLCnFWWw5Pqn9EPu
	 1Wc06rY28dEI9rEhqlySXcPvBRlTjyj+QXUAnnINjLE7jA3itNcAo5z1q8chgsHNTr
	 Jye0edXDaTruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C29D5C0D0
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173107715365.6415.9695979772653009812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172f662b3ebaaeb4ead6411de037929a645a4f76adfb5c724767b4b3f47ff94f
Date: Fri, 08 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731077153
