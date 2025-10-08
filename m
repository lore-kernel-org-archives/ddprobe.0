Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3348F2571DA
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759918794; cv=none; b=WXTklOITCwcTVr27F4hYI/tUtnguzHIWn36lFjLHsuy4Hrm+IWq9hxxXoqvo9W/yEtnbgQyRkYfa5BuEtjxlytPo02QqknPHHLdnjtXrpPFjhbvPG4i5erwHUJpva1Q9culnPTYsVmVz1NdLvjytcK/UAcfokA11XPlAAD1iA5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759918794; c=relaxed/simple;
	bh=73F+EapHtx73efXadxXCGmvE/eScq5DeJUw9jiwmIQk=;
	h=To:Subject:From:Message-Id:Date; b=Ged36KIx/V3UzZyGtZzrUibKiXCzlRFgOABZ9HHXFT1R5mF8EyTIsR5tI+mEaNVC1SH52ReZEC1z3HD7jaIY2KP8BUog8w2tk0hCrMKbxJlz4PvUiJAz37vYgNZrSW9JmAakKUarwwTrEFpt1KXBs8b8FtheLzUU1zqS/4A0ntI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpAGVBqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpAGVBqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA59C4CEFE
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759918793;
	bh=73F+EapHtx73efXadxXCGmvE/eScq5DeJUw9jiwmIQk=;
	h=To:Subject:From:Date:From;
	b=SpAGVBqrSUlrZc/uPCIOxd5dsI4xDWsJ92UJfNqK4ZE8uDuWxM9NzCYU+K5SspiIy
	 ulYncwKhfhgXJ2zDv8LhM3GnWkGAR8OwhdI2cn/90MfQXOZTG83we1mKir8+HHBmUF
	 l/dEiqtVjmvRZr+1Jepr1azx+nultMFMcJZ8lFtkpgycRu1dv+EOncsTpzZBXy+zYi
	 Y2IBZK7DCdxDKJgtsWn5R9W1dyI+kl+1yb3tlHS9CVu2tL9cC+VLfpmK0pdXm9kZ4x
	 g1iPdp6HGidFQxqhpAdkHvHuBm7r+/wU/b6g5qnBaVhcTlFpBoaf/fu2IPksBGQ1Cf
	 H5dI8MAisBg/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB62CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991879357.28115.1462717868018048503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cbfe136483aabc95a903bc2da1874961c95056307c2ddab8bc0c605a58eae4
Date: Wed, 08 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759918793
