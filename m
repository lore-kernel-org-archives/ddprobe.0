Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9F3064AE
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779001234; cv=none; b=bZ5BOcWU3w7StCZ3xOe63pQo6nnQENYuxdiwME3bZbdqhX1R7bKqztQjdPysQ13RhzhjYREZFLh02caU9lwq7G55FdZ5cOKqEJtDD543uHnuuAwST1JW3Emkx80jlXgUWivvOFWxD+kKUEZftTgFw6fDNBujQXGCn1DsPvhF044=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779001234; c=relaxed/simple;
	bh=80iCFbVLq0I4YHoySLw2Sw8AjH1eENnFzt5l7iBFbZQ=;
	h=To:Subject:From:Message-Id:Date; b=F6x3vq8AfEWBeA3Kz7mKn9BoD4gYEAtU2akECBfhHYlJ4w1GsPRfL9+160l8dadN+cKqkF3SL5skJ4/tV+6ivTAVhSKYGul0+JrmMefjbO2RkjAfHBehJPED5afCjpciPbEjYwD0W15fBUzOiOjbjg0tcA0d3pACSbk05UOYoEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asz2iUsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asz2iUsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB562C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779001233;
	bh=80iCFbVLq0I4YHoySLw2Sw8AjH1eENnFzt5l7iBFbZQ=;
	h=To:Subject:From:Date:From;
	b=asz2iUskYtg2fr0/R9VU9WFbqr13PqSUq/M7naFkVqo5frEO69aJRqV9ftAoQRUOB
	 CSvu4XjuZQ/CficUQvMwqZ/36ubwRlPRWXlVAtIA7NwWiw4MIi46ydLbNrMlHFs5dQ
	 2pZNyDgqA87l90b1JmOZ5V7GMu8Nf/WBJ7O0xAOW6+Mrlyd20Q2OiDiCYkfR8zdeSE
	 Agp1QPPaTdGbFN3nvStwaVwVE1AeR18fDKTP7SI89TEHrEIH+6Q/xuuLHctlbF/8CH
	 a4WI7ahV7v3MxgpcNN/VEJkMJs481YbpK1Vybt2JZZ5hYeAQSTScF6RT2+YYhpVJ9z
	 5/1CZU+grZVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC41CD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900123369.17215.6121990097763167002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778826170aace4600942c265745b4adb8ca25cb62fd0cbc107c2b4990d62a957
Date: Sun, 17 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779001233
