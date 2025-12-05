Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5B42D7DFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764963775; cv=none; b=BNpL9xo6f5AdqCqIHCr1+81fleNAxR05ZrqEm8qgfaS9OPmjpvHNN3KlMN74FTaqBqsL4zfcHuMYzashqJz5lBDjKypHSOkHLaKPudOhAQLqOKOhoTy1JaVBlHGARL5Rcrg28m6AvNKtWikwCp2q6XPJ0dZ4bNrgj3GwhiBNSsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764963775; c=relaxed/simple;
	bh=/tcKCly3/E/Tgv5QmxFIs9cQI7kndsxE1UG/qpN4D5c=;
	h=To:Subject:From:Message-Id:Date; b=AHyxaL4Di9GjpfmYRDkq6wuFeqIw3sVlpp5Af5TDRLHtXjLRjHvkjPgzgMcFQZEKj99GZU3yCHERh9wkbZLkZtO1SEynJOGNUAOAnN0+NsaFfPjKg4pyGOcegi5/9Mi65V2xEz4Fetx6vlb6gjpuykEzjSQVvg+buOcRZ4ecl9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsEVGxmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsEVGxmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582EC113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764963773;
	bh=/tcKCly3/E/Tgv5QmxFIs9cQI7kndsxE1UG/qpN4D5c=;
	h=To:Subject:From:Date:From;
	b=YsEVGxmq5wCQFWxMUTFTDbTDHgU8nfqptT3vrhW4muh3k3wOaqcAa4zs+ohDF+y7R
	 3Ij1iMBbhzRhZggEkOVTiKkyiwJkebRutIvSwtDV//oHsLAVdzLUvKzLmMZtGIFhkA
	 Fhcshqm/nzX3vrwNKiTO3sLaOba/ossIPZN9buV07qxZUOe8y859G8ebR8p9wDWUGw
	 8AvVvcmgB19l+qgMTsX0ZGghT6t+3j5QBprErCrKQr3OaIJ3nGvvx1kLb62GrBSIJH
	 ZmCsrp6NFkk3XokZk3mRvH2E3ApNKGWFWOQLjlEm9SC7vNTc4c/tsnseomaoxCDW+L
	 7c7e6jdgmgFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94872D3748A
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496377359.27484.6970377965870093229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffc0e384f2e3d9b4293aad3078c4118c60a33d16035dbb87d04da331769ed82
Date: Fri, 05 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764963773
