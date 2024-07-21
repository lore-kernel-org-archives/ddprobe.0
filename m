Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAB3442C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721543754; cv=none; b=eZfRSqc0jOVDkOFt0LRhuluQ+jcTNZqERAU4X46/tfUgxYNCU9zj159Z5upq7142gH81j451I6ETj39gm0USNHD2k8V6+r0I5XW3yZ7dJBEJ3PQfjhmWEyNDCT7y7TlkxZE7un3z+Sk4t6OTXGH0jPHrjYMx8J0KBliU/Iq40+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721543754; c=relaxed/simple;
	bh=uxuKMuz/R3smnWCEpbVVcD4yMvJhLs5V5aTsKgEivhg=;
	h=To:Subject:From:Message-Id:Date; b=gbbMsvnsqZCowEfkmR5eVSLfTEqtKebNIILfh3FtlJtalbxiG2wQYRdTJhqUrK011pUJkwo7T4VUWPTmJ8fF2jrYSi8erQdSQFJmgxSgIEbSKXQi3In8Duoy+NPZpF9QWkJMu0Vmj72NzofH3xtBB0fOuUSb+FjpB1jquxsvJEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCjxWF+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCjxWF+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C08C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721543753;
	bh=uxuKMuz/R3smnWCEpbVVcD4yMvJhLs5V5aTsKgEivhg=;
	h=To:Subject:From:Date:From;
	b=uCjxWF+nBp+I4TPOs2iR6dgR24IgapsSTnygy4AyAxfoazBSR+L4SgmgL7L4oOPWC
	 2XgpFbLt/btmTBlX8XMIMmkFfRXFLPaF5bmtwjWaQqdqB0qZLe0GBrAAFsVfb5i+7i
	 HFMEHkmieCToIene4j+b6gZ28VKwQ9GZG1AvTCDblUfXlnGrxRNMLmDZWBkn5t5SDo
	 Hy6zfkyOfM86TDi/hZZ4Zz/7YEBo3AAxgpo6YKAqPA1DjloRtcga43AHZnPDtWM2TV
	 5w85lXkUbW0e7iPFZ0R4pmb73S7Ikv+BdUOj4/cxNAIjGawlNy4TF95ks9O78pIiDo
	 zTRE1bQXNPPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996BC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154375364.12514.15395489369255221663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573824a34eaf96c3d31d6b8f64810c344919b0c9d9b778dd32aff486f30444c4
Date: Sun, 21 Jul 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721543753
