Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C50F6D1A7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759088394; cv=none; b=oDJoWQTilFw6QpX6jMhpMiD7jeI8PMb1gaFKT9tRs1RTUsxaKNcFfuDFIGp1QCoflyVvEMhmJqUl9qZH5N3LzLgMaV6ngx+fkPJugL/BjWBpc5gJDg/8jswZjueQUCGKd6MnjH+BWM/zDDklufenbKG5LdN6k2D9hUpsU0tzFzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759088394; c=relaxed/simple;
	bh=IU+279CLl/1OnQQtDPzPGyn2NDvqD11FTvwMM47mzRQ=;
	h=To:Subject:From:Message-Id:Date; b=hDV7XdXOV4q/+H3JB3c1LE72pVpNNrCkLdX8ASkHVZpYlvIsQDbS/Bkslic9MpN40NJhoxpyR7iytKOWP47p04pypWvLsKRVeVJ/85munG84hrNM8Q4Gd1sjNTxP/0cF54KRNHbg7JkyzIhFpRSBxF/0f/CeKB63dZdOZmbwABg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VonvQAeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VonvQAeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A24C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759088393;
	bh=IU+279CLl/1OnQQtDPzPGyn2NDvqD11FTvwMM47mzRQ=;
	h=To:Subject:From:Date:From;
	b=VonvQAeKCvJjp5v9IdVwwJ829PaqTKI74rMegaIyLNt47QlbapOCJ/KqmNoet4GO6
	 ePaXXHSeeUNMZoJ93v1zujal5V6dyvDZgOfzyRsQLK1lcT9oUlFPZQBuON09TehDLx
	 TePIFALzmLo15RW7exXmmjaZ/P/exyhZZ3rElYfDFcHdTyg9yFGk1NLrtBwwGEzKMs
	 zi8dlodaMwEN4pX6ftE+Oa1bbOC9cxQhe2+2zlnwcC3YExzL7x8B/xZ9jdZSYY2Vhk
	 QngV5qA6d5wOEOMqxhnKO+z3ZtYnq82eaTRyB51yo25u/afxowJsmTd5g8kC4ZR07Q
	 2KJpDtYWfQbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A9CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908839357.21258.8575133960214759491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f00633d67eadd7fc1377dbef04aa28b9dc49b3d12f451261810c973583878f
Date: Sun, 28 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759088393
