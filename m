Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5598A3515FA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788630634; cv=none; b=WmbSuLVxu/vYHtbzV5T7O9plnENzEAad0DELovJAvyA5uOOKjYqI7YY0HoH9cygpVSYFDamdY3Plc/PVzcA4fX1agvsudaXq8YVba5PFulfywe/861C9k39obVo8BraKffFH5kAYWjLlgZbsce6MPaJT0beSmrRF1svUMaBaU6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788630634; c=relaxed/simple;
	bh=5RNtmgz/7oe7mdT0rP5s0topM+oH1epG+DVWDMDi0jY=;
	h=To:Subject:From:Message-Id:Date; b=A5a7ZlVp2bo1makaabO84Dp5wVJHv3scEKS9sCB55OkZ2ml5i+dn+B1KhaZOhMcXu3X8IYNUAm29n/N+nghdH7Kgrxqes7KmvEALKrbOVEwARIviKc2koChuvhOeUfYPeturcGWLPL7cAWYEihy9sOTuZghOwGOYOm/5kUEpRnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csXXiOvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csXXiOvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0029C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788630633;
	bh=5RNtmgz/7oe7mdT0rP5s0topM+oH1epG+DVWDMDi0jY=;
	h=To:Subject:From:Date:From;
	b=csXXiOvEBYIw82gRyHIigEy15nobmrykinzJMcgE2s+8rjn6p+tctKSg8AsHT4qbi
	 UQROBJNKjuswmp1xgAXRUcfed7fRxnXmjx5V43GTYDFoM1bmwK0LVGZoh6FVpP2qdp
	 sRk2Wfm5tOcHuioaNvJ2NtKcJeVf4t2bfsNRE5sJBkN/TAAwu+co0oT8AWdsa9INh+
	 cBWrBxB6FcWuVNF7i+C/DwJBr6eOD4DZ3WFrsYELAwn6gAScWsSxq4+vfaz6Z7Nkho
	 eEg9NJ+Ic7cUhli0YcrgOTL7F0QA5c4tfDModaAb6KSE2+GgwpV+nU+jZNCPPIo+GP
	 18y1mO2R3SQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE8AC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863063370.9414.1170843179847218362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d15a4604cea7798b3f2c603a223c30562cff47109bc22412afdd9351fbb5cbb
Date: Sat, 05 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788630633
