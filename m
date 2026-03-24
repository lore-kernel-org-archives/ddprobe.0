Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1131F313E2C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774378494; cv=none; b=Au7/0RuKVUaLtdsoTBcHrCFGfq6ao61kGrzqJav7ULjt5Dy9G2SPfRVnc5Jrt63QrIvNAmPLaxcSFpt8okWg/0YkxQNwwgH6a7L08b4SfZNr0h6JhQR6bB3/BjvTTXrGzgaeuRSPq+7eMWldXgmgZcQ/iSMX5tvZty6iZfB6mcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774378494; c=relaxed/simple;
	bh=JD+hnsb0Gwz2HPfbh6fhZMZ+YEoFomoiI+CneWz/ru8=;
	h=To:Subject:From:Message-Id:Date; b=bjcw8uoHngo+ZQ53oAuYcZydXUrn4oLo30ld/INOboOgGwTsVgNMW89W3EU8UnhBlkQlujcyu98orANn00x8mYm0rc3URTPeQA84Dit20GyqHtfCbk0KVv5VZzBpmEGSsJIl5ITUrXGaGWBYOPyny+JagRSs1oYJq34CHPLcKjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIfwwFR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIfwwFR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3D9C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774378493;
	bh=JD+hnsb0Gwz2HPfbh6fhZMZ+YEoFomoiI+CneWz/ru8=;
	h=To:Subject:From:Date:From;
	b=mIfwwFR7a9V+U3r1DAkBfvx6vYRwNCIDnpjkKIZoRrsFujIXhW43HDaXJGjwYKFqV
	 ye3fQyL6OlE4fvIyiXMjHdlmP9IGv/17VWkwuy0bc9Z6/AOKcdcrr2oCthuHoh8/2F
	 TFtmVhYB3zbbWHlkqIpCC4LF3GeK/ezbfv0jHQXNqzx7ROC9JQFPrizxuICisyr+fK
	 hvcYxG7sgVG9AMixSsPsLv77uCd/bjuJkSdRjuroJXaek8w86QygsDyzfXN3FLx3j7
	 o0ir/jl6YlSlK6FxjGuQzlriMfcdiy2xHGNlb63HJbXbYqdL3QP+ULKDz1BYqDQco2
	 Orvg9Jt9sbUKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F1FEC0F7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437849358.13573.6809477025668403843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b7660e4fe80ee8a0a80c932120d59f402c295c6ee2ec1016d3934cb875ef6f
Date: Tue, 24 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774378493
