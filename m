Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457F7424664
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788815434; cv=none; b=XWR+bQ1/t0bqnmie70yc+Jur7iHG6DM529wjeYVeFMyClkDfgsadIc0zMnswk529RdJMAa4nLYYSmFgiyxId43ikLQQpeixMI32Ef5RPryWjpT+sowrF2EmvbHZP9N1dRDHSD60Pz0VTXnuWf1btNG2QAxv1bjEA6UEzFEY5MYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788815434; c=relaxed/simple;
	bh=efLBmkemIaR4HbFUz1hI566lWMjVaGNi8O035I/TQHs=;
	h=To:Subject:From:Message-Id:Date; b=QgC7SBKMuRboB42TxuFdpz1k6B3R134Xk02tp6hkWHVdj2gBK4yz48frNWw624VkWyQCHKsOneX/JTS2S+tMDdnIY9ph48wgtIKXARAl8VE9+cvHyw7egMu5OmP29ZX1REovG1i/KibLxOfV+hcwoRc7mmeuuX9iF32H/WLFviU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSAbPTsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSAbPTsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D206CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788815433;
	bh=efLBmkemIaR4HbFUz1hI566lWMjVaGNi8O035I/TQHs=;
	h=To:Subject:From:Date:From;
	b=YSAbPTsaVnzUdFNi664QqNx9Oj8RVV57F3EWaAlUsAXzw0sUF6+wcHYftOzUdR3fr
	 An9s0/J2u/lY80Y6fTppBwjUr6EEYxr5A4LdDJh/D3PvrbetmLCNASan+3GjDfl++7
	 /9dhILklI4arz/CbjebIXEGuV8VmZy2iJo5AttozhZ75MyHDnb0aAjDTNJIIPZjlnz
	 rRvJ9AW7qWme1hdY2O1ZDo/RVWbBiDpwwHd0bfK9uD6c129X/g3bdKF0/T7GK4/rCP
	 CNFTX6yZAneq7wR21sNo69M6LcmbUtFw0nE2nF9tUuwjabBFfjcH1g8vaCYUUVk2GJ
	 KczUSKxN+BCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF26CC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881543370.3132.12971473759462158466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1897239e94f331823d6dcec30900ab297315d8324c17f1ac8a75d16421ce9e
Date: Mon, 07 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788815433
