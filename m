Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA402746D
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732162554; cv=none; b=iO7fEu54xIMAd8FtgPCbfWLKWjebFfRZTwpuRzpmi1HTsU3zBg9psTor6K4e8LPxbf0ODMCPh1r8pmkSkZ2l2L/cAiSlTXxMiZjxtC+/Muz6J/X+RPXrYiUEtUKNkwuqLkUSJk4gOgrTMCkFldJzfRqTH2lZU4kL5dFeeAuMZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732162554; c=relaxed/simple;
	bh=+UaaPwJnAqSkPYLCFMyLfze4YOOGV4cXrN1CbmX++Iw=;
	h=To:Subject:From:Message-Id:Date; b=jBshbveH/7oHzoerDgIZHRQzVekQFvk14kDgsis4rSVWNhmaFOlnuJdsfDQn6aV6JkLNb+8OgXFHrgegcvmQdRH8SqGuYXzzsl++HkfcsC4qY4WmJl95KSyYfcXZS4TrKjDVyBTQvKvVInekhp02fQSDESfMhBW+3YhcA4oPoj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4+3xFsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4+3xFsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1173C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732162553;
	bh=+UaaPwJnAqSkPYLCFMyLfze4YOOGV4cXrN1CbmX++Iw=;
	h=To:Subject:From:Date:From;
	b=l4+3xFsukukp/cTlh2ZmL/MlVltVyB7i86PB1cwfvZD7RoH0mH65/W6Sp5M3qiHqk
	 Qey0G656WYYYXiDp198Z1Dk/So/IH5w5jYf3pvFaVWlL5TL11TDQuY2F5kHJxM+oRP
	 yBloQoTYQY9krtpi+ihZcYMKPT91FMR7I5jOIE9rGVTuSqzCaRKqniT4yr9C9XMiWD
	 ptBnNiSWqtf89tdIREfrj2p0/mJ4pZezX7KNFBGrUH1k55vFCf/65vx4/vcNIrEDdt
	 wNuhF7V3cLs73NtnLMwo6aENhVUBGIooW+Anl9axTOaTwe5g5ExUONWHi3gcXIgGKe
	 YY5CVxehkbiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB78D75BB0
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216255364.10306.16293564708193486591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b114ae9a5c3d1141e72ba6f341067648fd3580def4b41da5154d9535aa35ee7
Date: Thu, 21 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732162553
