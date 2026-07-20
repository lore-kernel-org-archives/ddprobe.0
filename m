Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C113DC84E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784544516; cv=none; b=qRGEBNxY3YtK3/B9Za2nAvRUT2epwc/9wOoN91+EyfgeDjUcU+kZaGYxd05D/vz23/sSIf1KSgUgorQ1Cvjm/ga2OTEOcUmg+ae3nSetbedcYROclriYO452XxiVCCvipeoYU1JuG+ovwImmHZYX50qYq6ZM1U8Mu6HyI/9gk60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784544516; c=relaxed/simple;
	bh=58u35OX/L05EMfB1RNUMJDcTtpfH1WrBnPyUzTZk51g=;
	h=To:Subject:From:Message-Id:Date; b=gXWQBStdNwo/xaOh457ylWja8IDIsTIjoycM4XlIgu33QwBP2SsRKjpGAFvyAjEwtd+6sNqLmc+df794cZPAcXnREWwtA8OC/TfRcfFMmq6+H8PvyLOttHuiyeY2RGe+OlLeBVdvL8pr4npDf7uVgkl+pPEk11/VIH11Zr3nEtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0arNRtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0arNRtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA68DC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784544513;
	bh=58u35OX/L05EMfB1RNUMJDcTtpfH1WrBnPyUzTZk51g=;
	h=To:Subject:From:Date:From;
	b=K0arNRtm4ONDS17r0SlzGNJ5aHEfPobkFSaMiVvZleYFrlhrb/2geOvGmOtqVQ/0k
	 DOZsKnr2bEgHnQbWNZvMVn8hWxnziyak+55IpKmvI9O1rtmTdi94G8qTxLkGvsP3Iz
	 JspX7fXGD327JOoKeUlDkURI7pWKsZggx2bnXIAw09aGJupHmjMT2QivSP8WhGsayL
	 TwlUamHCBDwMi73Gr1i5lEfVAXDnT18r9f7Zunb3tLTTX2QVKADsgOukNEcshbx5Ka
	 b53WTFflQC9a3oxuIafnSDNbvSqwi7PGnDZMiLCXWEFnoj21tCqiUMpJQxhEN6rGIU
	 WtojD+29JiNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A809FC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454451368.5168.9447539853029879171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6401dd511bc814c0c86ff7d36d0034ba2b8a2ed4985f5f9503c27d3c572547cb
Date: Mon, 20 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784544513
