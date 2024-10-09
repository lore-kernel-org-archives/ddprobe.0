Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D601E1C3A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728504954; cv=none; b=bIWrLiJa7N81wgnarHbR0QxppPYEYYHfUce47WuR9jnRZZQhIr+aPeARbSzC8fS6s8clhNRUISEDLHQvyvHoR0L8aSdVhqpcU0gr1IwMkXkvca/yY/xwXHbbqyvclMACu8mYHE3iOxl/O86gDFthVW015ZBwBnpT2ACqP+sqNq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728504954; c=relaxed/simple;
	bh=8I1+lQGy+jdop/iT2ruET0j7OOSUmYYWkA1EAn3MNHs=;
	h=To:Subject:From:Message-Id:Date; b=DXOTem1PZ5v8qYAHl7jURpy2DXZU4V2oUjfe6BQW2N3FGO6DTULjeQY8Qxose1glt0gdzlV4ldry5Uyqae4CmHUQpbs/BEbG6cIeyikz6V4D6WKtt9m+DH0Y3bvo+iO9+xmQDFgVAFaC5jM71ZeFMymxpf5Zj/ftJkeM74nz1Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7+7YnOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7+7YnOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDEFC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728504953;
	bh=8I1+lQGy+jdop/iT2ruET0j7OOSUmYYWkA1EAn3MNHs=;
	h=To:Subject:From:Date:From;
	b=n7+7YnOoslvpuV9Dq8+npn5ao9pV2QJyQEp/20tldA5AwN1gEA7LTfpRNrZ13iMOv
	 XZgNYoeGa60LHa4ADbhkbAYyGiAJXG3YPSFj78yV3bvMM3H/IR2de/xnkrvArkHFwp
	 Bd26SwtUtWtWXXhKTzwkG62IYlT514GjHOUxoKeV/u29AEq6LH8+cbg69cMUJZn3FS
	 Ihz2zVjq5UqmtpMy9/xO4TVvSWSXA9TRAps9RlIRBVZnvRo9bwX+PuXgMH76wsQnej
	 6Kd1uEZoQ0N7IXxrnw/rRzyeCKfVO924A8BnOCx29iEyRqRGtpKNyG+Fmh8HC80r+n
	 Uin4mNiFSOXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0914CEE343
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850495364.20527.17413903742479023675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee81e0ad0c32a95d6c75669f9e1027ffe12be51741b771e1acabf8d6534b5ed
Date: Wed, 09 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728504953
