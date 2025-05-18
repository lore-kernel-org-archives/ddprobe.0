Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E25126BFA
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747600794; cv=none; b=kb2B5BkwDLk1vsk/KzGMVMCnkbdJHK/yoz9RMi3sND56kfkr5JNBSG6l6BYmHnJP5PCsZdg7lkypY5qWg94rsFOhtAROrfmjEtNL10/jj8be3ukdhypSAeDDmUofwflgQRmm88E24TIt5UDsUAzeKb/rXk8vduWU2p21V7ENmAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747600794; c=relaxed/simple;
	bh=Ch05qsd8Vq8Bw3ITFCnEOe2wrdnZTwouMQKHgh9tIRA=;
	h=To:Subject:From:Message-Id:Date; b=L8l2TM8JlAap7uEg/NMUDziSgBg88elQB9G+4mtdOQlHRVcxXI+Atev70+K4amFxL6A0fnwg0HGxXc5qRTaMpixNtKVFwPq+tMgzmDwaidI/Bd0YMxiw2M8yrmqTf81v9p70SBZr+HlUxoLowCGajFm4o2ZA0GDgAadXmJro0mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKIdaJDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKIdaJDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747600793;
	bh=Ch05qsd8Vq8Bw3ITFCnEOe2wrdnZTwouMQKHgh9tIRA=;
	h=To:Subject:From:Date:From;
	b=pKIdaJDR6EB+6NTTLCavfNZX5wBM8PNLw+nHpTaivaNyASHSNhYw7epUgse8xbGDJ
	 YYJCfZ5iH+U9cpfcmQroE31xlQuf7D9GiHq2vBLnSIOyd7/DD+1Ii4sO7i5v6AbQlO
	 afN40Rc39RubxtLcUyONPk60vkgNGb3yl9FBTmBztudk2MWhkSWi5AfUPD5madboxe
	 /ol6Jgyczzc0rBBn/AXIyRfdSnlNFaMMex+tZG/ItEiw4F/DMQDKu7VxuoLHWSL+I1
	 h5GDDzKy2vnDmQKN+FJoVvoG4oBcfjNst/8V/TxhVXsgoXqSmyLL7PntG02VpydcAl
	 VbnWmdojQkFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E02EC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760079357.24011.720795437516037361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b651d8b672fa8d10a6b5568c600b6fd343092049e2dbccd9f1f581b707d45df
Date: Sun, 18 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747600793
