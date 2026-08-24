Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479F835A3A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787552434; cv=none; b=CBr7bjmU4sLX+NaQGOAs9BopWtSZ0mXeNGCRSdbp2cPx03rM3vov8b+PZWYOaSHTZrzW5esMiTARbaQao6k1+MBCpF1EA+AKIH6BjWZ+U9EBW89YcfwepaV1RL2wOs5iU6EuhCEBeCIkaTxLOnK6rsa/bCRx4dsvW3s8Brq9v2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787552434; c=relaxed/simple;
	bh=3tbi/Nkl/GKCKAq1/gWlZ6GPhAcKbg3HLzNgDHFgOgo=;
	h=To:Subject:From:Message-Id:Date; b=ZuQyjc+pnx94uWde+Jl9xdFNf03KodzO12ZGjHTZcZwMAGPxtVEaHaQddyixIVU5DNpA0mjNsTdG5zouP08Yum0OF9q2niBy1kmM9BanhLYdx+5m1Zt2tU+EucYr0SR/ibawM0OxMe6sc4ZYvA4vlkKkuj2npzIQJIvYThGa2kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAuft5/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAuft5/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A5AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787552433;
	bh=3tbi/Nkl/GKCKAq1/gWlZ6GPhAcKbg3HLzNgDHFgOgo=;
	h=To:Subject:From:Date:From;
	b=pAuft5/HMA2acaolEpBUvdVuKjrrwKygesos9ArEF9fuxVVTfp1NKF7je14/D+3Q6
	 iIZu/a+aZoSaAws5TLr1W4Crr9b0vmT2XXLQ+Aq/q3XTFxW55RgW7exMdVZHNcg//6
	 s6dKPKm2wdeuqrQUNlzOTisiy9sZcUdGsfGcnWIas83SzZY04ydse2Af7o465qPuqj
	 jHsVOk3sZKsp+T4ygp/niKtuT7iJ7gJRuzjLm9L897SnsmClJeHQtP4lRkL2BfQghk
	 MKd3y9LsqaazhjP2wO5/IBEY+CH0eboAGep/vHPS7A4ngOeTve3XD88NAeL/HTiURF
	 aqlJsrp4RS+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C5BC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755243369.12267.13165668417716601119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea5e3470f651380ac1114175d8f2bd73f6828f67adf0e633fafa15de178c94c
Date: Mon, 24 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787552433
