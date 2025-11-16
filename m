Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271CB29CE1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763331714; cv=none; b=f7niDwzXsY3eDRzaBKvQ6l3aX4W5ZCpbPIYXRrImreFqyN3u7thfTZRaOrffrgEiEp3IV0eyeLl4nvoAN31Ut28+9LtSGNC+PC97Hoo9hYlL9XYU/CHKisio0IlKiKmBeVqy6/+iUrWE+BJC1k0BcIwlDptsZVwChxbSyj+Y8bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763331714; c=relaxed/simple;
	bh=ideelpjNAQsfKfbqBWi3zL2rL2BHVHGZcvvYkWKfWic=;
	h=To:Subject:From:Message-Id:Date; b=t8F+ac4p0lVNM8Mx97aj8NOMLfWs+dDireWfdOKCFTapR3KbB+P6ZsfXEoT8Pnfy67CbfCk2+YCi0M93BM5oaPDRz/7rEb9et+LBYddWWdraScDQtekGrfrvRAv082u/LPEOaTjFuxRgqNuncDELdgIIpcSHKOkPedmJQfcuglk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL6fo7h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL6fo7h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FBC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763331713;
	bh=ideelpjNAQsfKfbqBWi3zL2rL2BHVHGZcvvYkWKfWic=;
	h=To:Subject:From:Date:From;
	b=jL6fo7h5897vJpraMCBj3u5EGurOclosGZZ8ePmiuotTCQ/caHfcdInEE/gVqow25
	 CNod0OtV6u3mSF7VWAr9vrrnTmxbG11NGInHBe2DOrIdT7DxGu+PeG/VdiY0PMMmcC
	 hkv1tV9HMnH6SVZqSNLRODsP6kLwDG7TpyxsAHSk942kq3E55ifNDwybQ+6OWGVKvl
	 Aal7sQklmrvrnAe0thI5ClxJaFFdTNy1e2SIDhFaNw48Q5ZBf6ZSWsKBgMIdeEQKdX
	 LhGRJYD3jClerqFFoOYBHzgzP/Gp8Kwt0N7efHxvoWe4iSzeRR9i1QoNEcymRElQ5y
	 tMo8m3O08xJGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A3CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333171358.31417.2282685089671220939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a04105a71b19b738d8c8ca07dc8b78190fa4892a255d5e64dad86b842c1f3b
Date: Sun, 16 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763331713
