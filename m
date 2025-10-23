Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACB9306B39
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761211194; cv=none; b=JKsLj9svY/QXa0zMzeswoiuAAQ/xK7hTPsekOVCKjs4LUixQ8RuvYWFDe2JxAUGP48+wXz0gISf8uZZhtzHGtb5vftlhZCPBBuktp1VENJryaeD9V5JR4/hSJWPYd0dFM8PLYl88wqHKUxGToc0fjxvV6b3XcJa54j+SAvlNjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761211194; c=relaxed/simple;
	bh=qgLyp3QOzCoEwXOmfDQ6xx+3yb3WOKuFU49Zo6OFNJM=;
	h=To:Subject:From:Message-Id:Date; b=NQaxOxnkmCDOF2bQCps1VsF75Fm/TaaqJDs1EFsT2OETLyVKmn0yCMpLfHn2pVfwcTFZ4ZbQgKFKrjGwWq8+w/xF1MS9Wi+ugDeBF5gvu+AQS/Z+2UmTykpytQQo8IjXKk/oxxIdN6G8LFEmLHeUuf7QQpglTpK34TeSpKBse2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8yAns1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8yAns1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B28C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761211193;
	bh=qgLyp3QOzCoEwXOmfDQ6xx+3yb3WOKuFU49Zo6OFNJM=;
	h=To:Subject:From:Date:From;
	b=s8yAns1PCaKJGXy5RD6rmGI9Mm6FoKn3qDr2V47NRlXT3QoKf5kSuf8qLIyoJZkpn
	 m5miZEhJEp6ZjnG6H8X6HaFKTrbtgE83u42yKNR0dlSPqZSFNdVjpkQxjVUcrhPTc+
	 KupJm7Q64PtTQp8LHFEbYXGMGTwh8TvkeyMCjcx3K+9gvtehfJ/pmHzmutAlesRuIt
	 NE/f/xdssUO0ntzUwSWrN1RtF+uYj0+3me97MBHyClxA89XpVnTEeR5hnpm7L49Lvq
	 F7+V72cARnTxGdaAUVJms55jDTvajqE6tnN4aHKTJWNs78cfyfBk3Zn1F8zQDWO7ko
	 V4OL+q4MKjZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F5CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121119359.26542.12194062421818727840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3f78bd155a3667c69a1524ae310bace89e7d7cba7358bce014fd01f4f5b9b1
Date: Thu, 23 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761211193
