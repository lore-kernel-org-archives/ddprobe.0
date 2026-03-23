Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D55931D381
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774299894; cv=none; b=UXqYSyexggK2e9BMVdiK99PP8hs3lS1XdZRPggdNpn/oIxl6szjzNGn+oc9kx6UdWiNApxilSmr0OFRwT6AZjlUloCCQLiukBvNah2m4O8BzSu02U6uiIjaqMf7XGhb9fL5ZJBp5SNC90aNjPMT+6bllPkpMbbeWl41WBqsuV78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774299894; c=relaxed/simple;
	bh=l4aW2s//rFVCH/GkUrJH5rGZlZYShaNGiEPhiaQKhjU=;
	h=To:Subject:From:Message-Id:Date; b=MpvgdQBPhFPWEyDuPwSJAghFqPDuyedU8BRxEnno2iTQ1wVoyP3GvLGKJeqKo+kCh0PnNgt3c4JNBSycAcl4XwpdlKS5H6HJMeF0xsVr3KGFj8d5LbYIE/VZgbhkKFCSp9UQutivwx+aj9rMP9g3/E1gn2QaKb7TxZZ23DhSGCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i43S7aje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i43S7aje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE2CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774299893;
	bh=l4aW2s//rFVCH/GkUrJH5rGZlZYShaNGiEPhiaQKhjU=;
	h=To:Subject:From:Date:From;
	b=i43S7aje5FWERECs01nV5zLUXLC34wV2RY2OAEe9wQfKIxn8oH2VTAmSLdSqAasVM
	 4wmkQrdjuitpXMaL1X1YYKmkiGZ1hd69Q5jIxgNfB5c0NxS/A5r+dZrmvjwS5TitW8
	 j8y+Z0vvrWlHlzGM0X/SnddgW0u8ij5+o/1lAu20asQdfvor/hZI/T53fEi2BvFwWg
	 n/7hcoHA2WDG4vJLfU2MwX/p5I2qQ8+427YJA2jVJa6+0hHKFUjUMh4WopzTqV8a1A
	 2YtkMIRxEVwpklu66gaLivT0MOF9KeoQFYAMcct+mlKkRun6SnRLGzr/tJ7rC3qSE7
	 +P5JhzabgLgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6CDF483F8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429989360.21501.14546835742817916884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6a68f4d93feeaf86025a81c329a046d467a432cb60c3d0e00aa7309b8d8add
Date: Mon, 23 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774299893
