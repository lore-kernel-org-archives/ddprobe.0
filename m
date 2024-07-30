Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DB6524C
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722317754; cv=none; b=DgA1gRy9tqsa9uo6qP1wzHxvo+6Ev7+eksm0Rlvd7+HHHdydvfExYhXMLqVnzzDecpVuvJTwU5hMlptY3ZFulbobc53OoZH9SgssGzADDIca7jv3BYVYceo/Bx3RrAIErTJF1M844UL0I+bTiWGGRZDf/kp5hu3kxu2T0zzRFWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722317754; c=relaxed/simple;
	bh=5gC3JoqHLIJN0XTZvo6niCYMFKxJgi5JOyHsRg2lyQI=;
	h=To:Subject:From:Message-Id:Date; b=MDh/8jwTRKAHReKXa0y7rPVr+fZN7RmRZUYV1x4y7C8VM+YxuU+bo8thBICH7nqByjFNBCgv1ijAKDdHpEZKg+6SyJwWRNr2ZyLqi8MWwB8KcgzFpjjgRqintilIabwQ5pU5X3D2hJk1CKjmbmKdVpDY04ukUrUaP5G0GsuCtuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcUoRS47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcUoRS47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B8AC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722317753;
	bh=5gC3JoqHLIJN0XTZvo6niCYMFKxJgi5JOyHsRg2lyQI=;
	h=To:Subject:From:Date:From;
	b=rcUoRS47WvF1jOTvxYzwnfpIuh1PZStLwGsiLdT/JXVq1b3/pGZp0R/AVzsSniYHE
	 U+LPmZ4t+F7XEMuq5y+gyczMA7AVy8QrUFTbhf5lab1ru09V6x3MIs6ewOXTskFK9V
	 EQEe7JUB4izk698klWvlek24JD6cET04oEls539FqSvCEZ/e4054cTNeGNCqOIm2wZ
	 vUw7Z3AQiYDRbrEnMXpJYJvv40wx7qiWROq6ai/DwIdbMJKumANQb8+5QpDqD/NiXo
	 Pjs3HGn+ohQ2VdQMaNJsrw8uuRA49Dgf9smwPB7fMzWZcTzXK+R5sM5wbfA38Wro34
	 zIEyHdEKtfr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117AC3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172231775358.14580.6971081206563164260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd8dfc5d3097a45e62710546d191e6a5de984a53dac2831231336e834e52be7
Date: Tue, 30 Jul 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722317753
