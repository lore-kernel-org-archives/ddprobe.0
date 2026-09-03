Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F27C9463
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788396634; cv=none; b=DIuqnoSurOlh5cHAIeZfD8Q/8s1ezost3UIsu8OLQ1Mhi7evvkqh7Qk1uPcJXWB9rRcDOq7gevvhp9PFSeOwwk7BPJ01pZerjiCg3gMl+5aC5Ud6nR/eStDBSwU/cFlEkJVpzfX1ASVSlDlknkmcRWhafuvMgJ/APfTknxZLl68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788396634; c=relaxed/simple;
	bh=V7xpx2orjzSREImgzpynS9lGtY2UGiH0u0QD5d0DmI4=;
	h=To:Subject:From:Message-Id:Date; b=eYAua4HucE7nf0Hi3x40QB+lZtTylVaGXU/ORnDkshGKwGL6us3/7IJNZIHPGSdqIv1la4dI1Px9m45JIpJ/d0skckdclEyATw7sPeHTJGXzRLk4AikXvwq7xdTrwhL0ZmoRcE1/iCbigZWZOhaSTLB/tiobbq6ZaUJ4oVpD6bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX6Zw/lP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX6Zw/lP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EE3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788396633;
	bh=V7xpx2orjzSREImgzpynS9lGtY2UGiH0u0QD5d0DmI4=;
	h=To:Subject:From:Date:From;
	b=WX6Zw/lPjyRP5FTYHjhJgMT2ufNFUibxLZuRGMSKeT9etTdt2tnBPI30r4iC8GD3f
	 hpqrwaqmhKpY6FCpsD+H54aaRtzAhtbDfB1RfTkRyhuvLSXJ0hgB06jNcam/VvPyRj
	 Ww702ZNCWdjqQAdCQxAiBTzMs1hA+CP4oggavvcs6hRNQ/ubPGkPDnF0mqb9Ux/FBS
	 dosw5jEFwnFaBnwDqrjIpzOeAwnrI/gpe7nONnCHfT8/zfVc/LAyJRl74InQ3sYRQO
	 WdhreNGM3Mh1Uql9Kj8U172Z7id59mJrneKvfaBoCttMiegdy6WJVixDFhjlnZWbpi
	 Vpv+yqcypurZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E8CC61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839663368.1511.7149911302444249478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6a5f007823fb369051caf3993373021fa814addf7b6af7df6e6e4018143ba1
Date: Thu, 03 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788396633
