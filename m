Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F01644160D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790155834; cv=none; b=Sy81ow6d2M9D4xmCGzKzcwRLgtJtIH2OWjwHTuAVrPlX2OX4/5gZeUb4HMWW7be/BONd05xY/Ik05Fmrn/wtGpb/+LhX9zkqPczXyWZlWVewP+V3rRUdGOdjOiTqD+2d61EjpBMFGt6fN/hnlBpGSI06mPSBxsADtqMGhhodalo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790155834; c=relaxed/simple;
	bh=ot80tLqVKg5ntzovngp2P+6h5lhMmR4tkZzR8Leupcg=;
	h=To:Subject:From:Message-Id:Date; b=cQmd2lYRR/uswz52J2zCIqsfVfn49evwbppQGPMQo4S9LtYTqxWC5tG3QZrxpHt8y9Df3DpYd+oEaKGH+FkGJQ9PqRfpz4KTH/vToVGi3CoeWWXZiy3RFp4NrzCE17i1gvb9PufZHy/LnB94CbIjNXg7hgcrupsAI91lt1qpkfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+kXPC+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+kXPC+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD20C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790155834;
	bh=ot80tLqVKg5ntzovngp2P+6h5lhMmR4tkZzR8Leupcg=;
	h=To:Subject:From:Date:From;
	b=E+kXPC+bBd1SolyM5zl3iur0pLSac6+q6f60nZ0S42AXlFSvaDwoShBp820Pqw2kX
	 StKdebYKdkVe2cAYs6dyWv7vakAq+5NG8HgR3NYRb3BHk+OcYu8X1+FZ268pGvD5gR
	 qDhgPU1j+3UTOjMi5qDoBfR+TWowEOChNW/u3iCrYs4VZ6BgoolEBnufHp5BQuK7jg
	 l1rc03Qg1lkzWGV3/4O1KG+aHH7l4qAumDy/BIM5GcVM0g98LFTuurBflK94qMs1Sq
	 oYg68TP5RRQKDBjErli0tFBDVKylR0Gq9kWe70zY0kcSbEiaRzG2VFzeTQTOXhpMsb
	 W51ezCKAvWMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AB4C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015583372.17194.5202346611169362543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e7bbfa19b6f77780a856823ef00ff44c96f44958c6a5559c4fe34ca315d116
Date: Wed, 23 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790155833
