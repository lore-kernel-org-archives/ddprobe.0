Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1248D15A86D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773030894; cv=none; b=j53W/6MnUDIXTAViGLpXAezA8Drtbtb3wkCcdF2SW/xXGWG0GIcyGLRL1g03AEQOZmYHdQNIUx0LItzm8aEfHRPWZlnHfREddEvKvZ2BuFvoNdmEUE3/VtqqsvNJVxF70QUVjUqtN3vV6qIWPsdmnnH9/tLopk4JHyqGGJwDTr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773030894; c=relaxed/simple;
	bh=MaXqG2ghvv42l27OptIni8Uw8VPzdWVBQKk0t2YI6O4=;
	h=To:Subject:From:Message-Id:Date; b=V537tMwJOSWtnolDjyjfMNFGTA7q/Lqcq1h7GU0IJZusoj8Hz1G+4AfGQEIIxkZT/pcZ55+j6bKoi1Dg1w+OuO4tO8IspImM21M8pH3RJJPT8i5PfCNngt3ZQ8c/sdYam/zjRLpy8XKB10be0yaRDnlW7hOvltk7Ip7NBfW2VOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp1JjCre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp1JjCre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A74C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773030893;
	bh=MaXqG2ghvv42l27OptIni8Uw8VPzdWVBQKk0t2YI6O4=;
	h=To:Subject:From:Date:From;
	b=Fp1JjCrep9vQmMC415icc/DUENUcW3VTsYYO52d5TOL1Xe/3svTO701dBWoYTko8A
	 lG0LRtvvf7H+qi7N2HcrSEybmuQO/rsGWdq9CZt6vAqn+T+/Vz8VMdZIHEQIt0erU9
	 1U2VY5/TiQuLqxzMJDP2M8EIVxTYo6FJqB3x6G+2krC3rpP1xZdwE++/6BTBB7H02h
	 rMPwmcp6rY3Dz/n/RRGbjQ2/uAZmrv0/u5Wx2tduGkjNdQH5fWsbLLje6KNfH//RFw
	 kkL2EBnpgHKKV/XMlIJ8/SbgXqudfZHVeVnLJhgndsFdYjaZow8sLFykWRFlQO2ipw
	 vL/dFTSpJmfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A9EA8554
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303089358.18337.6404911451627813912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b9e1d3ece4408a9c21018ed6727db48fb8ca70baf3231568a47691a244b347
Date: Mon, 09 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773030893
