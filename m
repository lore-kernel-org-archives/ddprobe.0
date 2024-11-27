Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275624315D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732712154; cv=none; b=QRxDp6IbIZGXCMFWAJeEbsYmki7WlLNTuWNmEe+p2djQQNLKneZORnbne8U+uSeO6TaDJP4c7ndPHrLbr/3wvWyx3wEORXleNoPHS6squJEV+5Eoj/7IJZsvHTU7JPYzJSsa8x3602NvTA5iADBuKK0x3xbfKJn7Kz4SW0WuYd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732712154; c=relaxed/simple;
	bh=aIsCr57sRg0Bysu6tuC/2cw0Ls/IaMmoX6AcOpdlkLg=;
	h=To:Subject:From:Message-Id:Date; b=n4FIqVIqNtWR13a7nd9afdIGrH4biz0dyRg2T6SAkPSVdhUpWBe8wYxn91Vd9uJd3K3/MxL6hxUyfNFtCdVHpE5/vU8Gvpx1AnpoJAyQ52CFkHG7QYqbbkC10yhwXX3TMtiSESRLC3HzghpT7W+UnPg9P9vzVgrSnezjRi7ND+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhoD5aiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhoD5aiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE84C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732712153;
	bh=aIsCr57sRg0Bysu6tuC/2cw0Ls/IaMmoX6AcOpdlkLg=;
	h=To:Subject:From:Date:From;
	b=HhoD5aiUJ24jc0rbw1Bxqh8D0ibFMi7YkQp5ZibabE7a9p03G2BzIyT4gLU4O0QSN
	 YFpVduiDfNo1/xAGDpY4p+Mna4rxtREUcJBVM6mYLBYzKrt/JRHTlubBf3G0mCwEvn
	 DTb7q+BDWWyCkBXjhwl6tXhezspYTAtI4Be4q2PxQM8lm6qDy/3AikD2m5Ajca40sq
	 3J4In2tcvU2MztjMbSRorC6DnOg12M+CfSVDihKsuINloToiom+JO9/T3ECBr6X/V0
	 def0PkFwC+o2ClgeknVlAIvX5rAw1YmJi+nTxG+h0Ct5PhqTjjs2zwrUxlpEuMNGNt
	 JIg7cGsi49oCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A5D6ACC9
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271215361.25495.6749270211372260475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbf317e8e42752e7d08a73a62256bb49bd0c2c80778817c25ee36ba37351810
Date: Wed, 27 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732712153
