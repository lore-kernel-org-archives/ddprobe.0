Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A0B342CA9
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761817194; cv=none; b=gNr01F7FX3+6haj3huQjLjtrpaheZ7STrbpo3cVNdDTWbU/AvWBTZ7plNsu6uH7DLI4nYDWirI7yxqcU+ScGMn4SDhqqFfAej2yaEFcmhn/evF3tY4wp+Wrpic0wKn0VyYKvHfWOyZbcGIPw/xX590cF9u3K7Cw2nP+e3qeUqa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761817194; c=relaxed/simple;
	bh=i4c3QenVz/Z/9aKDW95OUjeVsFSKBUa4c5zn/dMQph8=;
	h=To:Subject:From:Message-Id:Date; b=nvktIvoZsGXnzpG6AWJbZ9ua2x07mVld4TcG/G/Z40Lg/3eHOx0viIHaGTZZ4fP+p3YCqCeV1OM2Pv4w+dnJcjvN2b3WNwY+0S5lLC6d3jDf1g9ISNS74kfC+MG4Umd7pCQxkiByDrjikv33/QlJsDR8hftM/EsjiJXXYbHs5GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV9jbF88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV9jbF88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1ACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761817193;
	bh=i4c3QenVz/Z/9aKDW95OUjeVsFSKBUa4c5zn/dMQph8=;
	h=To:Subject:From:Date:From;
	b=BV9jbF883drYfNA+cJk/chS4KxV2YdpTYCOsa313JCVZgpyoSkFs6Aaeln3u9aPvX
	 gkswQypEtg2oEiDFAg5Eb9JL9jtUwQ2MAAYjALDtTUvhmLiFtpXc6pGRVl3x6C7J24
	 f2e+YnnO+g+4y/mw46T+B1KGxOYkh7/oZl67F7tHDgSMzGMdK5A74aA3AQQQS2Xm0E
	 hyq4GAklUco8qx6zle02PIx6xZIgAzn4aLiRB1Tv+wtwCxVFuW2CGdLuzbRO/4ergC
	 ZtAwa2hmYLpVh+ESglU0cgf1Um5ba5mqggbUgUeEFzRvOjAG+U9+uigX9VvZr4YsyD
	 +TjXx96c8YkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD66CCF9F5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181719357.7463.18204085215360786879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6526c81cb5cd4c13ca6f57545d11eb46d1f4fd3336c7eef10e28c4a43125e09a
Date: Thu, 30 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761817193
