Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DB0223E87
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734024954; cv=none; b=dcHaFI2KzVjnafzsIKMzzM5pRojkr57xY2tuMTPHIIk/2Ene3HnXyXZuyrExvdaxDACjzkVCigYzQOnx0TsLiOUyE9FYZZjF0SrkdPXFQxe4g/DQpwStJCBQasxBKLYGJLF8lZwyVGEHB/gsWPTfIE3JJJV4qjylne4Y32Edgj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734024954; c=relaxed/simple;
	bh=w65Xd2ODRGMt/l77K997ktcrSGImdiPWwzC1nmQAJuM=;
	h=To:Subject:From:Message-Id:Date; b=ZAXLeLVwN0ARiosUsdsB/PxQ59iZb17QP5l7Lp0pCj+6oPIn7wpFcRc3QDCa6b7xy2S7Lhw8UbFVYi27gaGUIRlYt9cM31MdD6uEQMZMIixws0F+cQubNF/kU4sUzKNOqeTQC1MeV7yvI2BjwmgFmwJxgrXC7fEc4QNAxG7sYR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGHDtchp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGHDtchp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E6C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734024953;
	bh=w65Xd2ODRGMt/l77K997ktcrSGImdiPWwzC1nmQAJuM=;
	h=To:Subject:From:Date:From;
	b=OGHDtchpsB3mywx6UOPJ6VH61C+4Z+/3ryWiZ7gzaQi6Uz54Y9scIoFuVJIrh3ajB
	 h7Qh9gkhqoN9MhnFsYcZH2pc0AGlYMoj9591/CvU/GenZPdRlMuwKOtTNBKoMooFFM
	 oPIbHty3YxvNhqtmy/11w4YXykQpZkVn7xgtIUJySfNumXBtXS26qzjHF2doGAVRoK
	 J21t/Om/OQbiewzyu9hV2qEQooQao26IJ2MXFInr/LD+3odC/izwGmS8uFIH5+q2Fp
	 vYPk8gLeKQMbSVSqweADf73BiYMzO1Ej3mJg96bK0F0zW3HQWphR512rmbNvI6qIlb
	 Z6PuVx4+ftRTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0252E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402495362.22582.15488171681848077234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31fdda7255e32f940fc7e177092038ab777882bb26422e5a696fbec557d978f
Date: Thu, 12 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734024953
