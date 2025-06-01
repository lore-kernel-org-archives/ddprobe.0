Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402444317D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748786994; cv=none; b=Kg3xS29pQtC3FEtcF+Tns3/2VHRCc6eRKHV/Zobjymhh59RuT8x1cudNIh0RrcAUeLpX49vlEjNzIg3blKqMLXUNBvr2e8dxb/TRDTIJJGLMa+WryGnJZCh3s9uVi+eDvmFw3Byvtw2zfDxHhr/M10IW3Sfn64MjnUuE/5BP4cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748786994; c=relaxed/simple;
	bh=z3CIhvGhBwdGbZWTMenSf74m1pRAQsSqiOC3Kdvu2Rc=;
	h=To:Subject:From:Message-Id:Date; b=LKvml11atYY5Lr+venr5rNPqa6/W6agNDUxeU2WrGflmpO1USmr+akZ5fT0HD5fkzWSAkE2pfU9iS8UGUD4gyD1RuwT2AVMHYWepZ4aPRBgard1IPubv85Mm4piDH3poQqOTScIs85KAS81sZivXbFhSNk08R7qqrC8Y27En4p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADyMJHJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADyMJHJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1ADC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748786993;
	bh=z3CIhvGhBwdGbZWTMenSf74m1pRAQsSqiOC3Kdvu2Rc=;
	h=To:Subject:From:Date:From;
	b=ADyMJHJRcH7meZbVGRyuySpjXQEs8z/1zDm3vv9l405U92DhifvAS7WwvfvDk+C/K
	 RfwGTU6DIFyNewI/Kryr8KxyDCjl5ZlbcGJTA/i3uwSb1rv3xtdfcDzE7raOetBwCO
	 IQqsx5qVKg4eIBSZTudDxZblegbmwq+Ixpf8Eb1MipELV4o/SyLp4wHOwEQN2wFeCb
	 Ueut01v391SK+WJ3qKuPbNVJ+CW79Gda1hyNcZXCTi71Ohut84Xf19HVZEm5nIuxYR
	 IMdHGOWAUe9AiGxFvXfAJDjBgFQC4poVjHBBAZPWwNSHFCZ1AYsSZaCSkGL/ivcUZN
	 Z9h7u8nuQPhAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9848EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878699360.10572.1231020139843890129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcc600d128aaec9b1dc1918c16f76e4bd8ca51a48c35304690ab21c4bcda0d4
Date: Sun, 01 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748786993
