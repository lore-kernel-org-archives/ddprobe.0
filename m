Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400915650ED
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788964234; cv=none; b=Fk7EXyLIkRb3JDCAKLMYmxsAjuvEAP/2G7W1BUF/N1dN1DyLgc4YJO11/+zzosPNkWaeBEPQCRc6hzsto1DJiZkddSwj8XxH/y0P6YBBSxFsTJbwRj6hDJxrL2ll1hKtaAer742cxBg4y7Nh296h/L5vPCVsPPWgAsC16eb1odI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788964234; c=relaxed/simple;
	bh=AqZsCcrYiR7Hj4WmuMDhN3FrWV/RDSo63MIjeNktbc0=;
	h=To:Subject:From:Message-Id:Date; b=CU+cQ6eNVn2Tz4QR6efB/ZVapMQs2ODv+2JmaC8pKwqAg13m/vb+reWd5y+nHBoEtsBpy185/qWe/oyPWHI8SSmmH2RlKk+XnP08LixfNNOanJyjrzURciG+KnCL+0qswLkB1qLkE+OnrLKE+cUmrTzmSDD31cwMZsPayR1i6/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxZSj58h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxZSj58h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D513AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788964233;
	bh=AqZsCcrYiR7Hj4WmuMDhN3FrWV/RDSo63MIjeNktbc0=;
	h=To:Subject:From:Date:From;
	b=oxZSj58hYtp8bQnKH9SQiaJNqKYXOKlQ0M7PN5wpLpar0UnHKl3QaNYUxi/Dnlsvn
	 vrbU8OwApNfeNBkTqh1gDpNz/u7yLEoJ7GLWKa0G/mSMkYyA/dwjX2IQp6LPtqrD1B
	 v9dDc5Q3QjTi5WWlPStqnRJhskVVb3EnGI3xM+Pi10upqz85awx38MNgULusHSHRoD
	 cBS5wtOU4Oz03Gu5ReKcMYVtsMB1Uok8MwnlLZKk030ZdzUy4NggSfrdo2Lp3bkAfr
	 vGigK9ulqWBJysqfDmfdjlHKRTPRg/lkS6Al7cM+rFJwJrAohOG/7CsQCRdlnRoxYr
	 HOGOr7V/Nlx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF74C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896423370.15040.8177448285437252144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81dfe7c03d7ec6355f1d0c7dd35fe31d38288053fdd4d479a406a5489d51300
Date: Wed, 09 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788964233
