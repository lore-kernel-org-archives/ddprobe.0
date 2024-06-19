Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52592762D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718782763; cv=none; b=rdvb+LZIaZy65NlzeRw13rDLnzxl4UVNCguA8nAvs2BZpfFzjGGPmzwG6q6KCrv3rizfMgnjRzUa8xKsMZ7fGwMkd4BqdYFebFMRes5ECBA5VECV5r+r3jjVshuKUwRaa1rKJDo+6irtLj8Kdxw+NPlmI5uBcRWmJ24BivLZtuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718782763; c=relaxed/simple;
	bh=8+WMvmYflpc9Ncrsl+Obj4jNpvoyodJP7OwPU2Y+Nu8=;
	h=To:Subject:From:Message-Id:Date; b=JzGKQl1EVU1FhrTQV2tJ8Rb36gfMvljRbUuyO22ZdBJavywOQdnm3YyQeNR10zsZf+8ykCp2VHwrr8CRwCHvSEoRcGl2jwlQhe0TfFq6U/Ec+Y1HWZc6QWQjYF0AC2oCMdFOMwqIWFU/eMsBkuOuiOaZEH2RtedH428QgzNDPlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMID+bUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMID+bUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FAFC32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718782762;
	bh=8+WMvmYflpc9Ncrsl+Obj4jNpvoyodJP7OwPU2Y+Nu8=;
	h=To:Subject:From:Date:From;
	b=PMID+bUOZyquTYYUBjFwS1ZWVpjBs8Of3UVc1oS4NQ5WNQDiMDRbo0rl6elNqwt+P
	 cALtkP9Gw2R77ijzkTYfYehKFpYG0QMENih8KPwDSQBtdSuLQy6FHOkUf6bK4JIFJP
	 Th9PfOinm2bsQlKvycMbueYQ05sU5CBCiwkFsIYydUPer3WN2W53+dRV7641+NcvOT
	 ndxi2LLBwqXn1DklucP3Qz3O9kdtqw5fwSDaN2UW6HOyEYp+BtX9bEEuHTzmXu839N
	 FI5A0N9jeXjNIEK+ShDfZFN+oR9EF+3aGqDttO31nz/H7CT9LJvZOP+5F/JG9sY1D5
	 8TCtWN6aAM9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30BDC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878276278.27393.1234498929159748231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a83f83b0597bbb8800231e877bbb4964c733c7731412e3a7ffa3c34a8d78c38
Date: Wed, 19 Jun 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718782762
