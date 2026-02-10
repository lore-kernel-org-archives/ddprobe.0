Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1583090FF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770720834; cv=none; b=c3WM7xECBmZADScTVuy96BehYDEnaQED/sgsXvhJ8K24TtwCXHgsnWGC1yIKHYYhXVOCF+mHoNgg2/P9bRylkdBRiDNohiOyQK/4+aC9B2cHb3mdYATCOGfk2KKedpH/aGYnWCqrYDKdJDT9+TrTZwXfGkicKwPzTC8SnXSxuzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770720834; c=relaxed/simple;
	bh=o0A17mwFdWJW4ax1KTqrmylyoGQ2ed2Pdma+Fwc62Uk=;
	h=To:Subject:From:Message-Id:Date; b=aCASeig679eeAREQOHHrgdOdZn8P+WB616qpJn0UbxFxIYPuujzyyT9OzUVr7DDI58MlnixP037W7PGpxEw4Jlqro6R7QfBqJ7oVzM3vur9nimZb5hSBgOw4S5uudAb1KveIS3ndG5xl6y8xGMFkT2+tava7eUy/FbcjmgMBoj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8wnm26C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8wnm26C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F5EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770720833;
	bh=o0A17mwFdWJW4ax1KTqrmylyoGQ2ed2Pdma+Fwc62Uk=;
	h=To:Subject:From:Date:From;
	b=g8wnm26C6qqG4Hyhk8fXk4UfSUwf/I7BSSsCyLOsKu3J9uEh9mq7Y4jVV4bjbZXg6
	 srlBcT3ulH5QwQMTeqtvqeC2GMj+e9m/z2lptCJ6MTNYcrI8ZxUcCePAzoYnwU0bWN
	 pBT4cAbeMA31EhsxCgyJ26hFl/pSDmUeE4E3tshXWyUBSw7REEaPStiRFX2+RMz/k7
	 2SKdS9cSUHwQ4dOPGwdyPmcRDl8j+t7Bmj+yDHPt7ZTIbRDCGssy6a6IDFGbduBRZ5
	 5MhTVl14qrUZ0Bz+fnr9p80OU0HffVZu2dYtrNquY3HDnucQP+QRP1eQclK8RB71Ol
	 ixBtLiKlv9bnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD30EA3F3C
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072083369.17839.16802799251496732456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e4418eec7d69411333e9028f3cd6cff8a79755293889882b1472452e180dc1
Date: Tue, 10 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770720833
