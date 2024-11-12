Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296652170D4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731437754; cv=none; b=rLKPAkMbnyFAG2BW5RAm3bskfInzqcKW1VNJ2j7rAr99trJqRCyV9q4QkxxVtqWNmpbev8PYzRcqXNH1xBe4R7Ww0wbHhmRA0iHX4X6mWEjLNV586udnq1+Px64eDZ13hCqs0PS6v6M4mU5UXByPVFcWdWkayhQDSY1+LkMydBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731437754; c=relaxed/simple;
	bh=kfhHCq6Wr3I/xgbr/0OYn4ebbmk4cp4+iv+AT38gY/A=;
	h=To:Subject:From:Message-Id:Date; b=T3L4Af+K+7RxvNt9bh1M/bdZf88yBCMEhdMSVGKYaiIhT+gSlLbkOc67POJFEK7xr8OBAzK2s6MVANaHq89SuVTY/vpfzzDcqttij+LxoPViZyRhBF0LDsg53QgbL8yhU7sbxSsvP+3hWPti4jo7MBlqPubXSRf5b9KkgA/YqHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTTGWPmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTTGWPmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4114C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731437753;
	bh=kfhHCq6Wr3I/xgbr/0OYn4ebbmk4cp4+iv+AT38gY/A=;
	h=To:Subject:From:Date:From;
	b=GTTGWPmfWynfg3jVkBHEldlFgTpBR/mJXsmt/+arRHPPy9Gn8ims/00ZUajKMOMBo
	 5JFDoGQNIN/h7hHBFcB266U/WqBXEO8cDXJ+1jIoPDt8cByU3PtmR2gdjY9tfp6oZE
	 t92/7pb1ZND4wYFxlXA5nfQKEIIbkXgfBRjl3Vv3+aGlnd72kVhpcYNX3BqIVOblfd
	 g+bAEwn0xcK6ovMe0EiN5WUvriLhAN621aKHeMTIY8bAEwzyVknBqAQS9rxdY0N5KF
	 U9cnXEHZ3Y4YsFRHhjKh+FHMvmkA4+90yqB1B656zCnd+zWuEDWl2LEcvy7YRQwbXF
	 n1GF62TYph6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B81D42BBF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173143775360.18731.4113019468715374453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cd110357d82d0d005e45c6d78f65a928a16d3aea61607f4192f4a8a873a5cb
Date: Tue, 12 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731437753
