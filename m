Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EE92D063D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758065395; cv=none; b=iJfz69wyCIcNOACO0oBefZkQodcQDg3jZbs7lT/huIxSgIUwoSW5OtBPe6ULmQqnM2p05n6CGtZi/HjLPq+Ne/u+bNcKp6qVyoaZdX/dTxwL6Z1EPBXZCwhZIrsR0gnhwPmxnGQQ53bl8olbKTz7Kl8DhjBRPQxmkjfFyVHbbhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758065395; c=relaxed/simple;
	bh=QLOQ9gIM6FV4oUB+An83IqHmpwkvyfTGScfQGN74wKc=;
	h=To:Subject:From:Message-Id:Date; b=d4Fl8XoypfXG17jx9XqelpOXJLSvpZH1dU8RgpDmkiHty6SVwqF8S3JNI4pjvbM4YgL8RU6PjkViN0BqpNIrm5a2VmVzLbvB7R5cF0CMm52gLTqAOXcfs4kw5x4PqmawRXwFzftOZpm9cVZTr0vSwk8deZF5MvZPyUpWWMU6TcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1ug4wDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1ug4wDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB4AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758065393;
	bh=QLOQ9gIM6FV4oUB+An83IqHmpwkvyfTGScfQGN74wKc=;
	h=To:Subject:From:Date:From;
	b=i1ug4wDUnbHrMDKgKAoShYhMiSHjK9JfrOsOXhMFdMG7kDAMQnJTFDSazTRKu5Y1W
	 +wRMjyLhzqmoJbGb66ScGoB0kGcoZmyKdZOi6c2lfrHhS9muwXyCRDklzRspem3Vhp
	 Y+fDHfu4oK/2NnzzoPu+P28ejXT3EADnq05veC/SsFbqydAAcoxRM648L+NPW3p33L
	 UDhMyKTM1V8zom4BJHe/AAQWXXCPpEOCJRdkQzVYTqvSiDzN4/otf9vK0xt6JDpEsB
	 KnCiu5CCeqlWWsvDefaFsiMOdmhAuzC+vuU9GmmONfGP8zp5peWNZJSE4LFrBKfucz
	 bhV+xKrFRgVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44FCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806539357.15063.14242249421102102757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea02ae754fbcab3346ccebf8b2ce1d53b7e37a5769f23a51aa6629f5a766d13
Date: Tue, 16 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758065393
