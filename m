Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C09221FF3C
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755946794; cv=none; b=V/ke7hqA8GO675Qs6qWlszscXmupB1Rjum78+e++HW7MPzn2wCyJvSmDf7q4ZVNX2iNOWNzF0sHcQjuXUgSJ6bOmfm+pMpoXTBYwaPzwKPfqZjWjkByJyFN0pivgr9nuC0JrXyB6/1X3e08t9fMud26HhQgivpiKXW0OpQNWA24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755946794; c=relaxed/simple;
	bh=bTYZdn/VtOV5extbUX5eMP0Mph1oHCIECgDvqfsd1fI=;
	h=To:Subject:From:Message-Id:Date; b=SPbqFZ2McRJ0V2+nUMOP4mIKWNmVPeKPwDJxbMfgyi3y4/DwzpnLueAH+orLGatZ/hJSeGtNy90FNzzgQX77iiqe4bo4IDz8fQSW5knYA9lPN698wZynm0Zqk9yk/ydDtAyuofmqnRj0owysbcSIPSZaROXMlmLZraH2CHqq0gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzBCF8PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzBCF8PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E484C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755946793;
	bh=bTYZdn/VtOV5extbUX5eMP0Mph1oHCIECgDvqfsd1fI=;
	h=To:Subject:From:Date:From;
	b=fzBCF8PBGpuUG5l/k0iVhuqXamXQELhzgMjUCz0HkUM0HNlQsG2U4F2SRm2tr6Zwc
	 4MjMfcb5ah2arZZgrB9EH9xTepVEF3Fg1IKdXaqAHRB4qeTrD44TCL2WyTi/CXJQw8
	 yYq6Ccfr0/VoT30sxpF2zsQ6zLLMQsQIaRQMfPwWw8o10N5UsBZC/X9IrblQbwP4ej
	 6cskyWG/5hdzvo1NcMojT7n+c459DIli1ea75rgnX8xiRUrXBoMOHMGj5l9hmp7/Dj
	 nuRezYPT1d+bdX32a5+kUdQNnCaxfotbcUPPtqkohcWqJmgVIVm4e468sp0dqG4PKW
	 RFJqL5X8DragA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036BCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594679358.7424.16459410341444503415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7eb26fa2d9c4cd9984b593f5dfb1f0af4298d0d67d6162f791182165cd5a02
Date: Sat, 23 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755946793
