Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148ED83A14
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777153054; cv=none; b=HXSCDstW7EhYFOv4crzEzcJRTnM5/xGDjFwD90Yty88ZdLeq2IjayrOr5CYkRsQEqZYRdMdW4QDXHOmQVlRiEmTYjQS6nkWRH94fECMdPBxDyngfdR10y1woEGltQJB++cnyU/b4nGbiLoQ4Mq+XPtpSNQ3PLv4HPzZy8053wSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777153054; c=relaxed/simple;
	bh=74jWyYBGtEd6w9d/hh48Zokz2ya1dhh+/MflTLQU010=;
	h=To:Subject:From:Message-Id:Date; b=MUzQHztRE5Yly8SAwF+rjsoHJm9vEH+MV/uyRMct2JF8QFLIw58xEXCRw9E5H5+8IAx4iGa6YElABiH1vhLiEHEgqK7qIXnRqjAEuSavhsIyQihZkIDZdaRLgZpt4ELZTeYzGKsGScZ4bB4WCcn5C79rBZWEzQe+ShVjiWv1rR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqgpj3wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqgpj3wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7821C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777153053;
	bh=74jWyYBGtEd6w9d/hh48Zokz2ya1dhh+/MflTLQU010=;
	h=To:Subject:From:Date:From;
	b=Xqgpj3wGovErRKP1ZPs5ZBXga+EDxlpKHuXHWkEP+K3swgkLHIMmg+M9CIRErETX5
	 DkvdDpli+inyHB6jOSrnfwtuKNOoBD91RMfzkJe62nX2UIxNLQPwFU8uyJDs/ejYie
	 VCN0lm1pJnowKEnFgWCscqIEjvU6m4SYBxbiU2YIcl8YLYDbueRgWyPXnq9RjiPPun
	 o2Lo0zZWZw7GxtrSwsPWA1vlm4qADHvUBYmCp/HpB7cnRFedQto0q/hnnRhsbMQiw0
	 np3oQpA8WbEnHMfU3tks1d+MAagH8m6TtfRRTKH08FWfr6+DwfoHa1SKhbhAHQkCYe
	 iz+VMkTJUNlyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93FCFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715305368.1053.8002635298555326679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd68c52fd7ac80cd9cade1d6ed8d0292c70e5ddabff43780e9ed54e84f743e17
Date: Sat, 25 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777153053
