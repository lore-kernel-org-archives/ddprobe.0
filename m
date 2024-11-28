Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21A57A13A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732823754; cv=none; b=rAZ4nz3TV9qDoE2BvaPDowp6AlZF0YunqkH8+JF5rrShtGkzJRBBDoofTPidVejeGcPbizVRKM+BJGk63VRsUjpVloTCZjZDvVWsVHkNyA2yOTWujhn/WVx9CPbck/qeXiVOvE7HOi+5SRrbfT+cSyKLu1tBdWKQbXINLEPPidY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732823754; c=relaxed/simple;
	bh=A/rp97NoDS31zO7xwb+QzwiqEf63sx1/k2VIA0cEMzM=;
	h=To:Subject:From:Message-Id:Date; b=aLW2PU+9K/hEw/rZTlvUb2armv8Lo2RsSk6WsSLjxFsrUztjmatwMFS+OcBGdiUEFuSbQMZlUwMxXLybhbOQJhBgFOUSFsxqJ/5IAfqr94RlTV35ylMsUHepOKe+WGTfF5bGhgU42h1DdvJC9XnKDDRM17hz0d2G17V2r65eHq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t97gVdt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t97gVdt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A5DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732823753;
	bh=A/rp97NoDS31zO7xwb+QzwiqEf63sx1/k2VIA0cEMzM=;
	h=To:Subject:From:Date:From;
	b=t97gVdt/ugqGw0vjPa2LEZF/I64cSrIlcD1MixTPXRYA2gdUqTHW+c1XSQQUvzheD
	 x+8VH9ltd0eXkZE73NL8AEyu7bzhvsDdSKEFvBAB7jk2TBBnSIdboPmMevt40lgC16
	 eDcv7ZN3C8Fu+vy8BA7Wa9BkpeG/CkYCSFyOZDC6a6UcpcfZvjUwkt6wPxjL6T6INb
	 8ZNk6qTFp8hkm618n6nnZbMr4YBjioX6RBwP29qnWpIcYDXYc8iIbyoBG09t/1ksak
	 O8k/Q8OlBq6thguW1LKPi7YgmPo/cBuLtYSewtGXEThjubKe43eRDOlzK5Qwf+8Fjj
	 Sv6hBIdiEBD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F401D70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282375364.3078.17157014590144711415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f308c8a32e1d13b2685d83b2fe4ab6e73b312b263d87711e21453a14a4aba905
Date: Thu, 28 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732823753
