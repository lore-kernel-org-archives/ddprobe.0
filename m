Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AF33EBF3A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769249034; cv=none; b=OeO9sje0U/tOT0a7F+3SGUa+9xMc50zwGD/SmLvbtCeGyAER+KI1RUgp6do3jXuoXPbFar2zY9wfD7j7TgrzU/T/PHo695mtDWSixFcBorqIe+ixokkVhDatw38lGyg89AYHn6uHJz891UxWhsTdy+HXxTxvz18q1TTf35OGZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769249034; c=relaxed/simple;
	bh=zMAAkNZFo19u3klryTGSTNo3LwD101p5FCQ8fS2ptOo=;
	h=To:Subject:From:Message-Id:Date; b=P0wxY4SSPaMliVu4dN0vq0PrIvzPEqw/iutF67MN4o380YpMgpz+0WIckj8xppG8kg+mXAoPgmZFs8px114+q0HQbg8RKle/0fRqiWAlovxDYK0DDsTRsejPjS57xwxFATwNOIhltz5+zLpLGBDTix6fJMlHhvrRH839Z96ySOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkplFKBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkplFKBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB44FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769249033;
	bh=zMAAkNZFo19u3klryTGSTNo3LwD101p5FCQ8fS2ptOo=;
	h=To:Subject:From:Date:From;
	b=WkplFKBC/BisCYBoFSi+qMzF6U2vtuWw+PNaGGG6FhngZ0znCDS+YKxmpOHBy1Z+O
	 +ngYB31hP0HIHFOit9Q9wTD679uUDZ4KcKZ3GJEd52VsQB7ThLefTS83ZcPr0QL2iG
	 3Co3y1yqT9LxnnApmn6etUPedHwF1x5m2I3WrHY+vhoQ16oO7aulVhZ4islPAasF58
	 qcyEZEkNEaVgQ1TRkA0q5nbpccf9+JOpwdFeBsKosf+/m/Hsv6j8FVEAlXSkuWdjpX
	 TiejLvxo9lCuv6nRfg/vCX6e4rWxSO+gpOOmaqn4INXPb9+aBWlP2PG8NAJxfgB2VB
	 sbBuF8KDKzFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A9D715DB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924903361.5298.8128254632404018920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a9d6a9b562ea136898884016d23e621000e84ba2d9698fec78dd1841aeae25
Date: Sat, 24 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769249033
