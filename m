Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3964D186A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728797754; cv=none; b=mYGby/nP3TIvTrwzHmiO3b1TYnfYtqXJyM1RRu60/NrFuWMHWz36f2trWIH0fdzXoXCtmzybQlVWXj/CofRBTwmp/C0H1DGyhI6MGFYAsI4SEayoPNsJU/iajH9rJ1nTnVyxjso0wPGLQxHWy3hD0uSgd9Hc/iDL49W91eSw9Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728797754; c=relaxed/simple;
	bh=oLNaOfpV+zUVMEd9Rx/8YdjpKs40vcJHO4T0netZN/g=;
	h=To:Subject:From:Message-Id:Date; b=erR4KxSr6jfw/dMYn4QrAPyZyEp6odHFMPT0RlIEQSmfJ2rJB3qECL/p0N2GEKDJ+dwLU13oGtg/fpJ4koHFZYR7AKUKyPuWK3yyVfgAhiTJ17wPtuwMjY8EhC8K9F5FKxoJtJEIigJTcLgNoyS+26APAsn/MOuxk52HGBMilk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb5qh9Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb5qh9Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B096BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728797753;
	bh=oLNaOfpV+zUVMEd9Rx/8YdjpKs40vcJHO4T0netZN/g=;
	h=To:Subject:From:Date:From;
	b=kb5qh9AcOvGnQ7VQ/ObSL1NIJDn0YXOz99Op+RzLi6vAwmVIfxMKztnasOwOEfBx+
	 VxVdfOIpVAGLU2s9+tcYoQVgXdDPZFVrCpDVFi3Aj+aYQTQeB6bEVcFE8286FAPWml
	 zAH1wfbrI+5VeUQGDS1Lg0sizWh7/ge1RscWJZoJgo/vj28U7+8aqRqnZNeLmbFNLw
	 Q/vvK4BiDoLEL0ihTIzvl0QyBHSu4CkLjOdMlfbUPJWYFbiU1vK6pb2hGLJMbsN7aB
	 PcH94OH865GtfIVwIU4dv41aJKkS811MD6mJcs9rVK2fP/ReVlZHRaIFUdCirLofmo
	 ni0/gtxK/xzcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD7DCF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879775359.17917.17316845378064548188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee4206ef52f25ba5e39dc6bd02993e69e64e6f40e0ad63bacf5c2caefac73b7
Date: Sun, 13 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728797753
