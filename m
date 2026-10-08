Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232CD31690A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791500434; cv=none; b=BYTR+gPVe4D2Eci2mBA968g/XbuOZEmftp8gAdXHu3htXWzEq87fXjCdpUoG6bjgU8ImV1LpwNR6Rocjiom5kSq7m3/cS1KC13eh2syhOQYZkk7klVJNkdKK56HznLv91TpLk0HJg/c2AwQNfMA1IT+YeDLc0+b1FBxR/n8YWBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791500434; c=relaxed/simple;
	bh=Gq3iNDjaqG6JUI1eyJxfzx70fyRWJ/sWQZs/sKCQASc=;
	h=To:Subject:From:Message-Id:Date; b=HYngYuh9JKLQ04pie+XouMWS5G520Zk22F1qK5V6SLhmVWGnqtlFf4zGeRYscKACY5w3LNVA8u/DFeb5I2QK1kk4nnzTaTfKmuXWTlw2lBdRRNntaKZQCa0UId4tFKY8TwErPJdx+dVYmCSd88ixw3baWa4ULeBiHdcavUC6uH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avJ2Z0jH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avJ2Z0jH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9CBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791500433;
	bh=Gq3iNDjaqG6JUI1eyJxfzx70fyRWJ/sWQZs/sKCQASc=;
	h=To:Subject:From:Date:From;
	b=avJ2Z0jHwpPOSM1SXa/e3vc47VTZ8WwwuxgS99pq3awb+EuJ9nxMGH76AA8/UsX3a
	 DEs1X9Mcnvb3FZiK4N76mgwj/P1TW3EMM/nAS3kFpzYa8Ljlk3LRKoUv+oZmokJD1g
	 kk51Fg5gWh7C/SO2ONgwP1IH/3Wua08deLa8HYceiB9N72Z3by5ong+jYuZ9EtMX9A
	 wdqHIoty8XviNPWmQIEf3TGvwHHsfHRf4K49dpNLhQPxYWSBxKJ0XWwAIs9/XJ4FRE
	 04VMjitRiS4uFoWOVfBC2ilEuQ2Mn01Wuz34h8E+4/pXDnVOKvx8rnPM49xr8vMyvi
	 jM+nPCWhjD+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D78CA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150043368.31932.2484856505978792473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bedde052acb243c9febb447cc90625a8dfc424d275a8b655ef40ae30c85444
Date: Thu, 08 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791500433
