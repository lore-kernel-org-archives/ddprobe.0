Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDBE2C0275
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762331994; cv=none; b=DEDkmxtXYi7pPbkb7OtPGOu9ZK6PLppw0IY64C5E1edoPEcQ8xRCGbRv0vd+mrp1EDXspurqHes/u0NaoP96tHshI1rNPkEFxFHaZF5mW7Sj8FDs0paQmqYI9fzdqppgTekbsZdXKYgoEZODKTNU2ISjiEORnAMupdRLi7aPWJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762331994; c=relaxed/simple;
	bh=o02JCdu33Fq8o8xxGYcVX/EblHzoQ++jgvp+HGdtyDc=;
	h=To:Subject:From:Message-Id:Date; b=HZPLLDXyiiDOBEWJ55E0S5vv3v+CsceRipF2Gx4nrBj+M8gdqcU3i/eyJf+ysUBBBt5brj+DPTbjbBOpZE8IgS/97MFCe9MK5HEPnj/cOGYtbS6rdlyJ/Ytze9Dn+MgO4qaqZsnmv0hgDTlQoyyz3gQ6nmFO+seqoz43nCqOeTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaMDs0Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaMDs0Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A4C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762331993;
	bh=o02JCdu33Fq8o8xxGYcVX/EblHzoQ++jgvp+HGdtyDc=;
	h=To:Subject:From:Date:From;
	b=KaMDs0Su1l3ALZHBOfd+MUJkuFD9ZMMtdp7df3SipAN3HIy1n1ZT2xyuD9W1/YXRz
	 ue5Ht2yZ4iyTJwKIoTqxj22AXl2Sa7/bBAcVyV+iLrWtDTUJNBp9ZdkJF3MYqjgnmJ
	 bLGWBvwN1m4ddCzlmatehZhxpl+jMx8nCmA6ZcA2MhaiQhOSaxsV2KJA/H1HCNBgGM
	 kp6XxTIUu3jic6gAawrUC5WMm9tIuTKja4nXK2d7MrMWUgeNRSSIpMltSF6vIp/kEP
	 0/+dc4MlnWXkelIAT5skpI7gR0AcQADpJ0KgQFFnVYYL7oko/XOBDgKQ7Lb5z6vtTQ
	 3gCGli5msdDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96095CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233199360.2776.1311871997506593571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcfd79e027b9e7df7e17e910a781dda6bf8c95bf6eb04a0b809efa585f14717
Date: Wed, 05 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762331993
