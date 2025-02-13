Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B84A11
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739405335; cv=none; b=BA+mZo9/XfZAKQTIzyTT9sxbMSs2fHneGDTov8hTFxqvWzp6yDeDRRUZ4kr3S9Mf38A920xaMxt8gLfubpoiVlAhlCcxd2PomEiVRB1yCVVobcpXOP7obiJxM/LMPgHkenKHKfXYf8foxvEmBbUtKx7QN/jLk7WazXhuhxb8n68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739405335; c=relaxed/simple;
	bh=42aI2Wc7OQAZOh27MJwDGybLtSDtAybrlj+/xwLfLDc=;
	h=To:Subject:From:Message-Id:Date; b=RLVIsmrp9v6gIEKe8WiuhAYtLZ9xZ1zxfEtvrrko2hOptgGn33agzKaPKpIRyWWgUhKuaVmobH1R10vqm9ZLDSq/pd8Ypv9krXIKdS+CONd2EPSusYlQhi20hkWtTbMjVnujWCn4bqEB9z+XLcpROKEMmrCbEI4iMrz4UX9DEbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzdXp9/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzdXp9/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7C4C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739405334;
	bh=42aI2Wc7OQAZOh27MJwDGybLtSDtAybrlj+/xwLfLDc=;
	h=To:Subject:From:Date:From;
	b=rzdXp9/gE+/T6g/LuJwfAoBX7/J7pctrBTQ65EG3ReYwAPHAWTWUxzXd7zB+G3B00
	 0z/MayNun0mSxm76L0Nkn5vkz+llTzMMgcVCVqWABZpIIF0ImqN5aa6HPlTcRHDOBY
	 60njHggm9pdRqlBWFWDbg7mkyCq2Q2loReO3wdUjg6K18Mx/gmlJOXB9z4bQSmfVPw
	 c2kbkOCdhnFfNlR4VZNO/DKFMiZijWYbHnvWxj17CCmIHPY2GRO5GR62sXoAPhdR0L
	 5N/2+DI21pvr533smkN5Em+6J2K3y7z44iGJWLpTL0tjvPb22zVK2oLk569hedsvAd
	 75YswoRrXVKVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D37AC02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940533363.27358.13900576790065399176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21919abe85fe6926d30273eb98cfb4c15b65e0ba25aef16fbb2cbd1aab923f97
Date: Thu, 13 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739405333
