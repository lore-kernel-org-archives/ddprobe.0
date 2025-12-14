Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423AE299AB4
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765750374; cv=none; b=RbguznTrmBmhGoyb2BpqLMLz3hkx4KXcRC8ebzTUXttMjtRH+PiMalHA2hwZY/9L7XHFy2BO17GBySFykTJYl0Rr7vBfGtonzdPP1N4P1/cVej1IDwLs8kUSmN92yJo2X6X21BHziGMuIPwtxK47D6ClPqQGFOpe9TXUI/HIF44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765750374; c=relaxed/simple;
	bh=0JpCUVTOeIL491GrtDUhg1oBLtIjHKoJdLDDB7oeimI=;
	h=To:Subject:From:Message-Id:Date; b=WpQWaoMYF0K/X9Xz4CzCXVE0wHgLLnfLcs333S+COa4lXiXYDeMq28lUZ5f4HyXQ8rJ/GInAIzw6gaeJ+Psdgn535Euv2ue6+ViiXqxbFDLTp1bGjo21diwIM5C6FPBjhhRz01Dpa5jvqf6cCnzZTrY+kYYVz40KnodzmtijNO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJa8/soF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJa8/soF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B660AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765750373;
	bh=0JpCUVTOeIL491GrtDUhg1oBLtIjHKoJdLDDB7oeimI=;
	h=To:Subject:From:Date:From;
	b=XJa8/soFmZEMuBHqmhP01mIRLaqJsVYT8CDN/lFRcCDFA6NyOnGbGNt3WcBYXJNW1
	 ZsbNsuw3v3kdusFAGVrZ6usvVo14mLmBNo3ZYRUovDFY18iwl0AtCDSulePRgEa8Er
	 DwXkUnxooj/3pJw6Xmebnxqc1VOX/bUHsf6mzh6cp9Oxom/9oTWh7SVEukeFUPzt0i
	 2JddUgPtWyD4u0UDin5N1SCbQVxZOLOxXmwSwmtHelkIpBXyb2eKMIYMlTsL5amiKL
	 3kF3P0cS4OFAVoDqu+O+9DCmu+e3l/IKQ3WZt8oSaqZhSlHQn28PjIns5C+PoTpgnq
	 Ankj/cEPujnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4DDD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575037360.12643.4780284607648492504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f595194d393491c3272540eca240b2bdf4c27e1705df5a050a2f60fd826c6181
Date: Sun, 14 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765750373
