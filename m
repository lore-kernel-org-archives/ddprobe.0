Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEC8154BE2
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759982994; cv=none; b=KxY/6tv/kQtWK13COhtEoBZ7aXAlZQh1JxdUGLMJ/7Twr0Ro613n8LbdoapInYyOwzUsykRMNlD65W/+BX2l9IrP9bzrtymtyZkdsGPS1vtU8KKcefStZaVma6ePQ9QoFQTK7vY/R6LehOYZ5WhSKM21OFh6XNfo+j5FZ7xX2Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759982994; c=relaxed/simple;
	bh=ypi6z19xL+3mv4aTle5/TVFWelK9ZRiyGJ/YvT6tGqo=;
	h=To:Subject:From:Message-Id:Date; b=TC0t9QIO7nC7c2PqB9lDX9j8H+Y2w1GPSCXSdQrFlsHu+MxpfnQmCH5ZMh5CPuYOxCg3A5DOZQe0NlwptIJlWF7fKC3wquwTBRC9SJBEnnmPlZZjJK6gTthYdhz3jv2jFnQ6H3E48952SxdaUrYfHM33s0i+aFGSz+aHZScchcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggrKnmDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggrKnmDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B9DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759982993;
	bh=ypi6z19xL+3mv4aTle5/TVFWelK9ZRiyGJ/YvT6tGqo=;
	h=To:Subject:From:Date:From;
	b=ggrKnmDolmvcPcb3p2zrzSflEMlPpGZWxLpONq766+PwNsK83XI9tNfHtvejgGtFS
	 Pq+fRc+FqXCDK9Yk52oXpZk/f0vKFUSg+JPbLQ1puq1nSs+eOwyFe95idFCGb0KHQo
	 zNLDp8Xr8NvhnGLzchRM9sKJRglUCe9vhliAUyZ+k6nsJ6+jYkyvdTaL/gGGr6FtWs
	 hzb54Ke8VR+TM3+AnTEdnsM/BPCi6keofylLzjrcBezir5Oou8L30t4GwZHJuDt891
	 tVozjm2OVTOYtR0vrhUmjOeYhKSJ57LVe30A/tEfPzFdaRmRlK7xboOI9/GAQqJrpV
	 1+HpPsbZ4WoGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94372CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998299357.28210.2495057199309171010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f75b0db6a22c88329630007cf50c36d1bad8cfcd09e55798e8b833635e43508
Date: Thu, 09 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759982993
