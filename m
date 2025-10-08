Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B9E299AA3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759900794; cv=none; b=NNaBRgrw1IeTQSvo41hLisFcP1u3yNiX12Ebkbk8ab1B0UaZgyV611/yNhPsvWie8O2afnDuf/MG2+8g5BNaD5RZiVNPgmBX2bJYSgwJ6+zlJP6UR+u6OjWMGkCKv0OPwNyqgQgK0is8xcbI7LSPTlCSWBAFBg7i8eX5exTUI9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759900794; c=relaxed/simple;
	bh=62VK89DUwSFKhMmT3HETwDtmhEryWdHGUiKy5cHrCfQ=;
	h=To:Subject:From:Message-Id:Date; b=hmEOMvTLhF1Hw4VU/P0P4/FhYFMkw3qN3h/xUHHk3bF5H2PLS4oJnaON1mLNujKNOC22Wbzrsk+OPwPuzawTExtyGw6yC8fdBIkTM0Pj6/662g+rLk8dPm4VoN24eZiBbCY7QW8hkz23RGJRcM03VCzfiMryoY6VmV31Lrp7XTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atj74qzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atj74qzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4300C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759900793;
	bh=62VK89DUwSFKhMmT3HETwDtmhEryWdHGUiKy5cHrCfQ=;
	h=To:Subject:From:Date:From;
	b=atj74qzbx6KgXNGHJ3BUFNCKYMzVP368ashjSWHPlQC00yElamXEozx/ZABt18mF8
	 wyxFcjJflEDtz7c9DKeBH4EikKWuIj51yMn1GZpTltmQXGPjhUGr0xplNxOVUEuPf6
	 QxBbhx/DOOJ6Tn4vVIaPen/gmmzxr4dlytW3jtv2yM+N/V2vZscuqAv0dHfBo7Ohg3
	 p94S2I77sNL0XA5kuk/yrru9mDTiJgiIMLQDcORMIf+/9tpOQEh8O0TMBmiMRBNpo/
	 qV4/9yztkfboWo3i0L2O0l56O4JvHpcySk12naJLt+52uQfGOAHmWDJDlgQmcFvd8e
	 5gJLhM7PN36qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21ECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990079357.10362.9024355894731978319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a822dc13e0c53d8a9a0341c5d2d3d408f37b474e26cc47ba124b85c93e188924
Date: Wed, 08 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759900793
