Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12540129E9C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723193754; cv=none; b=p6aA/ot/MqDaFTud8tEWmZUhtB49MAzR1G6nULTVadWCk4ZLNPyijzhYacj8e5vKtjkpj6JqcxykIrADdQyLtR2SG+Rz4PHIPIWy981ll6KBgpK/MUeobF021uYw+4yl/BDj/F4r9FHgucIqeLrMr8SItRoij2cpgAxOo51yOng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723193754; c=relaxed/simple;
	bh=mFN09ULLRS3rzDqOB2WprHDlhEoqO+jyQlfZ0I5HJ7k=;
	h=To:Subject:From:Message-Id:Date; b=IQiP82idau+h2FtKOoVGWsve1YR1lHXr+WHf0nFqKjhopqqy7hEqJt/FQM4yFDs6oAPiJ0oECDJy0La6/v32euKTOVlfqZyaNj6Z1/u7ElTXN5NM1jnS8zBCUBTxuSLz4H8AQLPEQCbEWmUv2UEMaypk9zSd5J8EbTCHQy11REQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hulap9pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hulap9pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D1C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723193753;
	bh=mFN09ULLRS3rzDqOB2WprHDlhEoqO+jyQlfZ0I5HJ7k=;
	h=To:Subject:From:Date:From;
	b=Hulap9pAILp8QcV7qKEsGGLVnKSecmm9EzISlSZa7BE+Icafg+3oMP/8p1V0B4mJv
	 MdNgzG0vjvno82HJe6Mz7iMjYxdz0WvDm92hTtb7rmiTlq9cdYXk6UvKWkbMtrs30E
	 eFCVmGqrt3arut6mHWY662AC3p1irf0wYG9TI87jRrr7qAGw+s50j7gqN6oX7rz4N6
	 LNl4RVnz7GT+AwVW+Cgh3Fcip7qMrhy/GVAUhN2GXg4qJ69Kyj1bc8NUIiy8TA8Qxg
	 /Nc8rxUUBuwnBh3mJA2+Q4Ux5gb66Frp8piF6sWP7MURU/S4kI+cSWZ014Cqyv6BoI
	 z1022DGb6KOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93222C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319375359.2511.5792820319635169278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc7b5deca892380f98a94d8a302f050194f9e79589c0cf76c3a65a51290df4
Date: Fri, 09 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723193753
