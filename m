Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7FF22A4DA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749037794; cv=none; b=kHNzWkyjQTlqJx7Yf7T3QBK1a3AnEY1hQlDFUQiVNP4u/Xjfnc2Z20Lxb4lE4j3FazZNfn2p5jSquMEk3bnvGNiqhyCq1h9sYW367JuXuw8IWa1QizA05R0mMWYd5tTT3PQeq/foNrYPogpBek8HWWcuw5EaAl+B2L6/Nrmo4d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749037794; c=relaxed/simple;
	bh=5Q548MW64IeikUOwaZ9lUEppAj5w4RjB/C/sQCP2dOY=;
	h=To:Subject:From:Message-Id:Date; b=gNxrkIuKrfOisQnKLBn2B7jiioHdyhIzKJwffMjp+3s5AehFt8kZesnISBYMH7xy5UaYDmvAacSpyzruhTnINTqqkUxbOlSEOCYZYBdRXYUqa/o0TeTI7Ub70pYEoFyFGlwxUOeCF7Ym3UfXS5b5IUupG4KfKQCpy/hGITnPCnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI0jy2uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI0jy2uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0974C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749037793;
	bh=5Q548MW64IeikUOwaZ9lUEppAj5w4RjB/C/sQCP2dOY=;
	h=To:Subject:From:Date:From;
	b=qI0jy2uTEojtyZUdMWaJEBhrg7IaIPd5WhH5Ls7B9hTaUINdr50KdzyEDNnS9LnNO
	 G7M6MUrrzlqPySVEA/SObPyQutNjU5O2gNSk63PM4Ka6KlUPMg8sgy5TWUCV7HHPge
	 CxC2VwWxPAP8YRW8PcYrCIq6cXhF+ulNDp59br3vSVWnARE1XJclWORGQOAcuZIp73
	 FeMRb52qcGuOVXfVu9rG0o1TKDiO1Ym0t0IvazIZjphf+POOyJR9g3Qr/wqJylWUXv
	 nskLmZXp++JvrQNPTfO3kW5vdTxkmZ8cHbdKnpA/Z+3V1a7gF3ClNEbmAlfKBgPNsr
	 MacazoIiLHukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92225C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903779358.12852.4308060725612028805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a37ffe7051fc427c92932d653e28dd5f587a98891dd84c999e3b64f6a415867
Date: Wed, 04 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749037793
