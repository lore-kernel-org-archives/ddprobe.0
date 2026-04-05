Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1590D20E702
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775385934; cv=none; b=FdkCj8ZiLzMWbQd4/327T7D8uK0MZfSp81agSnkgBu4b+UynpF+xELGdgWvLggmZ3O4siptM1dr0ayzcTHcEx9wc7ht38nL8CWvngV8fejC0XGqbOtR3GukzbD6cURPeu4mR7eaG6EVQArgrMosIlhD/TAyMIlYaxX8euNndlS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775385934; c=relaxed/simple;
	bh=awxS+PEhPwTqJBI3zoRd37mhwLu8IrbkQHu1CuPeQMQ=;
	h=To:Subject:From:Message-Id:Date; b=OHLleW+12oBcjrhWmfk9Yja8b9x8vcujwuEn4/Dlljd1CCU0Rf76b5yBNJSpX8bMxAEiETjH4YRUikuNJg0OCSlmMNbZJwyaBGRMDgXP5Uh8Kgps4tCS2GTDdrDDL4L7ZYvUtZMU58ZVoOOyIwc3tkB0pdag++v+qlzXdn7e7Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amay6v2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amay6v2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD30C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775385933;
	bh=awxS+PEhPwTqJBI3zoRd37mhwLu8IrbkQHu1CuPeQMQ=;
	h=To:Subject:From:Date:From;
	b=amay6v2oJWxgnQRIBb/pShbvtF8KbMRvw+iFoS/DPtQbKPV8F1pwOJD9DqeA63uS/
	 iN/z8+OFC+NErOpEVy/uDaEkj3u+59LbLJK38DsCp7M/B2DPi2nnLE+IavuZAK9XT/
	 T3/i0qGSAr1jkIUDy0kTKhqVjIAVQk71Z9rnR75rKHfu4nF1TB3Ls7BfUxNUGoY7pX
	 ExEn8SSMWmxBStFK7JOhqFGSHQXlgy7ZzB1VhPw2Z6x+BFrhf8/8VRRWvGaU/5v6I6
	 RvUU37KmbaFJnvs2iHRO+ZDxm084v4WkeVXoVuUl/2dtX75TNxmBtpUB4+DffCgfex
	 k1hMeaFurSHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B9DE64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538593370.19748.9635164597862870142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064439496bfad6ec1076063bb7e4e1c0c6d0f3eeb330c997804da7541c0354d2
Date: Sun, 05 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775385933
