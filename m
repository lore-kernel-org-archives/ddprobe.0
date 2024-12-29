Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46050EC4
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735436754; cv=none; b=UdRwV6ejA4Oh24sSVFlxGuBryfyYPoPiNVFTeO3BdYVBayoq6TN0VdmqIZVzztpa4FADeKxPbmjGd1eR+mmNShpwhe4E6FtJFvwV+gww4KpjMuVNb911ayutpY507So+MffjiYhw5aixw8U8Z0DIxE1JRtjos9VgTPf1uSLVOqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735436754; c=relaxed/simple;
	bh=i1De0UPGxu9mMZZORKdCpCd+ifeK9m01ltmlvpGL/Bk=;
	h=To:Subject:From:Message-Id:Date; b=s6FIfyPHZ816ouck27xE/BE9R/NdU6HaUv5vwwNNx7lxssysVRfC63+LM44C1sHtdurVkMKmSRIfdc8nyCXnHZBCCXESneaMAZvF3yqrvlQAck/jXHklwVYs/hRYCogFWVo9uCsVcvzHLTWdLOIIZug2KAmQheA+RXb31fkR29o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/c4Cdl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/c4Cdl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D6C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735436753;
	bh=i1De0UPGxu9mMZZORKdCpCd+ifeK9m01ltmlvpGL/Bk=;
	h=To:Subject:From:Date:From;
	b=R/c4Cdl327oaM6X8mCXOC/rgIzG+L47mWKi5B0Yv69uLHXPzCSRbA3Ts0Mrvnm7G8
	 c71kdQLqZZtn5y5jDvllbkfunbIKX5gMtoHSyhVZMYbnWKKbDcNtKG/34GXecPOqzy
	 jGAo2QnYYU3Pw1xlq/gbUe2LhLu+y6s3I87aYt1ljw8GSVPVIDRRrS4zUB/MwfoksI
	 izy7g1GJ85/7wzsm/LGTr+8YiYWE2/MclV4VJW0bAwiaCBrDghLCPniIQ2nRrLzxtc
	 AbX7dOp+9LxJ9B6hDIBZ5JOfZHnHYW9PhPix6h8jmAJaV5Rcn7aZBNSTsbEieo7LAc
	 AOPoPqA6B6dkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95472E7718F
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543675360.5966.8164746912764846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20c5009f00303fc9d55158ff306d0cbccf0b972fc609583482884d80d7f7d70
Date: Sun, 29 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735436753
