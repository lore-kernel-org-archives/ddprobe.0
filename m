Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006CF39EF2F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774955094; cv=none; b=DvyHlSRek+5FUcUkUITLDe625mBAozaBflcjTmg3ZguoQF4Su5Yq7TJdWsdVo/h2MRkYsFs3zk1FxPnlcNqTEJz5g/UjsU9yN2gNUcPtYj0dJBPaIeQOwZjnqIPCxeV2PLX1YTs9Wlribat6IigulozDMc3h3qz4ytCDvtUrqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774955094; c=relaxed/simple;
	bh=LL1per7ikbUQOgqymjS20hCPvXSiXELQSsWppes//Tg=;
	h=To:Subject:From:Message-Id:Date; b=S1V639ZgoqveyzCxvLCLzHrEqb+4lsevFd/EuT9vdNqaooCrUNUH1t3MBQ/EZghyWnZFhK1QL9DwTtrA1AwOEJaDwayA/LVhl3KgeLSMn4fAOCKgXNnFV8uKMtpcVdKuGK3jE4EOhxT8NqC9mfulIRnGIvplZ2X7G7xNbzytcyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQaGTf/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQaGTf/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E33C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774955093;
	bh=LL1per7ikbUQOgqymjS20hCPvXSiXELQSsWppes//Tg=;
	h=To:Subject:From:Date:From;
	b=WQaGTf/Zw4ghO7Dnmb/ljhPrJJDmQN++NRLMAFT6xqdaO3XCSluAYm1259CNjosEG
	 bdGzVU+OtpooT0c40MPg7/pp8jwd/FDOEXTIcOA2Dwjan4knkPrhKnojk4mAJvaUHQ
	 tE7KQUER08KcoP3eGWxA/h81/moD6idKZB97TlGpAV8o4KMu0zslGze3yo+3RJPkhw
	 Fm9P8g7YErKApeCaOLUqpwJ5lulm9Hve8t1Jurw7qDriwNxRJ5qqBwlAzD3wOwOR8i
	 SQ+zhoI5WLSpBF6S8KwQ/pv3WDTB8URCEcvq3Jb1MzeKbd2ff50gUg4yIJK/1mxuf4
	 rrRUC86GZurKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A61061B26
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495509358.23919.7365395769892589052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd099784ebbb62370e2d2ce9d982d4a9cfc333914906eea0b3cf06aa24a6ad0b
Date: Tue, 31 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774955093
