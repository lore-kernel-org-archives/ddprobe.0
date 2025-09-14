Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081023D7C8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757844594; cv=none; b=bhd8VyfxALpmqcTnZa39gMyUl6JhHEBYTOpQRWXsZ8WXc2FTICgHqK1MoAGGJQotA+qM8L0eZex0RWfN0NRIkneo+lQT2JZNZvbubIGhj+LJ/gxtKY7sD2Bv4O2ySomnzTFAkOi63IsAvkUDFD94L3uGvyHIwrZSU+zc1ok7hUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757844594; c=relaxed/simple;
	bh=4z27Zns1IsvjCJiRv5fo61l+1l31UQxnDLyO8uNVla8=;
	h=To:Subject:From:Message-Id:Date; b=QkTamdw6OzvZbnv0e2VvC8Np8Crvn1/h5RUELuiFsZJSCVaQMAFWR5A72PN2LrYK+dwjmEHhRGOibSeczOYXe5ihv3Lusm3pox27S2xXAFk+jWi0rcFgdRAjThwXLYsedb28IGFhdMNGb0CrDY/GwXugZWN+JgEBDKzml7GBsHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk8aWfM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk8aWfM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB48C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757844593;
	bh=4z27Zns1IsvjCJiRv5fo61l+1l31UQxnDLyO8uNVla8=;
	h=To:Subject:From:Date:From;
	b=Zk8aWfM5aAJfKnYZtRbrUZV4Ga6C7CoOq/tFDSs+U9Y9kdtuZNnT1ltTFt0lu4lel
	 8S16IEw+lwNnZur2gE5cu8sRn+3hwx73rEKTXOlKnP+3iufjS/4EEhUfBn7WVcV4VA
	 EV64zYfk37yp4jYWJUuYcH54wAJUju1nyTKla6U+QzTT5qFBOFWjccC1ZgWj5sYeNe
	 gHBZRqt9u17ku93iaWxGMhtpBKF2fXW7p7JJm3xW623uTKEmW8cssC5hoRvdDDDXba
	 ov65RdhmEnx9cr4Kvty/DJbBFV+yCL1brGQw91SI9JAMg2j4HoW3GyG4aG4P9E0l9z
	 4hRv+Xsn2/X1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ABCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784459358.14515.1529918666506953902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db5d10c675f081a33e08338925c6cd129694b8d0c6c82ceafa82b27f0bdce7f
Date: Sun, 14 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757844593
