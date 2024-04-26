Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD6523765
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714161143; cv=none; b=NVtePbyeVnOv3GbiU2LCdEjCz70APXRwSXbFkb/QCwx6y0jdMQWhwrJdR/vOvQHX6uQjFagdrjWkkG51tQ0xk9AmvrM9TA9nYST4ASV3m/1umxZEXGMs4XFuQ4jVvlnXc14M/b6kZYxXAFK9zdSvq5nfusFH1/piAcPEgtW7MpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714161143; c=relaxed/simple;
	bh=XKlGPWH9KMzrbZ+iZu/P2dm/S6kiCYQYlzdPmEwjU8I=;
	h=To:Subject:From:Message-Id:Date; b=jJ7LM86Vpg46TLMlhJpqGJ7jmYmNmhf6qJsHGwP6Iz42LnADCg7PYoFBTxQSSaNLTvi54oZrMR4595ninBV4utjcr9BUFLM+rlFTjNZwU0k3H9V52NhKDZc8etrR/CjJC1LYu8f3JWwK+2iiS7W1eV8o9obwGVGQAH7nam5mjJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kibz8VHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kibz8VHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C98C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714161142;
	bh=XKlGPWH9KMzrbZ+iZu/P2dm/S6kiCYQYlzdPmEwjU8I=;
	h=To:Subject:From:Date:From;
	b=kibz8VHa3ceiIxgWo4yllK1v/Lf5fPEeT1SQPbg+1SdLFZVPXJX5P+gZsGyNmiwUc
	 tb/cACPtvIRra7l/RkFzOTQ0wm9hmoCF9Mk/uGHrsORr6pX5/+SQs6kWAUncn/ZjKq
	 EmrSCJrEodrrriGRc6flYKxXEh5qyuSMTnmBsqeTS8Tl6Y1AXAi2T59ASb9Ez+ST50
	 6fTmO0QwEQTQ4cuvO/KCx502Oyjsr9YBdeyyO6egKr+aCmq7WU2TqL4qF6g7Mg0amo
	 5N2YXmeuiQgm0YWiBlCXdQyHANaLWBbOJPZBojDG3bSX6Hd/aQs7b/BuNwjsouE3Py
	 6yd0cARMSzG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD63C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416114281.15623.9915190729621652803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf64fa9848757e151a880e03483d068aa81e77ad957beb28f839b477dd713f8
Date: Fri, 26 Apr 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714161142
