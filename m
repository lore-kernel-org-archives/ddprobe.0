Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F98EEAA
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746708594; cv=none; b=CjiPMZNmR6vQLCIEH6fjXpFnNTgBbF+zBmZZEK2aOoPMtY6NznB3NxAce5CZQkgghWEkZMfpReOtP5hoYw0Li2GnVf9sYLQCb6OZ25LYtoSjY8AI6VulZ6n/eHxpaCOHzlY3x1jrxObD12vsBwu4D2E51+eGLGGSUPcPiGdWQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746708594; c=relaxed/simple;
	bh=LSzl9RPPk+qmavoveg2oawFXuqzfEP2i6+YwYIdWGdk=;
	h=To:Subject:From:Message-Id:Date; b=YlTLJeQ1621lwZ1qdMuVb2HW1Wmipi7rgNnvY+6HFRCeT/TxcaP90wh1NqJcc9CT+tSX0u69rDGxWj8KQ1IY/COAPYBnNDr9LzMuBkhNOstgDWMiQjytUFxYdzJtoC+d9woHil/6y0ZTNEiELMwWm+xHP8fzYRzBO1JTIpdDB50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjs4wkNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjs4wkNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12AEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746708593;
	bh=LSzl9RPPk+qmavoveg2oawFXuqzfEP2i6+YwYIdWGdk=;
	h=To:Subject:From:Date:From;
	b=Yjs4wkNFn11e/3dpPx0dp/E+U/jaLF2mlbJhrkwNSEIV+QTXNyWe60jIRTaZPIKZI
	 XlyNN76xBYzFPM+8GfysI9cloebkiCIL/5E9E+nfvN1fOhMGx1MWnC5Sdn297yxxdZ
	 B2u7YAFeL5LZEJ6mC8odD+fne7L1/WrfxNnFi1xLmMFEs5YFAFNmFRkFSExxqQ8Zrv
	 TMdQexoNgUjXEHVe3XxB/TcAHEfM3TFqsmlU80eQ9CHpNTyhnjwm4q3O+/XlTgmRUx
	 +5qHCZ6PXX1m/YtRLzrCx6/sGfvYpxAJ2RdNOm1fWy77UOh5/h+G7KQLHpbQDZGwes
	 MfUtgaVK5utNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF47C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670859357.18010.7576390796376452854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e43691244491db491a7025d5a4f09e32f246f555bd363869fbd7e0a7459e9fa
Date: Thu, 08 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746708593
