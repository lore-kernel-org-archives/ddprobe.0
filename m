Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577F03D6B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718509703; cv=none; b=JLE560xZA5vPB8RId1a4sjOqgmskvmj1JDB6RthVMss2GNKtvKZt3nCb3LYpYeIEcH7M+PdofxQb7ZkTUrLjOFbNAZvOx1BOTgM3qOhk6dG54r/yub85yCIPJF9DXgrZrUaV7caITloHtKvqT6WSE8DJALROCQlNbHOffBO+Qbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718509703; c=relaxed/simple;
	bh=DHLjRXks0/b6fJOS94p6aTwrUFSshhxRI1pXq1GoeAY=;
	h=To:Subject:From:Message-Id:Date; b=ruIQaNijMqzRecxWxnXjcGdrO0sGTFJXbMDPDhXSdfoSGw68shnlg1uOoKKMb+L5mzGIgdXO3R41uoKw8nRAGoTlBu2CdK1vEJFDTFar7IallzHlEuVx0mnfzGCcHFu7IIahc3nS1xzqoRppmh121aDyexSh1F//4efYeatWmso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deVxU981; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deVxU981"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2B9C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718509702;
	bh=DHLjRXks0/b6fJOS94p6aTwrUFSshhxRI1pXq1GoeAY=;
	h=To:Subject:From:Date:From;
	b=deVxU981kkb3w2UEo9sNrVfRM/YLPCVg3gKlG8er2IuPLaMq9EzXJsNm5U0GMoTNI
	 9RSYXUjOcKX6U+ZPkaJ8Adjd1kDqX31a4fO1W3tppde4Cm4+85/k+qu02iPho3u50z
	 etOqlzPd1yp0FgKLPRCjW4PfPFaEdDbM/3FEDNJnEE5qaxOQnFLGamOtVQjTdHIpYV
	 +NE1D2b3V6Qm5KInFIQLfPO04X2mhn0ur+1y2obMB3lh7xEFZiGnw0KGx9THLITZcK
	 riLN0jLxLV48xgtzu+giDQJ1BCyDhMkiPkjzjZMkxBIGKf+XdE+FHOQI9TqsmInKc/
	 lmRrd50rjoB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E35C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850970276.10252.986899323163746179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889259cb28488295588b3d6891dab70a98ad5cc8f59f26032f097fd3f0daffa3
Date: Sun, 16 Jun 2024 03:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718509702
