Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5045D48FF8D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791466834; cv=none; b=BoEIWDjOJTZRn1PTQAxbWefSggER4gWtJgeRUDPeE7TSZuqkXf+lrX9gU+M9Ydy/5DHr17NYjL2l9vzigdI+TbQYFSZ4KTi/+bXo4WjXyhMZ7BvoEnsM82+BYmDE5KmwJnHDZWGEZd7iDmfRjsUjb/x90XCY3eH/+bgSsCl8NHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791466834; c=relaxed/simple;
	bh=H0wkIN12dIoSls2F2yM0LXITU0c88dNouTtJPnznBMM=;
	h=To:Subject:From:Message-Id:Date; b=dL5ZZKyS/mEFsd4JJ2Nq3+FblBpM3nZlFUDHzbBLuyOvjW6dZLLr8oMkpSGKSkc2FfMse1jks/UOkGDXb4f5+1gQsi76NGNZrOEeBiq3DS8IG7CdHmxjk6aninbiqlqCNglJuosejJBv6rv1ZLiZmvxIPqrS0Oaa37w2vSj//zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7QCOzUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7QCOzUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26C7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791466833;
	bh=H0wkIN12dIoSls2F2yM0LXITU0c88dNouTtJPnznBMM=;
	h=To:Subject:From:Date:From;
	b=a7QCOzUGS/LIOKjcIjWAs4wuuFWoRP5HAfNbbHW55mQF338Syle/MZ+QcVzv8Hn/W
	 FxZd2f9Mu4BUgafi3IcF4z2gEX9qAIBKW+SKskhOuSO7U5ZOYRFPRTxvcxWILNWKz/
	 Fdym/ixvuQUp0Y9FQ7GEQ0j0Nz323GNIQw6RORjCuVPBpbvhnODiGEBQWrwC8B6J+s
	 oxXftqk0T803/tc9n1N1o01H2wlyT+geqX3PVMyArgQrEREd8TrEWHV3RyvosW+sw5
	 kYUEoq6FbiGeob+LMcfNjwtyeyQO8VGAVUBMA8q8zIuD3L5hGzfuWffAy5jVaTW/He
	 W1sB6glBLyyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF25CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146683369.11342.14140050255403979756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975e78f546314caba9a94ba3685bd7c2cc87a30f9b426f3993997f2c7b2b4ae8
Date: Thu, 08 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791466833
