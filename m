Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9111E86B
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708283297; cv=none; b=j5uvhy9PXa78IKgdQsqteT9yjI3urVgW02vnag4Km5MOQMiiDSjLejrVJ78QFInlnMuz43LdUuLE3dLEFKVAxXd6pf8IucGMFqH/UzVvK66fPHMaR4UiTr1RVEsoW1vbqdUR2avNrHJFQtAEfNphjl2YvmDa/0lCFA5MbgtVpIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708283297; c=relaxed/simple;
	bh=COuIOr65pJjBhDq+Qx7QC8l+ou/Y/ugmGfmfhiYu7MI=;
	h=To:Subject:From:Message-Id:Date; b=prGQg0GQY9cAQssillj09U/xLhcX3zpnW+TzwSMVTjH13LtxvPGZggYGvlHmnKQygGh+C/4/RHdiia2YNJxRBTFlSjh54R/SIpFz85YTjMaRwXv0MBse/9sKDX7s4xxvvjv0dbz2cB6ksHSvNc66QFug9RnDl8vaE+K2S4ymn50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsxCbi1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsxCbi1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785E1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708283296;
	bh=COuIOr65pJjBhDq+Qx7QC8l+ou/Y/ugmGfmfhiYu7MI=;
	h=To:Subject:From:Date:From;
	b=XsxCbi1anCu2DeT+JQ30Oz702PaNvJA+mI4mkZ+nkTw/FGj3C0wPEYJvVKPfsLIbt
	 C780pXsCgLSduRKW6zpTa4tX0bWsAOObUOGYDTkwWRGAJnKCxaelihJLiT/H3v+7fs
	 50wOF+Z262x35k6J+wZdB547oTKbEEfSLN8qrl8sVVzcsDtmdY/X5GJ7NVt65iTlHv
	 pt8g3ueyiRxJ8w7MAP/85FG7Xv9ox78XsE+v/7QNze9yfcAFgS5IefXA8QXesh3Vs4
	 tcQK0b79d7vBKzn8Y0P7sC0NlsIhluSQmf4TTEWFQfHdv7E4900kvCQ8zbOT8OFur4
	 PDLLeXT5cgpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3C1C48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170828329638.13543.11595039275447341104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86045ab396df0c67248cfc13d606d7bf7c2b08441f576764231ae269ab5e27c
Date: Sun, 18 Feb 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708283296
