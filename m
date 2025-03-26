Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41267175D5D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742975995; cv=none; b=WnamIAKiEvt/SC743WnIQ4EJSncMdtIkccYlV+z/WuTgAXZPlO/s/iHO87xuWFZ5kdGHr56O4x37AcsovE/bHBDH5gb6GE/AIbyITO9+yqkvfCunOxGFv1z5/7rEXeoM0JjJvIvkeMXmS9/p94hP6Zn3KwpcNp4v7HMTA0NTHJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742975995; c=relaxed/simple;
	bh=N0IDc3WSnUdo+AAcY3vO3rZY6eRPnffWdhpnYAzJW8A=;
	h=To:Subject:From:Message-Id:Date; b=X1j4OjyAnR1mxVW0emeeeFNOi6tm+1MPuxn8lu/trc87704UbA/f9VrcETEZPPQ5Uszsc/7wlUF2mXzKTcUv8wMBLyAONSTKXXH/umJlLVJOIzHXkyg2ZDbdXcV5gYj3zloEaDcJq/lR6wbU7eik4m1HqPyddbNfkWFiEmx9TZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFWMuA6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFWMuA6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAACC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742975993;
	bh=N0IDc3WSnUdo+AAcY3vO3rZY6eRPnffWdhpnYAzJW8A=;
	h=To:Subject:From:Date:From;
	b=tFWMuA6PuYk6MkFOERPJJoJ3cfQCzTTxcHkXva6P/O2F+DzFriTrFffqvxl9Rwutj
	 kQDyhUyh+KpZEYCRzxBifSVeTWJuCMmScdfyXzKokJ9+jnNz2qKwXepEi7X6DnP6NM
	 OQOHGNFVC7WnBgLsRjsjAOzwXIPvufic18+3qE7iFYAiml2XdpZDD7z/Xxm5pVo9yF
	 gXXZA3x5giLJ0RO97lF4QjSedw1SHvNq90w1KWJkR2ArTeDLaBbEvQ34pKaue5SyLm
	 N3nBln8uJPUrW+Pv50583Z7I1v16FgxKCecOv326GSGrMU5t5lp8coBctoK3fI8Y35
	 WBmKWIXqhDU4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5C2C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297599363.2291.12934749703541025902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce4613a52c595b4fc17a402a421af922c54c466ec615e4005cc5d0583b3d741
Date: Wed, 26 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742975993
