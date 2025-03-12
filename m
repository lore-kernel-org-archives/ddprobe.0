Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1C253355
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741794534; cv=none; b=eNNnC2oX5SGvRknNS+xoFzDkOsZ8Cj2/53vu6e/tDtoo+1VeOLvjOvB+sRPqm1RAxqXu8LMcvZRfrI6FcWthS9zMe+bieX3fvUgfzjeEUOvnXRUCElh2yfsH/sRSabgw0dGsLGo/qWPb0Q2fLKVROpreJxxxgzFti/bfuKZDUgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741794534; c=relaxed/simple;
	bh=tSs0nzIh2cJdgl58zSnezYHyyQhVNRzAYHZxxe34Ta8=;
	h=To:Subject:From:Message-Id:Date; b=nb9RUY9AnUJ+dbj/yjb0Xda2uJpmJoNUz8iO22Rvc0VPdTcKmjbFNDdAxXhmWVziUmUdRu8LlaSFNi737WmdrfO34/Urx3scyrAwYPd83zt5sRsTwD/rldL52Rf42KRqZAsQ/VC6o661gU/sOL5JMWbVDJ+oLwqjZBf9fscxbEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOGeZwT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOGeZwT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5239C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741794533;
	bh=tSs0nzIh2cJdgl58zSnezYHyyQhVNRzAYHZxxe34Ta8=;
	h=To:Subject:From:Date:From;
	b=WOGeZwT+iqHEBA0/yuK8EynVJrQcHU8dgoEmzz8MRmRSCKVk2XFXLUkKZadhm2zwz
	 ZebP/AOcNngReS9Q5QD9xz11rpVRgITpge0Y6p50XhuEGKUo5da02oKNCKaXOwet2M
	 G7CHjz+Fwt4E01X2vCMujK4dC6N8N2LKjvk0/iJs2QeF2a+hZEYM3wi+sUt/z4/zIq
	 c1FKAyi6NP6lg9lYVHdLOygMh/RfPOIX69piJ41Z4uYS+eGmJPc1ECJuhMv/dVGC/w
	 MhPblVWaILQ/flWV4vn2MzOQDSxvRh8zbNob+mYL6MBjWisb6ILWo0Ze8ZyD1fFdIA
	 hQWj7ZRsWhSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93169C28B2F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179453359.22019.5745390230133330670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c595ced4e42a784f51e357bbae5e94ed00c344fea1b770d763da6c5303433e8a
Date: Wed, 12 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741794533
