Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D063290BD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774476894; cv=none; b=M4ed/GePw9L0WpCEMWHDsZzjU4tHRlWW4SP7nYLGt8/9JwvS+ooabIYyz0Te8wxzdVZnd9Lwhtl3qJnjahe0pbJErK40rjIZdoi2twJvYMeOtZ8L3yx/PDxirAXbqlgUmzgU2TNnSYxL8v62YdXl0YAI1ENrtR+NlxLOdOKL3Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774476894; c=relaxed/simple;
	bh=RZK8ZdspzgZB0wK2N35sBYB01kZziWOfgUcDWNjStAc=;
	h=To:Subject:From:Message-Id:Date; b=cs9opY9uJz8XUcSnz8AifGzw842TpR5gjJn6nVp2oUo2SCzw29QwVo/6/H2hrasc0POR7cd6cdwoCEgtNI1KaFXjefJpQquG1dVj3Ag9ze+1X3hA8XXt2zdGpJvGRz1J6KViAssWeWEjRi2Wnd5ttcUrdxUHpc+DEw6rgHIe9WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+zkB1Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+zkB1Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD91C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774476893;
	bh=RZK8ZdspzgZB0wK2N35sBYB01kZziWOfgUcDWNjStAc=;
	h=To:Subject:From:Date:From;
	b=I+zkB1NvNt2LBzE99+2JDti6eUirJOvU23CwpRe0uLVWdI8Nk0lGuhwD28Zyec5Wy
	 4qnWswlMb/w7/zOo+Q88MlzSB1o7WmQ0hejww7ARw81LzJF/ybeWBfq24N2apPswQy
	 m4h7YHrtxAfLuTkLwQcOxFSe5wFjIphyS+qINx1MRowBPG0QOS3kFR71AJz5LyzB85
	 acBFT9NowXNFAc94iVkYBxQ9OFIDhvlCy/LY9NPhAbm2VcU7ipFVGjrCc567cLAPJh
	 iIpIQElMpJZe/7GPBKvRyYdfvOuIM3kuctO309Q9qUoEhCPDUVG/Av4UzpvU0sSyXR
	 BXxPMNMH2WuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94734109E523
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447689359.4326.2845347399870502059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df46f894b84c9f05f7d9ece9aac1a6b0e7e36233099321f4775a56e793a994a
Date: Wed, 25 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774476893
