Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188523BED6F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774943694; cv=none; b=uOG72zIMWYIJDepqgizPY5XCl2AVXROrc5YdeLaf5zI2/HQ1yeBKt/AxfdtRB3LNFZ1bG6/tPVydB2nfSX8QK2+ZnTF4Cy2YRcG+yzNnf1UwKUD1g20fPkS5eYo2BTW1e8MQ8fz8LF7cW3cG3woi8kSHecusBvL0m8yDx10ddK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774943694; c=relaxed/simple;
	bh=lEaRKGlkOKIy4UhHndNJqCNG1Xv4sY2vXDhbekosBnE=;
	h=To:Subject:From:Message-Id:Date; b=eMW4BCWnZ5FuVzq73zUy577l0ph5NRPzoz39CWU3tep9TAXEeprmKLBKWXQKZQm9Uj4zjRB6K+SvAIHI3eXDcCaY3s2arWtc9ORtL0GAhLeLhJ/u+ny8yi7GxFBAlVgEhfOQC2GhBOiZyXWc6TOeuZVpu5dLz3ChZcv7EUluTTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtAekRaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtAekRaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA8CC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774943693;
	bh=lEaRKGlkOKIy4UhHndNJqCNG1Xv4sY2vXDhbekosBnE=;
	h=To:Subject:From:Date:From;
	b=NtAekRaGQmD1GPRpqUYzLYD9Z7C8GdakrGRkmM7tXVTBAh1xpVa63tiziXDVLdZyh
	 EYZZdMJSNr+OnxoOgKqM6jsKH44n+/bE6AIDOlLYRacp+BNsLfQ+bUejUCVp3kn27X
	 sZgx2T7NS3/bpkxoZMJ/h1SINboktWgT+g1rI3z/o48Y2oLVbIYMSrjWqarhqaQ3KX
	 rnND9mWZHjsbIFh+DxMNt2TJdp/fOsq1w9yrG9lo0iWe5JqPIidxtAZHiIC6InV3eH
	 vJ8qjmYMJyVr4StqrCcSoRGcUqMANk97oMOBhq1obDSMFEB0LgW8zs59zWyliLsAb1
	 8WUE6tnmo1N9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC70FF60DC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494369363.25309.12144390849682712296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d449a397d8382d8ea13a6445cd0be09ab28f671292bf85b94d47dc96006171c9
Date: Tue, 31 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774943693
