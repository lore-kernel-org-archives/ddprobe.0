Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488222422E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757050794; cv=none; b=TMHQmv5i0ub1ekB/o2wNoXzRtS41Di4xkHf9brkFavti4VOyQmb+f7EIFUTMbefrr/l02pQRYFs5LiABDIIZb8gwpSoyD/7o2oj2j+Hh6Vn1E9NF+mXtwuNoEPJlpBp1smoIxzPUbrodNAzJmJ41w987FE2AMzsxyF77bc6cyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757050794; c=relaxed/simple;
	bh=Z0rq6/lyy1wxCx/YOoLHxCkYilFPcTYsntDIP472T84=;
	h=To:Subject:From:Message-Id:Date; b=ntkrL6c2xjFXwIHVoN6gwJGQMhCnrYcPPovAuAad5/p4I6pFSeE+TSH3V33JmQ71qzRMVSv4ihepaoQ/CJDmA/mdqguYv/JpyvdJmyfxef8YeAVrqYi6gbVcQySg3Sw2CBdS0bqf1T9uj6rNzCBYjdL3CZcaGxeHX6xMqRKUieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9k1AHef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9k1AHef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA182C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757050793;
	bh=Z0rq6/lyy1wxCx/YOoLHxCkYilFPcTYsntDIP472T84=;
	h=To:Subject:From:Date:From;
	b=Q9k1AHeflJ2XULhJmWgDtiXRe22rNONorxEpDqkCTOymNgsyO6+ah6G8ZosYlxrAk
	 hTj1pdAifzu5jQKFD3xUYr4JI35RilUFM9sPr1f8RBqPVU3IbF0eZfmVButoli7UtH
	 n0favY3qtWPsCdvfec3tn79mT6jLXaPfAfap3BV5ULCEbYV0c4xyGcINA8DsvnEz/j
	 m6LfoqmeVeidraAXmV9Kb0sGMH4Nxser30G+ClPsO5JyMVsyz73fim2znDITo02dwQ
	 FmKgmgRGlT2/wC6bTbADBlv/0IqqZ8UbJ3ETP1NgLLXTF4zOFw8ikFiO0A4RTd4Mu+
	 VDKyp7XQZ5ZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F7CCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705079357.26064.12330943915785206401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53076451ae70046899904b8f0fada1654cd79a6bef16f01bfbbba4e9f0d60716
Date: Fri, 05 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757050793
