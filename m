Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126272FFDE9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758193194; cv=none; b=eCKwjEK7Wa32QicYyo/1k0lPqanu8pg4kJ/TYdF+zYS+OqRO9Qe/fLVc1PC/1l8lzEbjg5iXoFL3BnrhEm3UaiClWbm08tGEk2d6y6cPgUO2t7X6aIBty+0urc2Dm6d5UGsrmbxQR+USOVzBiyWoLmxiQQEjnsbZRkUs0nSuQZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758193194; c=relaxed/simple;
	bh=lpfmKVfsGHiXcXHcqoR1rsjeTLTWpZXL7llOYFj9yN4=;
	h=To:Subject:From:Message-Id:Date; b=uOOEnfPcRSgfD61HHYiZ9LE3/Mr/uig6Q8+vRAvtquDbOvz+9wMy2cGVSCCCcCjgQIVOPGYkhjSCwN5aRx0/UzKVId8OCNi7rckRmQQhIS+p6WrclpyQ5i5NYX1ofpXnp6MhSv5p3Z1lsaPEYBXerpoNEMfxx/9pPtRrIx4xzow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEeourIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEeourIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95777C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758193193;
	bh=lpfmKVfsGHiXcXHcqoR1rsjeTLTWpZXL7llOYFj9yN4=;
	h=To:Subject:From:Date:From;
	b=KEeourIPQV0hUihSn7jDotbcgFxAjmDGBFFSBIQWkrrpRq2oh9qxFo40k4bBvJjyO
	 jgTZGWfEfNo+fex1aX3m6omNoJKvD1nTEuK+H5fOYjmEsBi0dz/kb1N19ok3UyoIKW
	 xDOT80dkBRKL8wUFNdSr9m209bzOV8HS5bRMYLP8yOWUFDLAXSzbrlPIftCB8aExMG
	 NoxzFg5PQ53HWRJt2qZYCDd39bgTZT4Hyyj7gKXWTKuaW9uf/t2yVRtShoAFA6TuJo
	 FkIk72tD+HEHAfg6wjqbUVdSfizCtrsLeumGUKf7NCbKppsKRS8xYeJF5cFDMaXCQh
	 iTJq1Akp5538g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B9CAC5A8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819319357.3516.5032002049207614385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd41a6fff9acd20fbbcbc0bfa50c6078069b1cec2cc4f1cde6d3964b5c615987
Date: Thu, 18 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758193193
