Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCE28837
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734013554; cv=none; b=YmW4PQDCJ6YBuNwZSylYIytY6yhRwwOiG7TZK+2NoSovyxZAk4PmQBrzNikulFbSdYSlvPV/r0jPkCfeGF53SJxcYbuY76+OrkRhq9DD7L4PGE1TTl7Z3EFelnbJz00oYYsqLqkYYDJl6KHfq1MwJrKkxCy12KfLRF4ttrZvxxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734013554; c=relaxed/simple;
	bh=80ntBAC8AhW7swMPFxHIIFb5rnNXxI2ADdeOSvXIG60=;
	h=To:Subject:From:Message-Id:Date; b=e35kTSlsl4yRaRTkS053PHIo2feKv0JSmCSDNlcVQZg6hAHcwaedkcKpLwizj8h6qtF9AnpIEISs4Dln+2xcd7ArU38AEf+eZIeYV8wC1CDBWupY1b15TCGT9YLbK9uIvYqH+P7Y34SoYsKeFtltpMtBl9Rmm8ESNP+MWGVwtbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkOQgea1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkOQgea1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEFCC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734013553;
	bh=80ntBAC8AhW7swMPFxHIIFb5rnNXxI2ADdeOSvXIG60=;
	h=To:Subject:From:Date:From;
	b=hkOQgea1NKzKpCws5rAtt/BT+agZwABDFKTkVhGflA1SyBYNKi/OCoPPBI5cOa22a
	 L+Ape+86npbWJDUSUWcWXMk626KR/TxqTMa7LNUpF8gc89su3+TdkcSJM7TbTWrHRT
	 d0YGljmftcZJssQl1l/yd+8wgXeCI0bkTHAxOV/wgIaWG2Axxt017IH3VOoZafyxWl
	 MDFCw1B9kGdHiZAkQTDWHSppb/uxU18RI9qm3QwvdUDak5SF2g7lXDhBcCvZ6Hzouo
	 O4XnKsS+3woogrAOZX7Wu2JyiSuRGichqDxUudr0dZEnnplX+FwsStp95seuznY9pM
	 bdSg7WEXXuTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BA0E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401355367.5290.14801311135673900824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a24a29c2ea433a1f61e4cfa72553831f7cf54beb7342dee8413eccc6a99247
Date: Thu, 12 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734013553
