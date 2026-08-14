Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ED2342CBA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786686634; cv=none; b=e9volNpc9soHYfZpvF9YH03QnZLEyaFgx/PElb5Kn/UlFudPte+eYbBE8hMy255MyXO7KSQS1StZ7tl4yUrQKzIlRE39qG8Sgf1vkSEr3Sr6oGHYdarJiOxn//SkacvxWFzIxVebe76YnarRTTsolYOy3tEx4xkbt/SS5tnQqfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786686634; c=relaxed/simple;
	bh=gNHDaXMsk2BPaxj5mE2kwspBaWoz82M2JZrM/9PvVlM=;
	h=To:Subject:From:Message-Id:Date; b=XFY93luzr01gxXytx6w3eZH3k6L5J72coGz53DoOiMgBOHZt49VSpIqo0HdJCMYPqV3+QhjBs/wJYnzndh8S061RSq84BPN0iWBqA72/CoWHEsQls7B2rg1J3ko3MK3d0G8KICxMqd2CNYLp8btZFMj7snlb35UepV32tf8gwGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbiyLJNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbiyLJNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D371AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786686633;
	bh=gNHDaXMsk2BPaxj5mE2kwspBaWoz82M2JZrM/9PvVlM=;
	h=To:Subject:From:Date:From;
	b=TbiyLJNidPvgzHtBLdk8vriYg4QpQSJjMUO/DLWwaSzknuYzG6xTntX8C2ChyAEOo
	 Z6iXocOv1mWfzbumil511maUor5bUr/fak8eF8s/G7wQ4MIMJC75Ls8ko1BQAytYWe
	 RilyKTMwQ4G3SGr4ZVrbb8m4sV+hm9LM9Kz2/IXfPmW4sKV50CPQwRys6iluFr+1xI
	 oIJ+6/pzEL4B/kP2wYqh1su0b6kxoJaINZ8G2MjntKP51zd1ilPDVkUeAswB4m+iYK
	 /qLu5Lbm136w3tPKJPiPtEU6Ujp9d7kXFr42is8K1C8vRyuDrPvHpcVtwkwGFQPHpW
	 WPqLyV1oBB/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD847C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668663368.22747.6528671701546914137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00f0fbfd5700ee5836d72b25950b8c242767efd4f7558b36710b947fb4f439b
Date: Fri, 14 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786686633
