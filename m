Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34C728983B
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751878794; cv=none; b=cGYDTa2NxTXPW+MEP9Po9wQqLaQAl5X3xDyidm+VDtalYV4UQh1RfthVcU92xoCEZc74PjbxutbfcycuIz8S+f/zueGWxIn/Q3suZZkby4vCNPpw9PYYlytrgfkzF2tYVr+yzsZPjOxz1XEC4j8FyOyd7GivkxUUBBqeZKpB1/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751878794; c=relaxed/simple;
	bh=TwolfNggJcV8gLXU3dW+TZwElm8oNsDSrUnZLWmHs8I=;
	h=To:Subject:From:Message-Id:Date; b=Nf20zbLH8jh/mlZpLIAQ/dS6hIaWKLbOdL3FdmWn0eiGuWRJSy5GUIt6jissLWcLXz6xXLaseSwkAgdQAEDAaLJshVmGNc/NPyPHM27mhwSh/tf7nSsYDsvuSTziLE2iJm2KFlgkZ2WrTOyaZiI6ZdjlWuUMJ2CykNoA73OHcrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1wuQ3jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1wuQ3jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C052C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751878793;
	bh=TwolfNggJcV8gLXU3dW+TZwElm8oNsDSrUnZLWmHs8I=;
	h=To:Subject:From:Date:From;
	b=p1wuQ3jlKdpDTZtvu3jsHIePiJObpF55ox46Z6N1FzBuWWOou4NjrkMRHxMFGcEKL
	 DoUORiPAcd0Y7nmrD2uvvuIqq2DOggHiGoyJqg5plCJBifr3nlGJrL14mJvoPgzFHq
	 07k30BgRPmQp7eqj48eXGnLWj/cbmwbMD17P1qsJf+KuY4ORZvtYyAQs2nVqZG9go5
	 6rcUO/P7TGBJv+h5ZfH+jCAhfff7n3GjWp9ui35jDHBFi0CQmGtjB29V3M7vyGps24
	 g+0Jld+JA1AHiKo4BP+MfFkZtbttg0OMM8+B1Cnn3BaAjQtSePTeFOauqI/qaGhLG7
	 eAL42mIAFVK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E892C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187879357.23017.8955903224133941387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460ae4b20d126f0626458102462996a7c9feaf7bcb693cb6f69cc4d5be131d23
Date: Mon, 07 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751878793
