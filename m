Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5127336EC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775764054; cv=none; b=Q2WnOF7+ZDaYU/WKAl9XETdNmEn48vSPyxGrk2hW8PwwlqgdwtaxD1DW8zeN3tuGkojg45EmCeqkczqgrxldQT7sIoPNqYit9jGAgxDByQZrhO9xUDWINPPlRddnfV79BfbTTf0gL6FDpyvG4M/uKThzrnWxrBIDU3hpN+nqkhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775764054; c=relaxed/simple;
	bh=+kS/HmiPOCGxhyhCCAzBhHOiIbh3GUz5IF0wBJoo+Xk=;
	h=To:Subject:From:Message-Id:Date; b=okyLLd8LBuP5L9bY3SdWFMMWU7K/Q74pAg8mBWXCCTEUf0wQ9vEQ0PbXl57iEPzUodnfW12n5xpeyy/oGIQW2JFfMshF+A+uDkB8rmEoXuncKWU58aJCtEP/1YEJDrtZfTRtP1KLHwUXNUEe3zhW8lV4nPA0Y8AcYLVQM66DElg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roQZl++e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roQZl++e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775764053;
	bh=+kS/HmiPOCGxhyhCCAzBhHOiIbh3GUz5IF0wBJoo+Xk=;
	h=To:Subject:From:Date:From;
	b=roQZl++ekEotu+mYZ86jsuetFHdDkvENvI70rvPE1Dw2LnTvZ0E3fMZbrS32i8LZx
	 IDrM/O4YdAaIBOc3uLLLnyBCTYFFAyKcl8qgJhWORR0lbsIdlZbjGvm9epwU08VSLP
	 KACtkkCTEP4KFgEg1R0+I4U0xWEpb7S7tM05xpUq+zx44mSShygAbg7+HDJqLIvV7+
	 v6l6qsJ+TXbtobEv6iNholC4/SLq4/mQ2DZPK1Zrbb3aZOKX6Wi6Ihubo0lf6KD3TC
	 CoI/D5XIJ/bVpok901yauaxhQ3C3myWs4Sg7dDhxjuLoRvaDFmeVjNzGk/nx/hJiDn
	 sD3HvjeOF44Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4BCF364B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576405370.24656.13591507193900252290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6eea94c85245264fc3942bc02c5b7e3317c73213e4a268b1c07f8b0676f1f3
Date: Thu, 09 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775764053
