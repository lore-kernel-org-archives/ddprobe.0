Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233FE1EFF96
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752219594; cv=none; b=ZoChWVfVv+pizSyXIMtOHciS6F/y6h4ojC7suhbmSI1Q/wlgtv3dlF6ZgP4sBDlOqsDOdry5RHLrrxQsh2Hrc2633A8ebnNEZ3X+DEkRMv443Q1afK4psDr9/F04Co2INH5hFTk0S28Wtzi2pD3sAG9umNPWLpDFmriq0wiBbdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752219594; c=relaxed/simple;
	bh=qLzh4TNJVGHxsF5dFAWU2BB3fSFuOQHqkL/uEjfTlEw=;
	h=To:Subject:From:Message-Id:Date; b=Fn8h7L/nbGMgfP23DXAKqpQDXQBFclQ4GKP9uBXehx9FgGJpyJck7Opbf41qcXX5tYWt+JdxcGiZluCYQCgdQ0hEitPJe7xwESqdwtdZ5rcpIKI5NlYKdjLwLDF5m28cdIEI2HjBTcDrdZ+n1jWt+JToSrgAb+cGdpCZGQclaXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t45fhI3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t45fhI3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2BDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752219593;
	bh=qLzh4TNJVGHxsF5dFAWU2BB3fSFuOQHqkL/uEjfTlEw=;
	h=To:Subject:From:Date:From;
	b=t45fhI3ZObACNPGBP1E8XFC4/zfZguvxFvY+ZwKdh6hhq2JIlIugZjIsTJI5kOdZY
	 CK7YngbOYljUCUsMLYhcQedjHudVtkeSJAKrsev2FxwuR7yIYzepTGjEiWQLbNsHTY
	 h7dVnTKQrEp4/WUoY1GrsqSBW6IvTn4Bl+0jJGVktY2llTHURpd4Yyp8HN3/WJNLyz
	 WyAg3bu/oIxTSZPfnMkRf4094trQrhs6lIkrVVK2sidYozZ7DA9nsSenUgq+PdBVTA
	 lrmIV87R3mc9zEXip3xw4CmMJYb+xbxKu8/FNG8pHi2fLn6CMru0BIXvKHZextXBxm
	 bKQaTgAUega/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B0C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221959357.23218.7286091683307623782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6504551a7c7ced3706b3ac4ecaab328fafe5d478335dbb59c40c01900afa2ae3
Date: Fri, 11 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752219593
