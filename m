Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152908F48
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710174; cv=none; b=qtrTo39xj4VDmb0jQCvAWr2lgGmUDjvQXZq7R7awXyPOQIQuIr1wNI8ULkcH1DANwmciZLhHKDdH29iRfYEam7z0QiYQ5Qj/CrDcyJNtMVO6UHUNu5YSP3P8heL32SuXrN/zplnvQz1CJuuy74/PKWdyxIl08Cl+x7C4uP7nCB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710174; c=relaxed/simple;
	bh=eLtOZAQ9ETtQzjvrF6PVLsIQGq8EpLykKugnSVms3QM=;
	h=To:Subject:From:Message-Id:Date; b=royK4LGyj8RxzICznsd2mmKtgy1Mvl32t0BoHQIfpvf2gLgxt1n/oIMyRXGPaPvuPOHLVZmQcW1mkexIGWEcnIdiDBZmZQKejMhbnA0dh2UTBi/4i62To+4bKbLZIdbOW2YkiHVeTBzuAuOBQfCFuOjrlqGiNXrZrk3+q67v9Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2GAGMUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2GAGMUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765710173;
	bh=eLtOZAQ9ETtQzjvrF6PVLsIQGq8EpLykKugnSVms3QM=;
	h=To:Subject:From:Date:From;
	b=c2GAGMUNEk4lMsDDcjAe3t/WlndRsbvF8hRec7s+oZMa15KCnNPKPBVrCrmSQbVxE
	 JMyhDLQZkqWyDfbFm2y3CWcL9u87ySseL6nANmbnnh8djm2byk+zTlGB8OvDYqtH5r
	 Qz254F5gJXABU+P1pLgeqA6Vh9DyxsAExTK0C+NI4KIWGSHzgAWTtJEeGlOWtLKXf5
	 2qjq6LEDN92G8jAsZijj/P8M4yhJOxi9phfQpC5kuoFSIwUzZoEzXXgRi15Or/3SSL
	 6x/9GkRGuhmuHvFVD3lfUvUM+fos4a/DGkm5++u+RVNBR/jIYAW6+QULUdTxJrAEX0
	 xUGtGoLQah8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FAD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571017358.6566.1122959084698346319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d7f9614f7c501ee57152be07179b6319f7865655cf0056db4cef08d8d7e3c0
Date: Sun, 14 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765710173
