Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABD4A0917
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791819634; cv=none; b=OgxOy29LxSv8jKbqqydS7KSQQg6grulfny2NOcHl9hW7kog+yVxZjwzjCZoyHd6hhnsc2TmWg8oalLwu553johJEmV2BG55KLIfl2PTAU1yTlpeYxAC9X8OpquT/H/Dbv6zFTzPeM6u+MhdcX6HSpwPEcaRaFBvctspBZrd0KQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791819634; c=relaxed/simple;
	bh=oQ8Xjq9dsI2VJTk4Hi9rFHyWjUAEqD6S61DH1UvEe14=;
	h=To:Subject:From:Message-Id:Date; b=HIOyXC8WeDu/86rW0r/DsD0zeEyN59uV3FhaWMzVf5PSfDuus5XDodTlZ6kxkun5TiLl5C/toFBIE4hxv79Mx1GaPr5t+KaUlchB/3GC8ze72bPlQAcjCD9ONo5i53Au8l6HEii+Pz/3Uh39/fN0d/3eC1FS04juh9PqFINnwJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imSBkhks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imSBkhks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F2C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791819633;
	bh=oQ8Xjq9dsI2VJTk4Hi9rFHyWjUAEqD6S61DH1UvEe14=;
	h=To:Subject:From:Date:From;
	b=imSBkhksCLzuOlSitZ6b8EsMhukIdroQ3tjNlvq4QO8V6UlRBSYzra01zse15IUTT
	 BW5VWSm5DkUdHOwjLXdt1mCaC7aUU8jchIUwi6eIsF3tt/vIVB2PzHs+8PN37fRS2D
	 w5SXtaNFbMUbTMI5cOus9zFlvSQKpj/dSdT87owWHx/8XyTsMs+UXyg/a5x6RWG/qH
	 /fQFjomXNSUjczSSfLgh3KrxbBMcCvEi9B5b8hYDb5ZGpomdwv03FKQMPL4Pu30eGI
	 yc/EvsoqDR+AHpo75rtXtJnZSzJ1PAPYzfFypJyigDjOIXEk+ayc2rZS9kqRThJ5YD
	 EK0WirSo4BhKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF7ECA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181963369.13502.1971644643322265108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86520a29fdb37483f4482ef47f5038a563a20a3930e7a46eb806b9433460dd96
Date: Mon, 12 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791819633
